<?php
defined('BASEPATH') or exit('No direct script access allowed');


use Dompdf\Dompdf;

class Penilaian extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('logged_in') !== TRUE) {
            redirect('login');
        }
        $this->load->model('alternatif_model');
        $this->load->model('kriteria_model');
        $this->load->model('subkriteria_model');
        $this->load->model('hasil_model');
    }

    public function index()
    {
        $query_alt = $this->alternatif_model->get_all();
        $data['query_alt'] = $query_alt->result();
        $query = $this->kriteria_model->get_all();
        $data['query_kriteria'] = $query->result();
        $opt_alternatif = $this->alternatif_model->get_all_opt_alternatif()->result();

        $jml_data = count($data['query_alt']) * count($data['query_kriteria']);
        if ($jml_data == count($opt_alternatif)) {
            if ($query_alt->num_rows() > 0) {
                foreach ($data['query_alt'] as $row_alt) {
                    foreach ($data['query_kriteria'] as $row) {
                        $data['sub'][$row_alt->id_alternatif][$row->id_kriteria] = '';
                        $data['bobot'][$row_alt->id_alternatif][$row->id_kriteria] = '';
                        $res = $this->alternatif_model->get_selected_opt($row_alt->id_alternatif, $row->id_kriteria);
                        if ($res->num_rows() > 0) {
                            $res_array = $res->row_array();
                            $res2 = $this->subkriteria_model->get_by_id($res_array['id_subkriteria'])->row_array();
                            $data['sub'][$row_alt->id_alternatif][$row->id_kriteria] = $res2['nama_subkriteria'];
                            $data['bobot'][$row_alt->id_alternatif][$row->id_kriteria] = $res2['bobot'];
                        }
                    }
                }

                // hasil perhitungan metode SAW
                $hasil = $this->saw();
                $data['hasil'] = $hasil['saw'];
                $data['rumus'] = $hasil['rumus'];
            }
        } else {
            $data['message'] = 'Data alternatif belum lengkap';
        }
        $this->load->view('penilaian', $data);
    }

    public function saw()
    {
        $var_rumus = ''; // variabel untuk menampilkan rumus perhitungan

        $query_alt = $this->alternatif_model->get_all();
        $query_kriteria = $this->kriteria_model->get_all();

        // mencari nilai matriks keputusan X
        foreach ($query_alt->result() as $row_alt) {
            foreach ($query_kriteria->result() as $row) {
                $arr_X[$row_alt->id_alternatif][$row->id_kriteria] = '';
                $res = $this->alternatif_model->get_selected_opt($row_alt->id_alternatif, $row->id_kriteria);
                if ($res->num_rows() > 0) {
                    $res_array = $res->row_array();
                    $res2 = $this->subkriteria_model->get_by_id($res_array['id_subkriteria'])->row_array();
                    $arr_X[$row_alt->id_alternatif][$row->id_kriteria] = $res2['bobot'];
                }
            }
        }

        // mencari nilai matriks R
        $var_rumus .= '<h3 class="page-header">Normalisasi Matriks</h3>';
        $i = 0;
        foreach ($query_kriteria->result() as $row_k) {
            $var_rumus .= '<h4>Kriteria ' . $row_k->kode_kriteria . '</h4>';
            $j = 0;
            foreach ($query_alt->result() as $row) {
                $show_j = $j + 1; // untuk kebutuhan menampilkan rumus perhitungan
                $show_i = $i + 1; // untuk kebutuhan menampilkan rumus perhitungan
                $show_array = implode("; ", array_column($arr_X, $row_k->id_kriteria)); // untuk kebutuhan menampilkan rumus perhitungan
                if ($row_k->tipe == 'cost') {
                    $min = min(array_column($arr_X, $row_k->id_kriteria));
                    $arr_R[$row->id_alternatif][$row_k->id_kriteria] = $min / $arr_X[$row->id_alternatif][$row_k->id_kriteria];
                    // untuk kebutuhan menampilkan rumus perhitungan
                    $var_rumus .= "<b>r</b><sub>" . $show_j . "" . $show_i . "</sub> = ";
                    $var_rumus .= "min{" . $show_array . "} / " . $arr_X[$row->id_alternatif][$row_k->id_kriteria] . " = ";
                    $var_rumus .= $min . " / " . $arr_X[$row->id_alternatif][$row_k->id_kriteria] . " = " . round($arr_R[$row->id_alternatif][$row_k->id_kriteria], 2);
                } elseif ($row_k->tipe == 'benefit') {
                    $max = max(array_column($arr_X, $row_k->id_kriteria));
                    $arr_R[$row->id_alternatif][$row_k->id_kriteria] = $arr_X[$row->id_alternatif][$row_k->id_kriteria] / $max;
                    // untuk kebutuhan menampilkan rumus perhitungan
                    $var_rumus .= "r<sub>" . $show_j . "" . $show_i . "</sub> = ";
                    $var_rumus .= $arr_X[$row->id_alternatif][$row_k->id_kriteria] . " / max{" . $show_array . "} = ";
                    $var_rumus .= $arr_X[$row->id_alternatif][$row_k->id_kriteria] . " / " . $max . " = " . round($arr_R[$row->id_alternatif][$row_k->id_kriteria], 2);
                }
                $var_rumus .= "<br>";
                $j++;
            }
            $i++;
        }

        $tampil_hasil = ''; // digunakan untuk kebutuhan menampilkan rumus perhitungan
        $tampil_hasil = '<table class="table table-bordered"><tbody>';
        foreach ($query_alt->result() as $row) {
            $tampil_hasil .= '<tr>';
            foreach ($query_kriteria->result() as $row_k) {
                $tampil_hasil .= '<td>' . round($arr_R[$row->id_alternatif][$row_k->id_kriteria], 2) . '</td>';
            }
            $tampil_hasil .= '</tr>';
        }
        $tampil_hasil .= '</tbody></table>';

        $var_rumus .= '<br><h3 class="page-header">Hasil Matriks Normalisasi</h3>';
        $var_rumus .= $tampil_hasil;

        $var_rumus .= '<br><h3 class="page-header">Bobot Preferensi W</h3>';
        $var_rumus .= 'W = [';

        // mencari nilai bobot preferensi W
        foreach ($query_kriteria->result() as $row) {
            $bobot[$row->id_kriteria] = $row->bobot;
            $var_rumus .= $bobot[$row->id_kriteria] . ", ";
        }

        $var_rumus = substr($var_rumus, 0, -2);
        $var_rumus .= '] <br>';

        $var_rumus .= '<br><h3 class="page-header">Menghitung Nilai V</h3>';
        $var_rumus .= '<table class="table table-bordered"><tbody>';

        // mencari nilai v
        foreach ($query_alt->result() as $row) {
            $nilai_v = 0;
            $var_rumus .= '<tr>';

            $var_rumus .= '<td>' . $row->nama_alternatif . '</td>';
            $string_tampil = ''; // untuk kebutuhan menampilkan rumus perhitungan
            foreach ($query_kriteria->result() as $row_k) {
                $nilai_v += $bobot[$row_k->id_kriteria] * $arr_R[$row->id_alternatif][$row_k->id_kriteria];
                $string_tampil .= '(' . $bobot[$row_k->id_kriteria] . ')(' . round($arr_R[$row->id_alternatif][$row_k->id_kriteria], 2) . ') + ';
            }
             $v[$row->id_alternatif]['NIK'] = $row->NIK;
            $v[$row->id_alternatif]['nama_alternatif'] = $row->nama_alternatif;
             $v[$row->id_alternatif]['alamat'] = $row->alamat;
            $v[$row->id_alternatif]['nilai'] = round($nilai_v, 3);
            $string_tampil = substr($string_tampil, 0, -2);
            $var_rumus .= '<td>' . $string_tampil . '</td>';
            $var_rumus .= '<td>' . $v[$row->id_alternatif]['nilai'] . '</td>';
            $var_rumus .= '</tr>';

            $res = $this->hasil_model->get_by_id($row->id_alternatif);
            if ($res->num_rows() > 0) {
                $data = array(
                    'nilai' => $v[$row->id_alternatif]['nilai'],
                );
                $this->hasil_model->update($row->id_alternatif, $data);
            } else {
                $data = array(
                    'id_alternatif' => $row->id_alternatif,
                    'nilai' => $v[$row->id_alternatif]['nilai'],
                );
                $this->hasil_model->insert($data);
            }
        }

        $var_rumus .= '</tbody></table>';

        // urutkan berdasarkan nilai terbesar
        $this->array_sort_by_column($v, 'nilai');

        $hasil['rumus'] = $var_rumus;
        $hasil['saw'] = $v;
        return $hasil;
    }

    public function array_sort_by_column(&$arr, $col, $dir = SORT_DESC)
    {
        $sort_col = array();
        foreach ($arr as $key => $row) {
            $sort_col[$key] = $row[$col];
        }
        return array_multisort($sort_col, $dir, $arr);
    }

    public function pdf()
    {
        $data['hasil'] = $this->hasil_model->get_all()->result();
        $html = $this->load->view('print', $data, TRUE);

        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();
        $dompdf->stream('hasil-penilaian.pdf', array('Attachment' => FALSE));
    }

    public function pdf_tidak()
    {
        $data['hasil'] = $this->hasil_model->get_all()->result();
        $html = $this->load->view('print_tidak', $data, TRUE);

        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();
        $dompdf->stream('hasil-penilaian-tidak.pdf', array('Attachment' => FALSE));
    }
}


/* End of file Penilaian.php */
/* Location: ./application/controllers/Penilaian.php */
