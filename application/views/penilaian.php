<?php $this->load->view('template/header'); ?>

<div class="box box-success">
    <div class="box-header with-border">
        <h3 class="box-title">Penilaian</h3>
    </div>
    <div class="box-body">
        <?php if (!empty($message)) : ?>
            <div class="alert bg-warning" role="alert"><?= $message ?></div>
        <?php else : ?>
        <?php //echo empty($rumus) ? '' : $rumus; ?>
        <!-- Custom Tabs -->
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Penilaian</a></li>
              <li><a href="#tab_2" data-toggle="tab">Normalisasi Matriks</a></li>
              <li><a href="#tab_3" data-toggle="tab">Perhitungan</a></li>
              <li><a href="#tab_4" data-toggle="tab">Hasil Penerima BPNT</a></li>
              <li><a href="#tab_5" data-toggle="tab">Hasil Tidak Penerima BPNT</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <div class='table-responsive'>
                    <table class='table table-bordered tabel-header'>
                        <thead >
                            <tr >
                                <th>No</th>
                                <th>NIK</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <?php foreach ($query_kriteria as $row) : ?>
                                    <th><?php echo $row->nama_kriteria; ?></th>
                                <?php endforeach; ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($query_alt as $row) : ?>
                                <tr>
                                    <td class="text-center"><?php echo $i; ?></td>
                                    <td><?php echo $row->NIK; ?></td>
                                    <td><?php echo $row->nama_alternatif; ?></td>
                                    <td><?php echo $row->alamat; ?></td>
                                    <?php foreach ($query_kriteria as $row2) : ?>
                                        <td class="text-center"><?php echo $sub[$row->id_alternatif][$row2->id_kriteria]; ?></td>
                                    <?php endforeach; ?>
                                </tr>
                                <?php $i++; ?>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
                <div class='table-responsive'>
                    <?php echo empty($rumus) ? '' : $rumus; ?>
                </div>
              </div>
              <!-- /.tab-pane -->
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_3">
                <div class='table-responsive'>
                    <table class='table table-bordered tabel-header'>
                        <thead >
                            <tr>
                                <th>No</th>
                                <th>NIK</th>
                                <th>Nama</th>
                                <TH>Alamat</TH>
                                <?php foreach ($query_kriteria as $row) : ?>
                                    <th><?php echo $row->kode_kriteria; ?></th>
                                <?php endforeach; ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($query_alt as $row) : ?>
                                <tr>
                                    <td class="text-center"><?php echo $i; ?></td>
                                    <td width="200"><?php echo $row->NIK; ?></td>
                                    <td width="200"><?php echo $row->nama_alternatif; ?></td>
                                    <td width="200"><?php echo $row->alamat; ?></td>
                                    <?php foreach ($query_kriteria as $row2) : ?>
                                        <td class="text-center"><?php echo $bobot[$row->id_alternatif][$row2->id_kriteria]; ?></td>
                                        
                                    <?php endforeach; ?>
                                </tr>
                                <?php $i++; ?>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_4">
                <div class='table-responsive'>
                    <table class='table table-bordered'>
                        <thead  >
                            <tr >
                                <th>No</th>
                                <th class="text-center">NIK</th>
                                <th class="text-center">Nama</th>
                                <th class="text-center">Alamat</th>
                                <th class="text-center">Nilai</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Rank</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($hasil)) : ?>
                                <?php $i = 1; ?>
                                <?php $ktr =""; foreach ($hasil as $row) : 
                                    if($row['nilai'] >= 50){
                                        $ktr = "Menerima BPNT";
                                ?>
                                    <tr >
                                        <td><?php echo $i; ?></td>
                                        <td><?php echo $row['NIK']; ?></td>
                                        <td><?php echo $row['nama_alternatif']; ?></td>
                                        <td><?php echo $row['alamat']; ?></td>
                                        <td><?php echo $row['nilai']; ?></td>
                                    
                                        <td>
                                            <?php
                                            echo $ktr ;
                                            ?>
                                        </td>
                                        <td class="text-center"><?php echo $i; ?></td>
                                    </tr>
                                    <?php $i++; ?>
                                <?php } endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                    <p>
                        <a href="<?php echo site_url('penilaian/pdf'); ?>" target='blank' class='btn btn-default'><img src="<?php echo base_url('assets/images/pdf.png'); ?>">&nbsp; Export ke PDF</a>
                    </p>
                </div>
              </div>
              <!-- /.tab-pane -->
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_5">
                <div class='table-responsive'>
                    <table class='table table-bordered'>
                        <thead  >
                            <tr >
                                <th>No</th>
                                <th class="text-center">NIK</th>
                                <th class="text-center">Nama</th>
                                <th class="text-center">Alamat</th>
                                <th class="text-center">Nilai</th>
                                <th class="text-center">Status</th>
                                <th class="text-center">Rank</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($hasil)) : ?>
                                <?php $i = 1; ?>
                                <?php $ktr =""; foreach ($hasil as $row) : 
                                    if($row['nilai'] < 50){
                                        $ktr = "Tidak Menerima BPNT";
                                ?>
                                    <tr >
                                        <td><?php echo $i; ?></td>
                                        <td><?php echo $row['NIK']; ?></td>
                                        <td><?php echo $row['nama_alternatif']; ?></td>
                                        <td><?php echo $row['alamat']; ?></td>
                                        <td><?php echo $row['nilai']; ?></td>
                                    
                                        <td>
                                            <?php
                                            echo $ktr ;
                                            ?>
                                        </td>
                                        <td class="text-center"><?php echo $i; ?></td>
                                    </tr>
                                    <?php $i++; ?>
                                <?php } endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                    <p>
                        <a href="<?php echo site_url('penilaian/pdf_tidak'); ?>" target='blank' class='btn btn-default'><img src="<?php echo base_url('assets/images/pdf.png'); ?>">&nbsp; Export ke PDF</a>
                    </p>
                </div>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->           
            
        <?php endif; ?>
    </div>
</div>

<?php $this->load->view('template/footer'); ?>