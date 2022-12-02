<%@ Page Title="Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="saldanacars2.Usuarios" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


          <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                    <h3>Ingreso al sistema</h3>
                     <asp:Image ImageUrl="~/imagenes1/logo.jpg" runat="server" Height="97px" Width="190px" />
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">Clave</label>
                        <asp:TextBox ID="Clave" type="Texto" placeholder="Clave" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                     <label for="inputCity">Nombres</label>
                     <asp:TextBox ID="Nombres" type="Texto" placeholder="Nombres" CssClass="form-control" runat="server"></asp:TextBox><br />
                                <br />
                     <label for="inputCity">Apellidos</label>
                     <asp:TextBox ID="Apellidos" type="Texto" placeholder="Apellidos" CssClass="form-control" runat="server"></asp:TextBox><br />
                               <label for="inputCity">Rol</label>
                        <asp:TextBox ID="Rol" type="Texto" placeholder="Rol" CssClass="form-control" runat="server" Height="16px"></asp:TextBox>
                    <br />
                     <label for="inputCity">Contraseña</label>
                     <asp:TextBox ID="Contrasena" type="Texto" placeholder="Contrasena" CssClass="form-control" runat="server"></asp:TextBox><br />
                      
                    
                    
                    <br />
                    
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="Button1_Click" />
                      
                       
                    </div>
                </div>
            </div>
        </div>
       
          </div>
</asp:Content>

	