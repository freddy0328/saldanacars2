<%@ Page Title="login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="saldanacars2.login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


          <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                    <h3>Ingreso al sistema</h3>
                     <asp:Image ImageUrl="~/imagenes1/logo.jpg" runat="server" Height="97px" Width="190px" />
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">Usuario</label>
                        <asp:TextBox ID="Usuario" type="Texto" placeholder="Usuario" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                     <label for="inputCity">Contraseña</label>

                    <asp:TextBox ID="Contrasena" type="Texto" placeholder="Contrasena" CssClass="form-control" runat="server"></asp:TextBox><br />
                   
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="login" OnClick="Button1_Click" />
                        </div>
                      
                       
                    </div>
                </div>
            </div>
        </div>
       
</asp:Content>

	