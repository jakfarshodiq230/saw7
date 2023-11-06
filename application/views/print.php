<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Cetak Hasil Penilaian</title>

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            font-size: 14px;
        }

        th {
            height: 30px;
            text-align: center;
        }

        table,
        th,
        td {
            border: 1px solid black;
        }

        th,
        td {
            padding: 3px;
        }

        thead {
            background: lightgray;
        }

        .center {
            text-align: center;
        }
    </style>
</head>

<body>

    <h4 class="center">
        HASIL PENILAIAN SISTEM PENDUKUNG KEPUTUSAN MENENTUKAN <br> KELAYAKAN PENERIMA BANTUAN PANGAN NON TUNAI
 PADA<br> KECAMATAN BUKIT BESTARI KOTA TANJUNGPINANG
</h4>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>NIK</th>
                <th>Nama</th>
                <th>alamat</th>
                <th>Nilai</th>
                <th>Status</th>
                <th>Rank</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 0;
            $rank=0;
            foreach ($hasil as $row) : 
                if($row->nilai >= 50){
            ?>
                <tr>
                    <td class="center"><?= ++$no ?></td>
                     <td><?= $row->NIK ?></td>
                    <td><?= $row->nama_alternatif ?></td>
                     <td><?= $row->alamat ?></td>
                    <td class="center"><?= floatval($row->nilai) ?></td>
                    <td><?php  
                            echo "Menerima BPNT";
                        ?></td>
                   <td class="center"><?= ++$rank ?></td> 
                </tr>
            <?php } endforeach; ?>
        </tbody>
    </table>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>NIK</th>
                <th>Nama</th>
                <th>alamat</th>
                <th>Nilai</th>
                <th>Status</th>
                <th>Rank</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 0;
            $rank=0;
            foreach ($hasil as $row) : 
                if($row->nilai < 50){
            ?>
                <tr>
                    <td class="center"><?= ++$no ?></td>
                     <td><?= $row->NIK ?></td>
                    <td><?= $row->nama_alternatif ?></td>
                     <td><?= $row->alamat ?></td>
                    <td class="center"><?= floatval($row->nilai) ?></td>
                    <td><?php  
                            echo "Tidak Menerima BPNT";
                        ?></td>
                   <td class="center"><?= ++$rank ?></td> 
                </tr>
            <?php } endforeach; ?>
        </tbody>
    </table>
</body>

</html>