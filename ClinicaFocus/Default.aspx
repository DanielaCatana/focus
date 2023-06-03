<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClinicaFocus._Default" %>
<!doctype html>
<html lang="en" id="body" runat="server">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clinica Focus</title>
	<link href="Content/style.css" rel="stylesheet">
    <link href="Content/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg">
	  <div class="container-fluid">
		<a class="navbar-brand" href="Default.aspx"><img height="70" src="images/logo.png"/></a>
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
			  <a class="nav-link" href="Contact.aspx">Contact</a>
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

	<div class="carousel-container">
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
		  </div>
		  <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
			  <div class="carousel-inner">
				<div class="carousel-item active">
				  <img src="images/carousel1.png" class="d-block" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/carousel2.png" class="d-block" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/carousel3.jpg" class="d-block" alt="...">
				</div>
				<div class="carousel-item">
				  <img src="images/carousel4.jpg" class="d-block" alt="...">
				</div>
			  </div>
			</div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		  </button>
		</div>
	</div>
	
	<hr/>

	<div id="test">
		<div class="container" style="padding: 20px 0">
			<div class="row">
				<div class="col-lg-4" style="text-align: center">
					<img class="rounded mx-auto d-block" src="images/derma.jpg" alt="" width="140" height="140" />
					<h2>Dermatologie</h2>
					<p>Pielea este cel mai mare organ al corpului nostru. Un organ complex care are numeroase funcții și este indispensabil pentru viața organismului nostru. Starea generală a organismului, precum și diversele afecțiuni ale organelor interne se reflectă la nivelul pielii. Bucură-te din plin de sănătatea și frumusețea ta și nu lăsa ca anumite leziuni să îți afecteze starea de bine. Alege să previi, să tratezi și să monitorizezi corect afecțiunile dermatologice la centrul Focus. </p>
					<a href="Dermatologie.aspx" class="btn btn-outline-secondary" role="button">Vezi mai multe detalii</a>
				</div>
				<div class="col-lg-4" style="text-align: center">
					<img class="rounded mx-auto d-block" src="images/cardio.png" alt="" width="140" height="140" />
					<h2>Cardiologie</h2>
					<p>Inima ta merită tot ce este mai bun. Inima ta merită să ai grijă de ea. Eventualele afecțiuni ale inimii pot fi depistate la timp, prin consultul unui medic cardiolog specializat de la Focus Timișoara. Alege să îi oferi inimii tale atenția și îngrijirea de care are nevoie, de la prevenție, la diagnosticare, tratament și recomandări oferite de medicii noștri cardiologi. </p>
					<a href="Cardiologie.aspx" class="btn btn-outline-secondary" role="button">Vezi mai multe detalii</a>
				</div>
				<div class="col-lg-4" style="text-align: center">
					<img class="rounded mx-auto d-block" src="images/Medicina-muncii.jpg" alt="" width="140" height="140" />
					<h2>Medicina muncii</h2>
					<p>Vrei să te angajezi și ai nevoie de dosarul medical pentru angajare? Ești deja angajat și a venit timpul controlului periodic pentru actualul loc de muncă? Ai o afacere iar angajații tăi au nevoie de medicina muncii? Clinica Focus din Timișoara îți oferă servicii specializate complete de medicina muncii, efectuate de către personal acreditat, toate într-un singur loc.</p>
					<a href="MedicinaMuncii.aspx" class="btn btn-outline-secondary" role="button">Vezi mai multe detalii</a>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<hr />
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
