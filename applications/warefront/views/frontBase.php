<!DOCTYPE html>
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<html>

<!-- Mirrored from csmthemes.com/themes/archer/image/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Dec 2016 22:02:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600,600italic,700,700italic,800,800italic,300italic,300" rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Warehouse System</title>
<meta name="description" content="Archer - Responsive Landing Page">

<!--Favicon-->

<link rel="apple-touch-icon" sizes="57x57" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-57x57.png') ?>">
<link rel="apple-touch-icon" sizes="60x60" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-60x60.png') ?>">
<link rel="apple-touch-icon" sizes="72x72" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-72x72.png') ?>">
<link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-76x76.png') ?>">
<link rel="apple-touch-icon" sizes="114x114" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-114x114.png') ?>">
<link rel="apple-touch-icon" sizes="120x120" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-120x120.png') ?>">
<link rel="apple-touch-icon" sizes="144x144" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-144x144.png') ?>">
<link rel="apple-touch-icon" sizes="152x152" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-152x152.png') ?>">
<link rel="apple-touch-icon" sizes="180x180" href="<?php echo base_url('asset/img/favicons/apple-touch-icon-180x180.png') ?>">
<link rel="icon" type="image/png" href="<?php echo base_url('asset/img/favicons/favicon-32x32.png') ?>" sizes="32x32">
<link rel="icon" type="image/png" href="<?php echo base_url('asset/img/favicons/android-chrome-192x192.png') ?>" sizes="192x192">
<link rel="icon" type="image/png" href="<?php echo base_url('asset/img/favicons/favicon-96x96.png') ?>" sizes="96x96">
<link rel="icon" type="image/png" href="<?php echo base_url('asset/img/favicons/favicon-16x16.png') ?>" sizes="16x16">
<link rel="manifest" href="<?php echo base_url('asset/img/favicons/manifest.json') ?>">
<link rel="shortcut icon" href="img/favicons/favicon.ico">
<meta name="msapplication-TileColor" content="#2b5797">
<meta name="msapplication-TileImage" content="img/favicons/mstile-144x144.png">
<meta name="msapplication-config" content="img/favicons/browserconfig.xml">
<meta name="theme-color" content="#ffffff">

<!--Favicon end-->

<link href="<?php echo base_url('asset/css/bootstrap.min.css') ?>" rel="stylesheet">
<link href="<?php echo base_url('asset/css/font-awesome.min.css') ?>" rel="stylesheet">
<link href="<?php echo base_url('asset/css/magnific-popup.css') ?>" rel="stylesheet">
<link href="<?php echo base_url('asset/css/owl.carousel.css') ?>" rel="stylesheet">
<link href="<?php echo base_url('asset/css/main.css') ?>" rel="stylesheet">
</head>


<!--hero section-->

<?php echo $contents; ?>



<!--contact form modal end--> 

<script src="<?php echo base_url('asset/js/jquery-2.2.1.min.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/bootstrap.min.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/jquery.magnific-popup.min.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/owl.carousel.min.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/jquery.waypoints.min.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/jquery.animateNumber.min.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/jquery.ajaxchimp.min.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/tweetie.min.js') ?>"></script> 
<!--[if IE 9]>
<script src="js/placeholders.min.js"></script>
<![endif]--> 
<script src="<?php echo base_url('asset/js/main.js') ?>"></script> 
<script async src="../../../../platform.twitter.com/widgets.js"></script> 
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script> 
<script src="<?php echo base_url('asset/js/gmap.js') ?>"></script> 
<script src="<?php echo base_url('asset/js/retina.min.js') ?>"></script>

<script type="text/javascript">
    $('#submit').click(function() {
        var form_data = {
            paket: $('#paket').val(),
            kategori: $('#kategori').val()
        };
        $.ajax({
            url: "<?php echo base_url('front/in_pack/1'); ?>",
            type: 'POST',
            data: form_data,
        });
        return false;
    });
</script>
</body>

<!-- Mirrored from csmthemes.com/themes/archer/image/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Dec 2016 22:04:12 GMT -->
</html>
