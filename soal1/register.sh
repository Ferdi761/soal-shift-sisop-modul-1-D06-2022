<!DOCTYPE html>
<html lang="en">
<head>
<!-- meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<!-- costum css -->
<link rel="stylesheet" href="style.css">
</head>
 
<body>
<?php
//menyertakan file program koneksi.php pada register
require('koneksi.php');
//inisialisasi session
session_start();

$error = '';
$validate = '';
if( isset($_SESSION['user']) ) header('Location: index.php');
//mengecek apakah data username yang diinpukan user kosong atau tidak
if( isset($_POST['submit']) ){
        
        // menghilangkan backshlases
        $username = stripslashes($_POST['username']);
        //cara sederhana mengamankan dari sql injection
        $username = mysqli_real_escape_string($con, $username);
        $name     = stripslashes($_POST['name']);
        $name     = mysqli_real_escape_string($con, $name);
        $email    = stripslashes($_POST['email']);
        $email    = mysqli_real_escape_string($con, $email);
        $password = stripslashes($_POST['password']);
        $password = mysqli_real_escape_string($con, $password);
        $repass   = stripslashes($_POST['repassword']);
        $repass   = mysqli_real_escape_string($con, $repass);
        //cek apakah nilai yang diinputkan pada form ada yang kosong atau tidak
        if(!empty(trim($name)) && !empty(trim($username)) && !empty(trim($email)) && !empty(trim($password)) && !empty(trim($repass))){
            //mengecek apakah password yang diinputkan sama dengan re-password yang diinputkan kembali
            if($password == $repass){
                //memanggil method cek_nama untuk mengecek apakah user sudah terdaftar atau belum
                if( cek_nama($name,$con) == 0 ){
                    //hashing password sebelum disimpan didatabase
                    $pass  = password_hash($password, PASSWORD_DEFAULT);
                    //insert data ke database
                    $query = "INSERT INTO users (username,name,email, password ) VALUES ('$username','$nama','$email','$pass')";
                    $result   = mysql_query($con, $query);
                    //jika insert data berhasil maka akan diredirect ke halaman index.php serta menyimpan data username ke session
                    if ($result) {
                        $_SESSION['username'] = $username;
                       
                        header('Location: index.php');
                    
                    
                    } else {
                        $error =  'User Already Exist';
                    }
                }else{
                        $error =  'Failed Login Attempt on User' '$name';
                }
            }else{
                $validate = 'Wrong Password';
            }
            
        }else {
            $error =  'Data cant be empty';
        }then{
            $validate = 'User $name registered successfully!';        }
    } 

    
    function cek_nama($username,$con){
        $nama = mysqli_real_escape_string($con, $username);
        $query = "SELECT * FROM users WHERE username = '$nama'";
        if( $result = mysqli_query($con, $query) ) return mysqli_num_rows($result);
    }
?>
        <section class="container-fluid mb-4">
            <!-- justify-content-center untuk mengatur posisi form agar berada di tengah-tengah -->
            <section class="row justify-content-center">
            <section class="col-12 col-sm-6 col-md-4">
                <form class="form-container" action="register.php" method="POST">
                    <h4 class="text-center font-weight-bold"> Sign-Up </h4>
                    <?php if($error != ''){ ?>
                        <div class="alert alert-danger" role="alert"><?= $error; ?></div>
                    <?php } ?>
                   
                    <div class="form-group">
                        <label for="name">Nama</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Masukkan Nama">
                    </div>
                    <div class="form-group">
                        <label for="InputEmail">Alamat Email</label>
                        <input type="email" class="form-control" id="InputEmail" name="email" aria-describeby="emailHelp" placeholder="Masukkan email">
                    </div>
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Masukkan username">
                    </div>
                    <div class="form-group">
                        <label for="InputPassword">Password</label>
                        <input type="password" class="form-control" id="InputPassword" name="password" placeholder="Password">
                        <?php if($validate != '') {?>
                            <p class="text-danger"><?= $validate; ?></p>
                        <?php }?>
                    </div>
                    <div class="form-group">
                        <label for="InputPassword">Re-Password</label>
                        <input type="password" class="form-control" id="InputRePassword" name="repassword" placeholder="Re-Password">
                        <?php if($validate != '') {?>
                            <p class="text-danger"><?= $validate; ?></p>
                        <?php }?>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary btn-block">Register</button>
                    <div class="form-footer mt-2">
                        <p> Already have account? <a href="login.php">Login</a></p>

                        <div class="container">

    <form action="/action_page.php">
            <label for="usrname">Username</label>
            <input type="text" id="usrname" name="usrname" required>

            <label for="psw">Password</label>
            <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Harus berisi setidaknya satu angka dan satu huruf besar dan kecil, dan setidaknya 8 karakter atau lebih" required>
    
            <input type="submit" value="kirim">
            </form>
            </div>

            <div id="message">
        <h3> Password harus terdiri dari: </h3>
   <p id = "letter" class = "invalid"> Huruf <b> kecil </b> </p>
   <p id = "capital" class = "invalid"> Huruf <b> KAPITAL (huruf besar) </b> </p>
   <p id = "number" class = "invalid"> <b>Angka</b>(0-9) </p>
   <p id = "length" class = "invalid"> Minimal <b> 8 karakter </b> </p>
</div>
                
<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// Ketika pengguna mengklik bidang kata sandi, tunjukkan kotak pesan
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// Ketika pengguna mengklik di luar field password, sembunyikan kotak pesan
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
                    </div>
                </form>
            </section>
            </section>
        </section>

    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>