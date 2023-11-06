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
            <form action="<?php echo site_url('login/cek'); ?>" method="post">
                <div class="text-center">
                    <a align="center"><img  style="width: 50% ;  border-radius: 50%;" src="<?php echo base_url('assets/images/admin.png') ?>" ></a>
                <h1 class="h4 mb-4 text-white"><strong>Silahkan Login</strong></h1>
            </div>
                <div class="form-group has-feedback"  >
                    <input type="text" name="username" class="form-control" placeholder="Username" required style="border-radius: 5px;">
                    <span class="fa fa-user form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" class="form-control" placeholder="Password" required style="border-radius: 5px;">
                    <span class="fa fa-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <a href="<?php echo site_url('awal'); ?>"  class="btn btn-primary " style="border-radius: 5px;"><i class="fa fa-arrow-left"></i></a>
                    </div>
                    <div class="col-xs-4">
                        
                        <button type="submit"  name="login" class="btn btn-primary btn-block btn-flat" style="border-radius: 5px;">Login</button>
                    </div>
                </div>
            </form>
        </div>
        <?php echo $this->session->flashdata('pesan'); ?>
    </div>

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo base_url('assets/js/jQuery-2.1.4.min.js'); ?>"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>
</body>

</html>