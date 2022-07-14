<?php 
require_once "vendor/autoload.php";
session_start();

$fb = new \Facebook\Facebook([
'app_id'=>'4897019270351498',
'app_secret'=>'a5f50492ad9da1854fcb2c4628894c0b',
'default_graph_version'=>'v13.0'
]);

$helper = $fb->getRedirectLoginHelper();

if(isset($_GET['code'])){
	if(isset($_SESSION['access_token'])){
		$access_token = $_SESSION['access_token'];
	} else {
		$access_token = $helper->getAccessToken();
		$_SESSION['access_token'] = $access_token;
		$fb->setDefualtAccessToken($_SESSION['access_token']);
	}

	$graph_response = $fb->get("/me?fields=name,email",$access_token);
	$facebook_user_info = $graph_response->getGraphUser();

    $requestPicture = $fb->get("/me/picture?redirect=false&height=150",$access_token);
	$fbpic = $requestPicture->getGraphUser();

	$_SESSION['user_name']=$facebook_user_info['name'];
	$_SESSION['user_email_id']=$facebook_user_info['email'];
	$_SESSION['user_pic']=$fbpic;
	
} else {
	$permissions = ['email'];
	$login_url = $helper->getLoginUrl('https://www.softwareflame.com/google-login/index.php',$permissions);
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PHP Facebook login</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
</head>
<body>
<!-- https://www.youtube.com/watch?v=To-2d_NNsBw -->

<div class="container"> 
	 <br><br>
	 <h2 align="center">Login with facebook</h2>
<?php if(isset($login_url)){ ?>
<form action="" method="post" name="facebookform">
	<a href="<?= $login_url; ?>">Facebook Login</a>
</form>
<?php } else { ?>
<div class="card card-signin my-5">
	<div class="card-body">
		<h3>Welcome User</h3>
		<h4><img src="<?= $_SESSION['user_pic']; ?>" width="150"><h4><br>
			<h4>Name: <?= $_SESSION['user_name']; ?></h4><br>
			<h4>Email Id: <?= $_SESSION['user_email_id']; ?></h4>

			<a href="logout.php">Login Out</a>
	</div>
</div>
<?php }?>
</div>
</body>
</html>