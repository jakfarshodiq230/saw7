<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>KECAMATAN BUKIT BESTARI KOTA TANJUNGPINANG</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/font-awesome.min.css'); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/AdminLTE.min.css'); ?>">
</head>

<body class="hold-transition login-page" >
    <div class="login-box">
        <div class="login-box-body" style="border-radius: 10px;">
           
                <div class="text-center">
                    <a align="center"><img  style="width: 30% ;  border-radius: 5%;" src="<?php echo base_url('assets/images/th.jpg') ?>" ></a>
                    <h1 class="h4 mb-4 text-white"><strong>UIR</strong></h1>
                    <hr>
                <h1 class="h4 mb-4 text-white"><strong>Silahkan pilih</strong></h1><br>
            </div>
               
              
                    <div >
                    </div>
                     <a align="center"><img  style="width: 37% ; " src="<?php echo base_url('assets/images/gam.png') ?>" ></a>&emsp;&emsp;&emsp;&emsp;&emsp;
                     <a align="center" ><img  style="width: 37% ; " src="<?php echo base_url('assets/images/user.jpg') ?>" ></a><br>

                   <a  style="width: 12rem;" href="<?php echo site_url('login'); ?>" class="btn btn-success " title="1">Admin</a>&emsp;&emsp;&emsp;&emsp;&emsp;
                    
                     <a style="width: 12rem;" href="<?php echo site_url('alternatif_tambah/tambah'); ?>" class="btn btn-danger " title="2">Warga</a>
                     <a style="width: 12rem;" href="<? php echo site_url('awal'); ?>" class="btn btn-danger" tittle="2"> Logout</a>

                   
                

           
        </div><br><br><br><br>


        <?php echo $this->session->flashdata('pesan'); ?>
    </div>

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo base_url('assets/js/jQuery-2.1.4.min.js'); ?>"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
</body>

</html>