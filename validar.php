<?php
session_start();
require("admin/db/conexion.php");

$username = $_POST['user'];
$pass = $_POST['pass'];


$sql = mysqli_query($db, "SELECT * FROM t_usuarios WHERE user='$username'");
if ($f = mysqli_fetch_assoc($sql)) {
	if ($pass == $f['password']) {
		$_SESSION['idUsuario'] = $f['idUsuario'];
		$_SESSION['user'] = $f['user'];
		$_SESSION['rol'] = $f['rol'];
			//accede al adminitrador
		header("location:admin/index.php");
	} else { ?>
		//
		<?php include("login.php"); ?>
		<br>
		<center>
			<?php
			 echo '<script type="text/javascript">
			 Swal.fire({
						title: "Error!",
						text: "La contraseña ingresada no coincide",
						icon: "error",
						showConfirmButton: true,
						confirmButtonColor: "#3368FF"
			})</script>'; 
			?>
		</center>
	<?php }
} else { ?>
	<?php include("login.php"); ?>
	<center>
		<?php
			 echo '<script type="text/javascript">
			 Swal.fire({
						title: "Error!",
						text: "El usuario ingresado no coincide",
						icon: "error",
						showConfirmButton: true,
						confirmButtonColor: "#3368FF"
		})</script>'; 
		?>
    </center>
<?php
}
?>