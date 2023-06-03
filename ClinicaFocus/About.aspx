<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ClinicaFocus.About" %>
<!doctype html>
<html lang="en" id="body" runat="server">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clinica Focus - Despre noi</title> 
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
			  <a class="nav-link active fw-bold" aria-current="page" href="About.aspx">Despre noi</a>
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

	<div class="container" style="padding: 20px">
		
		<p>Sănătatea este ceea ce omul are mai de preț.</p>
		<p>Ea trebuie să fie pe primul loc înainte de toate prioritățile pe care  le ai în viață.</p>
		<p>	Cei mai mulți oameni se străduiesc sa aibă  un stil de viață sănătos, fac terapie si sport, renunță la obiceiuri care pot să aibă un impact negativ asupra sănătății.</p>
	<!--	<hr /> -->
		<p>Sănătatea și starea de bine te fac să te bucuri pe deplin de viață și de cei dragi.</p>
		<p>Fie că îți dorești să previi, să tratezi, să aduci pe lume un copil sau să ințelegi anumite simptome pe care le-ai depistat, suntem aici, pentru tine, la Centrul Medical Focus din Timișoara.</p>
		<p>În cadrul clinicii noastre medicale vei fi evaluat și tratat de către specialistul de care ai nevoie, pentru ca tu să fii mereu bine, sănătos și recuperat.</p>
		<p>Apelează la servicii de policlinică în Timișoara din cadrul centrului Focus pentru tine sau pentru cei dragi ai tăi și bucură-te de sănătate!</p>
		<p>Îți punem la dispoziție medici specialiști din următoarele departamente: dermatologie, cardiologie, medicina muncii.</p>
		<p>Misiunea noastră este aceea de a oferi pacienţilor servicii medicale europene la prețuri accesibile, punând un accent special<p>
		<p>pe profesionalism, colaborare inter-disciplinară, intimitatea și confortul acestora.</p>
		<p>Persoanele asigurate prin Casa Națională de Asigurări de Sănătate beneficiază de analize de laborator și consultații gratuite. </p>
		<p> Sănătatea este valoarea supremă a omului</p>
		<p>Sănătatea este o stare de armonie completă a corpului, minţii şi spiritului.</p>
		<p>Ai grijă de corpul tău, pentru că este singurul loc unde va trebui să trăieşti. -Jim Rohn</p>
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

