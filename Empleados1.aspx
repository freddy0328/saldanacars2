<%@ Page Title="Empleados1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="saldanacars2.Empleados1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
		<div class="container">
			<div class="row">
				<h3 style="text-align:center"> Empleados </h3>
			</div>
			
			
				<div class="form-group">
					<label for="nombre" class="col-sm-2 control-label">Nombredelempleado</label>
					<div class="col-sm-10">
					<asp:TextBox ID="Nombredelempleado" type="text" placeholder="Nombredelempleado" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				</div>
				
				<div class="form-group">
					<label for="tipodeempleado" class="col-sm-2 control-label">tipodeempleado</label>
					<div class="col-sm-10">
					<asp:DropDownList ID="tipodeempleado" runat="server"> 
						<asp:ListItem Text="seleccionar"></asp:ListItem>
					<asp:ListItem Text="Gerente" Value="1"></asp:ListItem>
					<asp:ListItem Text="Vendedor" Value="2"></asp:ListItem>
					<asp:ListItem Text="Limpieza" Value="3"></asp:ListItem>
						</asp:DropDownList>
					</div>


					<div class="form-group">
					<label for="Direccon" class="col-sm-2 control-label"></label>
					<div class="col-sm-10">
					<asp:TextBox ID="Direccion" type="text" placeholder="Direccon" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				</div>
				
				<div class="form-group">
					<label for="Telefono" class="col-sm-2 control-label"></label>
					<div class="col-sm-10">
					<asp:TextBox ID="Telefono" type="Text" placeholder="Telefono" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				
				</div>
                    <div class="form-group">
					<label for="Correoelectronico" class="col-sm-2 control-label"></label>
					<div class="col-sm-10">
					<asp:TextBox ID="Correoelectronico" type="password" placeholder="Correoelectronico" CssClass="form-control" runat="server"></asp:TextBox><br />
					</div>
				</div>				
                
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
		                <asp:Button ID="Button2" CssClass="btn btn-default" runat="server" Text="Regresar" />
					    <asp:Button ID="Button1"  CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="Button1_Click1" />
				 </div>
				</div>
			
		</div>
		</div>
</asp:Content>