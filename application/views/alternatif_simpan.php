<?php $this->load->view('template/user'); ?>

<div class="box box-success">
    <div class="box-header with-border ">
        <h3 class="box-title">Trimakasih Sudah Mengisi Data Anda Dengan Benar</h3><br>
        <h3 class="box-title">Data Anda Akan Segera Di Proses</h3>
        <div class="button-right">
            <a href="<?php echo site_url('alternatif_tambah/tambah'); ?>" class="btn btn-primary">Kembali</a>
        </div>
    </div>
    <div class="box-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered" id="dataTables1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NIK</th>
                        <th>Nama </th>
                        <th>alamat</th>
                        <th width="120">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($query as $row) { ?>
                    <tr>
                        <td></td>
                         <td><?php echo $row->NIK; ?></td>
                        <td><?php echo $row->nama_alternatif; ?></td>
                         <td><?php echo $row->alamat; ?></td>
                        <td>
                           <a href="<?php echo site_url('alternatif_tambah/lihat/' . $row->id_alternatif); ?>" class="btn btn-info btn-xs" title="Lihat">Lihat</a> 
                            
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
