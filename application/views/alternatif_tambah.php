<?php $this->load->view('template/user'); ?>

<div class="box box-success">
    <div class="box-header with-border text-center">
        <h3 ><b>Silahkan Isi Data Anda Dengan Benar</b></h3>
    </div><br>

    <form class="form-horizontal "  action="<?php echo site_url('alternatif_tambah/tambah'); ?>" method="post">
        <div class="box-body" style="margin-left: 370px">

            <?php echo validation_errors('<div class="alert bg-danger" role="alert">', '</div>'); ?>

            <div class="form-group">
                <label for="NIK" class="col-sm-2 control-label ">NIK</label>
                <div class="col-sm-4">
                    <input name="NIK"  class="form-control" required type="text" value="<?php echo set_value('NIK'); ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="nama_alternatif" class="col-sm-2 control-label">Nama</label>
                <div class="col-sm-4">
                    <input name="nama_alternatif" id="nama_alternatif" class="form-control" required type="text" value="<?php echo set_value('nama_alternatif'); ?>">
                </div>
            </div>
            <div class="form-group">
                <label for="alamat" class="col-sm-2 control-label">Alamat</label>
                <div class="col-sm-4">
                    <input name="alamat" id="alamat" class="form-control" required type="text" value="<?php echo set_value('alamat'); ?>">
                </div>
            </div>

            <?php foreach ($query as $row): ?>

            <div class="form-group">

                <label for="kriteria<?php echo $row->id_kriteria; ?>" class="col-sm-2 control-label"><?php echo $row->nama_kriteria; ?></label>
                <div class="col-sm-4">
                    <select class="form-control" name="kriteria<?php echo $row->id_kriteria; ?>" required>
                        <option value="">Pilih...</option>

                        <?php foreach ($sub[$row->id_kriteria] as $row_sub) { ?>
                        <option value="<?php echo $row_sub->id_subkriteria; ?>" <?php echo set_select('kriteria' . $row->id_kriteria, $row_sub->id_subkriteria); ?>><?php echo $row_sub->nama_subkriteria; ?></option>
                        <?php } ?>

                    </select>
                </div>
            </div>

            <?php endforeach; ?>

       
        <div   style="margin-left: 200px">
            <div class="text-center col-sm-6">

                <button type="submit" name="save" data-toggle="modal" data-target="#confirm-simpan" class="btn btn-success">Simpan</button>
                <a href="<?php echo site_url('awal'); ?>" class="btn btn-danger">Kembali</a>
            </div>
        </div>
    </form>
</div>

