<%@ Page Title="Talleres" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Talleres.aspx.cs" Inherits="saldanacars2.Talleres" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <table>

        <tr>
              <td style="height: 274px">
              < <asp:Image ImageUrl="~/imagenes1/taller11.jpg" runat="server" Height="170px" Width="287px" />
               <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Taller:</span><asp:Label ID="Taller11" runat="server">Automotriz </asp:Label>
                     <asp:Label ID="Automotriz11" runat="server">Roel </asp:Label>
               </div>
                
                <asp:Label ID="Lbl2" runat="server" Text="Dirección: Av.Diego Díaz de Berlanga 1310-B, Balcones de Santo Domingo, 66446 San Nicolás de los Garza, N.L."></asp:Label>
            </td>

            <td style="height: 274px">
              < <asp:Image ImageUrl="~/imagenes1/taller12.jpeg" runat="server" Height="170px" Width="287px" />
               <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Taller:</span><asp:Label ID="Taller12" runat="server">Mecanico </asp:Label>
                     <asp:Label ID="Automotriz12" runat="server">Garza Elizondo </asp:Label>
               </div>
                
                <asp:Label ID="Label3" runat="server" Text="Dirección:  Padre Mier 601-A, Moderno Apodaca, 66600 Cd Apodaca, N.L."></asp:Label>
            </td>


             <td style="height: 274px">
              < <asp:Image ImageUrl="~/imagenes1/taller13.jpg" runat="server" Height="170px" Width="287px" />
               <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; El</span><asp:Label ID="Taller13" runat="server">Taller </asp:Label>
                     <asp:Label ID="Automotiz13" runat="server">Garza  </asp:Label>
               </div>
                
                <asp:Label ID="Label6" runat="server" Text="Dirección: 1a. Avenida 928, Jardines de Anáhuac, 66463 San Nicolás de los Garza, N.L."></asp:Label>
            </td>
             
        </tr>

        <tr>
            
            <td style="height: 274px">
              < <asp:Image ImageUrl="~/imagenes1/taller21.jpg" runat="server" Height="170px" Width="287px" />
               <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Taller:</span><asp:Label ID="Taller21" runat="server">Automotriz </asp:Label>
                     <asp:Label ID="Automotiz21" runat="server">Los Gonzalez </asp:Label>
               </div>
                
                <asp:Label ID="Label4" runat="server" Text="Dirección: Av. Las Puentes 818, Las Puentes 7o Sector, 66460 San Nicolás de los Garza, N.L."></asp:Label>
            </td>
        

            <td style="height: 274px">
              < <asp:Image ImageUrl="~/imagenes1/taller22.jpg" runat="server" Height="170px" Width="287px" />
               <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Taller:</span><asp:Label ID="Taller22" runat="server">Automotriz </asp:Label>
                     <asp:Label ID="Automotriz22" runat="server">El chino </asp:Label>
               </div>
                
                <asp:Label ID="Label9" runat="server" Text="Av. Diego Díaz de Berlanga 1132, Paseo de los Andes 1er Sector, 66444 San Nicolás de los Garza, N.L."></asp:Label>
            </td>
          
          

            
           
        </table>

</asp:Content>