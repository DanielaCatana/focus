<%@ Page Title="Contact" Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ClinicaFocus.Contact" %>

<!doctype html>
<html lang="en" id="body" runat="server">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clinica Focus - Contact</title>
	<link href="Content/style.css" rel="stylesheet">
    <link href="Content/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg">
	  <div class="container-fluid">
		<a class="navbar-brand" href="Default.aspx"><img height="70" src="images/logo.png" /></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item">
			  <a class="nav-link" href="About.aspx">Despre noi</a>
			</li>
			<li class="nav-item dropdown">
			  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				Servicii
			  </a>
			  <ul class="dropdown-menu">
				<li><a class="dropdown-item" href="Dermatologie.aspx">Dermatologie</a></li>
				<li><a class="dropdown-item" href="Cardiologie.aspx">Cardiologie</a></li>
				<li><a class="dropdown-item" href="MedicinaMuncii.aspx">Medicina muncii</a></li>
			  </ul>
			</li>
			<li class="nav-item">
			  <a class="nav-link active fw-bold" aria-current="page" href="Contact.aspx">Contact</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link" href="Programare.aspx">Programare Online</a>
			</li>
		  </ul>

		  <ul class="navbar-nav">
			<li class="nav-item">
			  <a id="signUpNavItem" class="nav-link" href="Inregistrare.aspx" runat="server">Inregistrare</a>
			</li>
			<li class="nav-item">
			  <a id="loginNavItem" class="nav-link" href="Login.aspx" runat="server">Autentificare</a>
			  <a id="logoutNavItem" class="nav-link" href="Login.aspx" runat="server">Deconectare</a>
			</li>
			<li>
				<form id="darkmodeForm" runat="server" style="width: 32px">
					<asp:LinkButton ID="btnDarkMode" runat="server" Class="nav-link" OnClick="btnDarkMode_Click"><i class="bi bi-back"></i></asp:LinkButton>
				</form>
			</li>
		  </ul>
		</div>
	  </div>
	</nav>

	<div class="banner">
		<div class="banner-item">
			<i class="bi bi-geo-alt-fill"></i>
			<span>Strada Drubeta 56, Timisoara, Romania</span>
		</div>
		<div class="banner-item">
			<i class="bi bi-envelope-at-fill"></i>
			<span>office@clinicafocus.ro</span>
		</div>
		<div class="banner-item">
			<i class="bi bi-clock-fill"></i>
			<span>L-V: 08-20</span>
		</div>
		<div class="banner-item">
			<i class="bi bi-telephone-fill"></i>
			<span>+40712345678</span>
		</div>
	</div>

	<div class="contact-container" style="padding: 20px">
		<div class="container px-4">
		  <div class="row row-cols-1 row-cols-sm-2">
			<div class="col p-3">
				<div class="card">
				  <h5 class="card-header">Adresa</h5>
				  <div class="card-body" >
					  
					<p> <i class="bi bi-geo-alt-fill"></i> Strada Drubeta 56, Timișoara 300006 </p>
					<div style="width: 100%"><iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Pia%C8%9Ba%20Victoriei%202,%20Timi%C8%99oara%20300006+(Ruth%20Beauty%20Salon)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a href="https://www.gps.ie/car-satnav-gps/">sat navs</a></iframe></div>	
					
				  </div>
				</div>
				
			</div>
			<div class="col p-3">
				<div class="card">
				  <h5 class="card-header">Program</h5>
				  <div class="card-body" >
					  <div style="padding-bottom: 20px;">
						<div class="row align-items-center">
							<div class="col">
							  Luni
							</div>
							<div class="col">
							  08:00 - 20:00
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col">
							  Marti
							</div>
							<div class="col">
							  08:00 - 20:00
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col">
							  Miercuri
							</div>
							<div class="col">
							  08:00 - 20:00
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col">
							  Joi
							</div>
							<div class="col">
							  08:00 - 20:00
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col">
							  Vineri
							</div>
							<div class="col">
							  08:00 - 20:00
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col">
							  Sambata
							</div>
							<div class="col">
							  09:00 - 15:00
							</div>
						</div>
						<div class="row align-items-center">
							<div class="col">
							  Duminica
							</div>
							<div class="col">
							  Inchis
							</div>
						</div>
					</div>
					<a href="programare.aspx" class="btn btn-primary">Programeaza-te acum!</a>
				  </div>
				</div>
				
			</div>
		  </div>
			
		  <div class="text-center" style="padding-top: 10px">
			<i class="bi bi-facebook" style="color: blue"></i>
			<a href="https://www.facebook.com/" class="link-primary">Clinica Focus</a>

			<i class="bi bi-instagram" style="color:deeppink"></i>
			<a href="https://www.instagram.com/" class="link-primary"> Clinica Focus</a>
		  </div>
		  
		</div>
	</div>
      
	<hr />

	<footer>
		<div class="container">
			<p>
				&copy; 2023 ClinicaFocus &middot; 
				<a href="About.aspx">Despre noi</a> &middot;
				<a href="Dermatologie.aspx">Dermatologie</a> &middot;
				<a href="Cardiologie.aspx">Cardiologie</a> &middot; 
				<a href="MedicinaMuncii.aspx">Medicina Muncii</a> &middot;  
				<a href="Contact.aspx">Contact</a> &middot;
				<a href="Programare.aspx">Programare online</a>
			</p>
			<p class="pull-right"><a href="#">Back to top</a></p>
		</div>
	</footer>

    <script src="Scripts/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  </body>
</html>
