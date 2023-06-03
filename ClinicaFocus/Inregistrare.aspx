<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inregistrare.aspx.cs" Inherits="ClinicaFocus.Inregistrare" %>
<!doctype html>
<html lang="en" id="body" runat="server">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clinica Focus - Inregistrare</title>
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
			  <a class="nav-link" href="Contact.aspx">Contact</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link" href="Programare.aspx">Programare Online</a>
			</li>
		  </ul>

		  <ul class="navbar-nav">
			<li class="nav-item">
			  <a class="nav-link active fw-bold" aria-current="page" href="Inregistrare.aspx">Inregistrare</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link" href="Login.aspx">Autentificare</a>
			</li>
			<%--<li>
				<form id="darkmodeForm" runat="server">
					<asp:LinkButton ID="btnDarkMode" runat="server" Class="nav-link" OnClick="btnDarkMode_Click"><i class="bi bi-back"></i></asp:LinkButton>
				</form>
			</li>--%>
			<li style="display: flex; align-items: center;">
				<i class="bi bi-back"></i>
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

	<div class="signup-container">
		<form id="signupForm" runat="server">
			<div>
				<label class="col-xs-11">Username</label>
				<div class="col-xs-11">
					<asp:TextBox ID="username" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
				</div>

				<label class="col-xs-11">Parola (minim 6 caractere)</label>
				<div class="col-xs-11">
					<asp:TextBox ID="password" runat="server" Class="form-control" placeholder="Parola" TextMode="Password"></asp:TextBox>
				</div>

				<label class="col-xs-11">Confirma parola</label>
				<div class="col-xs-11">
					<asp:TextBox ID="confirmPassword" runat="server" Class="form-control" placeholder="Confirma parola" TextMode="Password"></asp:TextBox>
				</div>

				<label class="col-xs-11">Nume</label>
				<div class="col-xs-11">
					<asp:TextBox ID="name" runat="server" Class="form-control" placeholder="Nume"></asp:TextBox>
				</div>

				<label class="col-xs-11">Adresa de email</label>
				<div class="col-xs-11">
					<asp:TextBox ID="email" runat="server" Class="form-control" placeholder="Adresa de email" TextMode="Email"></asp:TextBox>
				</div>

				<asp:Button ID="btnSignup" runat="server" Class="btn btn-success signup-btn" Text="Inregistrare" OnClick="btnSignup_Click" />		

				<div class="col-xs-11" style="text-align:center">
					<asp:Label ID="validationMessage" runat="server" Text=""></asp:Label>
				</div>

			</div>
		</form>
	</div>

	<footer><asp:Calendar runat="server"></asp:Calendar>
		<hr />
		<div class="container"><asp:ValidationSummary runat="server"></asp:ValidationSummary>
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