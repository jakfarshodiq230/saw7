<?php $this->load->view('template/header'); ?>

<div class="box box-success">
    <div class="box-header with-border">
        <h3 class="box-title">Data Admin</h3>
        <div class="button-right">
            <a href="<?php echo site_url('admin/tambah'); ?>" class="btn btn-primary">Tambah Admin</a>
        </div>
    </div>
    <div class="box-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered" id="dataTables1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Username</th>
                        <th width="80">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($query as $row) : ?>
                    <tr>
                        <td></td>
                        <td><?php echo $row->username; ?></td>
                        <td>
                            <?php if ($row->username != "admin") { ?>
                            <a href="<?php echo site_url('admin/ubah/' . $row->id_admin); ?>" class="btn btn-success btn-xs" title="Ubah">Ubah</a>
                            <a href="#" data-href="<?php echo site_url('admin/hapus/' . $row->id_admin); ?>" data-toggle="modal" data-target="#confirm-delete" class="btn btn-danger btn-xs" title="Hapus">Hapus</a>
                            <?php } else { ?>
                            -
                            <?php } ?>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php $this->load->view('template/footer'); ?>