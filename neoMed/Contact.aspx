<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="neoMed.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>neoMed Contact</title>
	<link rel="stylesheet" href="Styles/style.css"/>
</head>
<body>
   <form runat="server">
	<div id="header">
		<div id="title"><h1>neoMed CRM</h1></div>
	</div>
	<div id="navbar">
		<label for="show-menu" class="show-menu">
          <div class="navbar-line-wrapper">
            <div class="navbar-line"></div>
            <div class="navbar-line"></div>
            <div class="navbar-line"></div>
          </div>    
        </label>
		<input type="checkbox" id="show-menu" role="button" />
		<ul id="menu">
          <li><asp:Button CssClass="button" ID="btnHome" runat="server" Text="HOME" OnClick="btnHome_Click" /></li>
          <li><asp:Button CssClass="button" ID="btnClients" runat="server" Text="Clients" OnClick="btnClients_Click"/></li>
          <li><asp:Button CssClass="button" ID="btnAppointments" runat="server" Text="Appointments" OnClick="btnAppointments_Click"/></li>
          <li><asp:Button CssClass="button" ID="btnProcedures" runat="server" Text="Procedures" OnClick="btnProcedures_Click"/></li>
          <li><asp:Button CssClass="button" ID="btnContact" runat="server" Text="Contact" OnClick="btnContact_Click"/></li>
        </ul>
	</div>
	<div id="content">
		<p>CONTACT CONTACT CONTACT CONTACT CONTACT ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>
	<div id="footer"><p>&copy; Footer</p></div>
        </form>
</body>
</html>
