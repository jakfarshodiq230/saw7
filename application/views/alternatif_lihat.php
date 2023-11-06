<?php $this->load->view('template/user'); ?>

<div class="box box-success">
	<div class="box-header with-border text-center">
		<h3 class="box-title"><b>Detail Data Anda</b></h3>
	</div>
    <div class="table table-responsive">
    <div class="box-body" style="margin-left: 520px">
        <div >
            <table class="table" style="width: 50%">
                <tr>
                    <td width="200">NIK</td>
                    <td>: <?php echo $NIK; ?></td>
                </tr>
                <tr>
                    <td width="200">Nama</td>
                    <td>: <?php echo $nama_alternatif; ?></td>
                </tr>

                <tr>
                    <td width="200">Alamat</td>
                    <td>: <?php echo $alamat; ?></td>
                </tr>
                <?php foreach ($query as $row): ?>
                <tr>
                    <td><?php echo $row->nama_kriteria; ?></td>
                    <td>: <?php echo $sub[$row->id_kriteria]; ?></td>
                </tr>
                <?php endforeach; ?>
                <tr>
                    <td></td>
                    <td>
                    <a href="<?php echo site_url('alternatif_tambah/tambah'); ?>" class="btn btn-danger">Kembali</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
