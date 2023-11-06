



<li <?php echo ($this->uri->segment(1) == '' || $this->uri->segment(1) == 'home') ? 'class="active"' : ''; ?>><a href="<?php echo site_url(); ?>"><i class="fa fa-home"></i> <span>Home</span></a></li>
<li <?php echo ($this->uri->segment(1) == 'kriteria' || $this->uri->segment(1) == 'subkriteria') ? 'class="active"' : ''; ?>><a href="<?php echo site_url('kriteria'); ?>"><i class="fa fa-copy"></i> <span>Kriteria</span></a></li>
<li <?php echo $this->uri->segment(1) == 'alternatif' ? 'class="active"' : ''; ?>><a href="<?php echo site_url('alternatif'); ?>"><i class="fa fa-copy"></i> <span>Data Warga</span></a></li>
<li <?php echo $this->uri->segment(1) == 'penilaian' ? 'class="active"' : ''; ?>><a href="<?php echo site_url('penilaian'); ?>"><i class="fa fa-copy"></i> <span>Perhitungan Penilaian</span></a></li>
<li <?php echo ($this->uri->segment(1) == 'admin' && $this->uri->segment(2) != 'password') ? 'class="active"' : ''; ?>><a href="<?php echo site_url('admin'); ?>"><i class="fa fa-copy"></i> <span>Admin</span></a></li>
<li <?php echo ($this->uri->segment(1) == 'admin' && $this->uri->segment(2) == 'password') ? 'class="active"' : ''; ?>><a href="<?php echo site_url('admin/password'); ?>"><i class="fa fa-copy"></i> <span>Ubah Password</span></a></li>
<li><a href="<?php echo site_url('login/logout'); ?>"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>