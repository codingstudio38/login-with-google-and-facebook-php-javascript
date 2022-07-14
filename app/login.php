<?php
//$dbConnection = new PDO('mysql:dbname=rann;host=localhost;charset=utf8', 'rann', 'Fnav9k61M~Ngmyfo');
$dbConnection = new PDO('mysql:dbname=codingstudio;host=localhost;charset=utf8', 'root', '');
$dbConnection->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$SQLi_con = mysqli_connect("localhost", "root", "", "codingstudio");
//$SQLi_con = mysqli_connect("localhost","rann","Fnav9k61M~Ngmyfo","rann");

header("Content-Type: application/json");
$json=file_get_contents('php://input');
$data=JSON_decode($json, TRUE);
$response = array(); 
$method=mysqli_real_escape_string($SQLi_con, trim($data['method'])); 
if($method=='weLogin') {
	$check_email=mysqli_real_escape_string($SQLi_con, trim($data['username']));
	$check_password=mysqli_real_escape_string($SQLi_con, trim($data['password']));
	$sql24335="SELECT * FROM `google_login` WHERE `G_email`='$check_email' AND `pwd`='$check_password' ORDER BY `id` DESC";
	foreach($dbConnection->query($sql24335, PDO::FETCH_ASSOC) as $row5564){
		$id=$row5564['id'];
		$name=$row5564['G_name'];
		$email=$row5564['G_email'];
		$photo=$row5564['G_photo'];
		$login_type=$row5564['login_type'];
	} if(empty($row5564['id'])){
		$Sdata['status']='Failed';
		$Sdata['message']='Login Failed..!!';
		$response[]=$Sdata;
		echo JSON_encode($response);
		exit;	
		} else	{
		$Sdata['userid']=$id;
		$Sdata['username']=$name;
		$Sdata['useremail']=$email;
		$Sdata['userphoto']=$photo;
		$Sdata['logintype']=$login_type;
		$Sdata['userLoginis']=true;
		$Sdata['status']='success';
		$Sdata['message']='Login Successful...';
		$response[]=$Sdata;
		echo JSON_encode($response);
		exit;
	}
} else if($method=='google_login') {
		$pwd=mysqli_real_escape_string($SQLi_con, trim($data['pwd']));
		$tel=mysqli_real_escape_string($SQLi_con, trim($data['tel']));
		$login_type=mysqli_real_escape_string($SQLi_con, trim($data['login_type']));
		$G_id=mysqli_real_escape_string($SQLi_con, trim($data['G_id']));
		$G_name=mysqli_real_escape_string($SQLi_con, trim($data['G_name']));
		$G_givenname=mysqli_real_escape_string($SQLi_con, trim($data['G_givenname']));
		$G_familyname=mysqli_real_escape_string($SQLi_con, trim($data['G_familyname']));
		$G_photo=mysqli_real_escape_string($SQLi_con, trim($data['G_photo']));
		$G_email=mysqli_real_escape_string($SQLi_con, trim($data['G_email']));
		$G_idtoken=mysqli_real_escape_string($SQLi_con, trim($data['G_idtoken']));
		$sql24335="SELECT * FROM `google_login` WHERE `G_id`='$G_id' ORDER BY `id` DESC";
		foreach($dbConnection->query($sql24335, PDO::FETCH_ASSOC) as $row54){
			$user_id=$row54['id'];
			$user_name=$row54['G_name'];
			$user_photo=$row54['G_photo'];
			$user_email=$row54['G_email'];
			$login_type=$row54['login_type'];
		} if(!(empty($row54['id']))) {
        $sql_update="UPDATE `google_login` SET `pwd`='$pwd', `tel`='$tel', `login_type`='$login_type',`G_id`='$G_id',`G_name`='$G_name',`G_givenname`='$G_givenname',`G_familyname`='$G_familyname',`G_photo`='$G_photo',`G_email`='$G_email',`G_idtoken`='$G_idtoken' WHERE `id`='$user_id'";
        $query_update = $dbConnection->prepare( $sql_update );
        $query_update->execute();
		$sql25="SELECT * FROM `google_login` WHERE `id`='$user_id' ORDER BY `id` DESC";
		foreach($dbConnection->query($sql25, PDO::FETCH_ASSOC) as $row545){
			$id_GOOGLE=$row545['id'];
			$name_GOOGLE=$row545['G_name'];
			$photo_GOOGLE=$row545['G_photo'];
			$email_GOOGLE=$row545['G_email'];
			$login_type_GOOGLE=$row545['login_type'];
		}
			$Sdata['userid']=$id_GOOGLE;
			$Sdata['username']=$name_GOOGLE;
			$Sdata['useremail']=$email_GOOGLE;
			$Sdata['userphoto']=$photo_GOOGLE;
			$Sdata['logintype']=$login_type_GOOGLE;
			$Sdata['userLoginis']=true;
			$Sdata['status']='success';
			$Sdata['message']='Already Registered Account...';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
		}  else  {
		$sql2433="INSERT INTO `google_login` SET `pwd`='$pwd', `tel`='$tel', `login_type`='$login_type',`G_id`='$G_id',`G_name`='$G_name',`G_givenname`='$G_givenname',`G_familyname`='$G_familyname',`G_photo`='$G_photo',`G_email`='$G_email',`G_idtoken`='$G_idtoken'";
		$query_insert111 = $dbConnection->prepare( $sql2433 );
		$query_insert111->execute();
		$last_id=$dbConnection->lastInsertId();
			if($last_id){ 
			$Sdata['userid']=$last_id;
			$Sdata['username']=$G_name;
			$Sdata['useremail']=$G_email;
			$Sdata['userphoto']=$G_photo;	
			$Sdata['logintype']="login_with_google";	
			$Sdata['userLoginis']=true;
			$Sdata['status']='success';
			$Sdata['message']='Login/Upload Successfully';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
			}   else	{
			$Sdata['status']='Failed';
			$Sdata['message']='Login/Upload Failed..!!';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
			}
		}

} else if($method=='facebook_login') {
	    $pwd=mysqli_real_escape_string($SQLi_con, trim($data['pwd']));
		$tel=mysqli_real_escape_string($SQLi_con, trim($data['tel']));
		$login_type=mysqli_real_escape_string($SQLi_con, trim($data['login_type']));
		$G_id=mysqli_real_escape_string($SQLi_con, trim($data['G_id']));
		$G_name=mysqli_real_escape_string($SQLi_con, trim($data['G_name']));
		$G_givenname=mysqli_real_escape_string($SQLi_con, trim($data['G_givenname']));
		$G_familyname=mysqli_real_escape_string($SQLi_con, trim($data['G_familyname']));
	    $G_photo=mysqli_real_escape_string($SQLi_con, trim($data['G_photo']));
	    $G_email=mysqli_real_escape_string($SQLi_con, trim($data['G_email']));
		$G_idtoken=mysqli_real_escape_string($SQLi_con, trim($data['G_idtoken']));
		$sql24335="SELECT * FROM `google_login` WHERE `G_id`='$G_id' ORDER BY `id` DESC";
		foreach($dbConnection->query($sql24335, PDO::FETCH_ASSOC) as $row54){
			$user_id=$row54['id'];
			$user_name=$row54['G_name'];
			$user_photo=$row54['G_photo'];
			$user_email=$row54['G_email'];
			$login_type=$row54['login_type'];
		} if(!(empty($row54['id']))) {
        $sql_update="UPDATE `google_login` SET `pwd`='$pwd', `tel`='$tel', `login_type`='$login_type',`G_id`='$G_id',`G_name`='$G_name',`G_givenname`='$G_givenname',`G_familyname`='$G_familyname',`G_photo`='$G_photo',`G_email`='$G_email',`G_idtoken`='$G_idtoken' WHERE `id`='$user_id'";
		$query_update = $dbConnection->prepare( $sql_update );
        $query_update->execute();
		$sql25="SELECT * FROM `google_login` WHERE `id`='$user_id' ORDER BY `id` DESC";
		foreach($dbConnection->query($sql25, PDO::FETCH_ASSOC) as $row545){
			$id_GOOGLE=$row545['id'];
			$name_GOOGLE=$row545['G_name'];
			$photo_GOOGLE=$row545['G_photo'];
			$email_GOOGLE=$row545['G_email'];
			$login_type_GOOGLE=$row545['login_type'];
		}
			$Sdata['userid']=$id_GOOGLE;
			$Sdata['username']=$name_GOOGLE;
			$Sdata['useremail']=$email_GOOGLE;
			$Sdata['userphoto']=$photo_GOOGLE;
			$Sdata['logintype']=$login_type_GOOGLE;
			$Sdata['userLoginis']=true;
			$Sdata['status']='success';
			$Sdata['message']='Already Registered Account...';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
		}  else  {
		$sql2433="INSERT INTO `google_login` SET `pwd`='$pwd', `tel`='$tel', `login_type`='$login_type',`G_id`='$G_id',`G_name`='$G_name',`G_givenname`='$G_givenname',`G_familyname`='$G_familyname',`G_photo`='$G_photo',`G_email`='$G_email',`G_idtoken`='$G_idtoken'";
		$query_insert111 = $dbConnection->prepare( $sql2433 );
		$query_insert111->execute();
		$last_id=$dbConnection->lastInsertId();
			if($last_id){ 
			$Sdata['userid']=$last_id;
			$Sdata['username']=$G_name;
			$Sdata['useremail']=$G_email;
			$Sdata['userphoto']=$G_photo;	
			$Sdata['logintype']="login_with_fb";	
			$Sdata['userLoginis']=true;
			$Sdata['status']='success';
			$Sdata['message']='Login/Upload Successfully';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
			}   else	{
			$Sdata['status']='Failed';
			$Sdata['message']='Login/Upload Failed..!!';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
			}
		}

} else if($method=='register_Insert') {
		$pwd=mysqli_real_escape_string($SQLi_con, trim($data['pwd']));
		$tel=mysqli_real_escape_string($SQLi_con, trim($data['tel']));
		$login_type=mysqli_real_escape_string($SQLi_con, trim($data['login_type']));
		$G_id=mysqli_real_escape_string($SQLi_con, trim($data['G_id']));
		$G_name=mysqli_real_escape_string($SQLi_con, trim($data['G_name']));
		$G_givenname=mysqli_real_escape_string($SQLi_con, trim($data['G_givenname']));
		$G_familyname=mysqli_real_escape_string($SQLi_con, trim($data['G_familyname']));
		$G_photo=mysqli_real_escape_string($SQLi_con, trim($data['G_photo']));
		$G_email=mysqli_real_escape_string($SQLi_con, trim($data['G_email']));
		$G_idtoken=mysqli_real_escape_string($SQLi_con, trim($data['G_idtoken']));
	    $sql2435="SELECT * FROM `google_login` WHERE `G_email`='$G_email' ORDER BY `id` DESC";
		foreach($dbConnection->query($sql2435, PDO::FETCH_ASSOC) as $row564){
			$user_idd=$row564['id'];
			$user_namee=$row564['G_name'];
			$user_photoo=$row564['G_photo'];
			$user_emaill=$row564['G_email'];
			$login_typee=$row564['login_type'];
		}if(!(empty($row564['id']))) {
			$Sdata['status']='Failed';
			$Sdata['message']=$G_email.' Id Already Exists..!!';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
		}
		$sql25="SELECT * FROM `google_login` WHERE `tel`='$tel' ORDER BY `id` DESC";
		foreach($dbConnection->query($sql25, PDO::FETCH_ASSOC) as $row5h4){
			$user_idd=$row5h4['id'];
			$user_namee=$row5h4['G_name'];
			$user_photoo=$row5h4['G_photo'];
			$user_emaill=$row5h4['G_email'];
			$login_typee=$row5h4['login_type'];
		}if(!(empty($row5h4['id']))) {
			$Sdata['status']='Failed';
			$Sdata['message']=$tel.' No Already Exists..!!';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
		}
		$sql24="INSERT INTO `google_login` SET `pwd`='$pwd', `tel`='$tel', `login_type`='$login_type',`G_id`='$G_id',`G_name`='$G_name',`G_givenname`='$G_givenname',`G_familyname`='$G_familyname',`G_photo`='$G_photo',`G_email`='$G_email',`G_idtoken`='$G_idtoken'";
		$query_insert111 = $dbConnection->prepare( $sql24 );
		$query_insert111->execute();
		$last_id=$dbConnection->lastInsertId();
			if($last_id){ 
			$Sdata['status']='success';
			$Sdata['message']='Account Created Successfully...';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
			}   else	{
			$Sdata['status']='Failed';
			$Sdata['message']='Failed To An Account Creation...!!';
			$response[]=$Sdata;
			echo JSON_encode($response);
			exit;
			} 
}
?>