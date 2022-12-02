<%@ Page Title="Clientes1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes1.aspx.cs" Inherits="saldanacars2.Clientes1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
	
		<div class="container">
			<div class="row">
				<h3 style="text-align:center">NUEVO REGISTRO DE CLIENTE </h3>
			</div>
			        <div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Nombredelcliente</label>
					<div class="col-sm-10">
					<asp:TextBox ID="Nombredelcliente" type="text" placeholder="Nombres" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				</div>
				
				<div class="form-group">
					<label for="direccion" class="col-sm-2 control-label">Direccion</label>
					<div class="col-sm-10">
					<asp:TextBox ID="Direccion" type="text" placeholder="Direccion" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label for="telefono" class="col-sm-2 control-label">Telefono</label>
					<div class="col-sm-10">
					<asp:TextBox ID="Telefono" type="text" placeholder="Telefono" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				</div>
				
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
					<asp:TextBox ID="Email" type="Text" placeholder="Email" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				
				</div>
                    <div class="form-group">
					<label for="contrasena" class="col-sm-2 control-label">Contraseña</label>
					<div class="col-sm-10">
					<asp:TextBox ID="Contrasena" type="password" placeholder="Contraseña" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				</div>				
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
		                <asp:Button ID="Button2" CssClass="btn btn-default" runat="server" Text="Regresar" />
					    <asp:Button ID="Button1"  CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="Button1_Click1" />
				 </div>
				</div>
	            </div>
	
</asp:Content>

