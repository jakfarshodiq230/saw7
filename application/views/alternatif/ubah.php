<?php $this->load->view('template/header'); ?>

<div class="box box-success">
    <div class="box-header with-border">
        <h3 class="box-title">Ubah Data Warga</h3>
    </div>
    <form class="form-horizontal" action="<?php echo site_url('alternatif/ubah/' . $id_alternatif);; ?>" method="post">
        <input name="id" type="hidden" value="<?php echo $nama_alternatif; ?>">
        <div class="box-body">

            <?php echo validation_errors('<div class="alert bg-danger" role="alert">', '</div>'); ?>

            <div class="form-group">
                <label for="NIK" class="col-sm-2 control-label">NIK</label>
                <div class="col-sm-4">
                    <input name="NIK" id="NIK" class="form-control" required type="number" value="<?php echo set_value('NIK', $NIK); ?>">
                </div>
            </div>

             <div class="form-group">
                <label for="nama_alternatif" class="col-sm-2 control-label">Nama Alternatif</label>
                <div class="col-sm-4">
                    <input name="nama_alternatif" id="nama_alternatif" class="form-control" required type="text" value="<?php echo set_value('nama_alternatif', $nama_alternatif); ?>">
                </div>
            </div>

             <div class="form-group">
                <label for="alamat" class="col-sm-2 control-label">Alamat</label>
                <div class="col-sm-4">
                    <input name="alamat" id="alamat" class="form-control" required type="text" value="<?php echo set_value('alamat', $alamat); ?>">
                </div>
            </div>

            <?php foreach ($query as $row): ?>

            <div class="form-group">
                <label for="kriteria<?php echo $row->id_kriteria; ?>" class="col-sm-2 control-label"><?php echo $row->nama_kriteria; ?></label>
                <div class="col-sm-4">
                    <select class="form-control" name="kriteria<?php echo $row->id_kriteria; ?>" required>
                        <option value="">Pilih...</option>

                        <?php foreach ($sub[$row->id_kriteria] as $row_sub) { ?>
                        <option value="<?php echo $row_sub->id_subkriteria; ?>" <?php echo set_select('kriteria' . $row->id_kriteria, $row_sub->id_subkriteria, ($alt[$row->id_kriteria] == $row_sub->id_subkriteria ? TRUE : FALSE)); ?>><?php echo $row_sub->nama_subkriteria; ?></option>
                        <?php } ?>

                    </select>
                </div>
            </div>

            <?php endforeach; ?>

        </div>
        <div class="box-footer">
            <div class="text-center col-sm-6">
                <button type="submit" name="save" class="btn btn-success">Simpan</button>
                <a href="<?php echo site_url('alternatif'); ?>" class="btn btn-danger">Batal</a>
            </div>
        </div>
    </form>
</div>

<?php $this->load->view('template/footer'); ?>