<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Programare.aspx.cs" Inherits="ClinicaFocus.Programare" %>

<!doctype html>
<html lang="en" id="body" runat="server">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Clinica Focus - Programare</title>
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
			  <a class="nav-link active fw-bold" aria-current="page" href="Programare.aspx">Programare Online</a>
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

	<div class="container" style="padding: 20px; height:100%">
		
		<div id="deconnected" runat="server">
			<h2>Programeaza-te online</h2>
			<img src="images/bigLogo.png" class="img-fluid" alt="..." style="height:350px"/>
			<p>Daca ai deja cont, acceseaza din meniu 'Autentificare' pentru a putea vedea programarile tale sau pentru a face o programare noua. </p>
			<p>Daca nu ai cont, acceseaza din meniu 'Inregistrare' pentru a-ti creea un cont nou sau suna la numarul de telefon afisat pentru a lua legatura cu colegii din clinica. </p>
		</div>
		<form runat="server" style="width: 100%">
			<div id="connected" runat="server" style="display: flex; justify-content:space-evenly">

                <%-- Formular adaugare programare --%>
				<div id="formular_adaugareProgramare"> 
					<label class="col-xs-11">Nume (Optional)</label>
					<div class="col-xs-11">
						<asp:TextBox ID="nume" runat="server" Class="form-control" placeholder="Nume"></asp:TextBox>
					</div>

					<label class="col-xs-11">Telefon</label>
					<div class="col-xs-11">
						<asp:TextBox ID="telefon" runat="server" Class="form-control" placeholder="Telefon"></asp:TextBox>
					</div>

					<label class="col-xs-11">Specialitate</label>
					<div class="col-xs-11">
						<asp:DropDownList ID="specialitate" runat="server">
							<asp:ListItem Enabled="true" Text="Selecteaza Specialitatea" Value="-1"></asp:ListItem>
							<asp:ListItem Text="Dermatologie" Value="Dermatologie"></asp:ListItem>
							<asp:ListItem Text="Cardiologie" Value="Cardiologie"></asp:ListItem>
							<asp:ListItem Text="Medicina Muncii" Value="Medicina Muncii"></asp:ListItem>
						</asp:DropDownList>
					</div>

					<label class="col-xs-11">Detalii (Optional)</label>
					<div class="col-xs-11">
						<asp:TextBox ID="detalii" runat="server" Class="form-control" placeholder="Detalii"></asp:TextBox>
					</div>

					<label class="col-xs-11">Data</label>
					<div class="col-xs-11">
						<asp:Calendar ID="calendar" runat="server"></asp:Calendar>
					</div>

					<label class="col-xs-11">Ora</label>
					<div class="col-xs-11">
						<asp:DropDownList ID="ora" runat="server">
							<asp:ListItem Enabled="true" Text="Selecteaza Ora" Value="-1"></asp:ListItem>
							<asp:ListItem Text="8:00" Value="8"></asp:ListItem>
							<asp:ListItem Text="9:00" Value="9"></asp:ListItem>
							<asp:ListItem Text="10:00" Value="10"></asp:ListItem>
							<asp:ListItem Text="11:00" Value="11"></asp:ListItem>
							<asp:ListItem Text="12:00" Value="12"></asp:ListItem>
							<asp:ListItem Text="13:00" Value="13"></asp:ListItem>
							<asp:ListItem Text="14:00" Value="14"></asp:ListItem>
							<asp:ListItem Text="15:00" Value="15"></asp:ListItem>
							<asp:ListItem Text="16:00" Value="16"></asp:ListItem>
							<asp:ListItem Text="17:00" Value="17"></asp:ListItem>
						</asp:DropDownList>
					</div>

					<asp:Button ID="btnAdaugaProgramare" runat="server" Text="Adauga Programare" Class="btn btn-success btnProgramare" OnClick="btnAdaugaProgramare_Click" />
					<asp:Label ID="AddValidationMessage" runat="server" Text="" CssClass="text-danger"></asp:Label>
				</div>
				<div>
					<h2>Programari</h2>
					<p id="messageLabel" runat="server"></p>

                    <%-- Tabel programari --%>
					<asp:Table ID="Table1" GridLines="Both" 
						HorizontalAlign="Center" 
						Font-Names="Verdana" 
						Font-Size="8pt" 
						CellPadding="15" 
						CellSpacing="10" runat="server"></asp:Table>

                    <%-- Anulare programare --%>
					<div runat="server" id="anulareDiv">
						<h4>Vrei sa anulezi o programare?</h4>
						<label class="col-xs-11">Introduceti codul programarii</label>
						<div class="col-xs-11">
							<asp:TextBox ID="codDelete" runat="server" Class="form-control" placeholder="Cod"></asp:TextBox>
						</div>
						<asp:Button ID="btnDelete" runat="server" Text="Anuleaza programarea" Class="btn btn-danger btnProgramare" OnClick="btnDelete_Click" />
						<asp:Label ID="validationMessage" runat="server" Text=""></asp:Label>
					</div>
				</div>
			</div>
		</form>
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


