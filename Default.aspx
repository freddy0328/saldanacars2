<%@ Page Title="Default" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="saldanacars2.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    <img src="imagenes1/logo.jpg" />
    <sapm>Saldana Cars</sapm>
    <br />
    <samp> Llama ya al 8124377595</samp>
    
    
    <table>




        <tr>

            <td style="height: 274px">
                <asp:Image ImageUrl="~/imagenes1/11.jpg"   runat="server" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca11" runat="server">Ford </asp:Label>
                     <asp:Label ID="Modelo11" runat="server">Lobo RaptorSVT </asp:Label>
               </div>
               <asp:Label ID="Lbl1" runat="server" Text="Año:2018,Marca:Ford,Modelo:Lobo RaptorSVT,Costo:$1.290.000,Kilometraje:48,000km"></asp:Label>
              
            </td>
            
               
            <td style="height: 274px">
                <asp:Image ImageUrl="~/imagenes1/12.jpg" runat="server" />
               <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca12" runat="server">BMW </asp:Label>
                     <asp:Label ID="Modelo12" runat="server">320i </asp:Label>
               </div>
                
                <asp:Label ID="Lbl2" runat="server" Text="Año:2020,Marca:BMW,Modelo:320i,Costo:$680.000,Kilometraje:13,250 km"></asp:Label>
             
            </td>
     

          
            <td style="height: 274px">
                <asp:Image ImageUrl="~/imagenes1/13.jpg" runat="server" Height="165px" Width="327px" />
                 <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca13" runat="server">chevrolet </asp:Label>
                     <asp:Label ID="Modelo13" runat="server">silverado</asp:Label>
               </div>
                <asp:Label ID="Lbl3" runat="server" Text="Año:2013,Marca:Chevrolet,Modelo:silverado,Costo:$230.000,Kilometraje:60,000 km"></asp:Label>
          </td>
       
            </tr>
          
        <tr>
            <td>
                <asp:Image ImageUrl="~/imagenes1/21.jpg"     runat="server" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca21" runat="server">GMC </asp:Label>
                     <asp:Label ID="Modelo21" runat="server">SierraSLE 4X4</asp:Label>
               </div>
                <asp:Label ID="Lbl4" runat="server" Text="Año:2021,Marca:Gmc ,Modelo:Sierra SLE 4x4,Costo:$969.000,Kilometraje:20,250 km"></asp:Label>
            </td>

               
            <td>
                <asp:Image ImageUrl="imagenes1/22.jpg" runat="server" Width="350px" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca22" runat="server">Jeep </asp:Label>
                     <asp:Label ID="Modelo22" runat="server">Grand cherokee </asp:Label>
               </div>
                <asp:Label ID="Lbl5" runat="server" Text="Año:2020,Marca:Jeep ,Modelo:Grand Cherokee,Costo:$750.000,Kilometraje:85,192 Kms"></asp:Label>
            </td>

            
            <td>
                <asp:Image ImageUrl="~/imagenes1/23.jpg" runat="server" Height="162px" Width="401px" />
                 <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="marca23" runat="server">ford </asp:Label>
                     <asp:Label ID="Modelo23" runat="server">Mustang </asp:Label>
               </div>
                <asp:Label ID="Lbl6" runat="server" Text="Año:2015,Marca:Ford ,Modelo:Mustang,Costo:$580.300,Kilometraje:30,132 Kms"></asp:Label>
           </td>
      </tr>
            
           <tr>
           <td>
         
                <asp:Image ImageUrl="~/imagenes1/31.jpg"   runat="server" Height="175px" Width="300px" />
               <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca31" runat="server">Audi </asp:Label>
                     <asp:Label ID="Modelo31" runat="server">A3sedan </asp:Label>
               </div>

                <asp:Label ID="Lbl7" runat="server" Text="Año:2019,Marca:Audi ,Modelo:A3 Sedan,Costo:$450.300,Kilometraje:90,180 Kms"></asp:Label>
            </td>

               
            <td>
                <asp:Image ImageUrl="~/imagenes1/32.jpg"   runat="server" Height="169px" Width="426px" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca32" runat="server">Forte </asp:Label>
                     <asp:Label ID="Modelo32" runat="server">hatchback</asp:Label>
               </div>
                <asp:Label ID="Lbl8" runat="server" Text="Año:2020,Marca:Forte ,Modelo:Forte hatchback ,Costo:$270.300,Kilometraje:60,800 Kms"></asp:Label>
            </td>

            
            <td>
                <asp:Image ImageUrl="~/imagenes1/33.jpg"   runat="server" Height="140px" Width="480px" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca33" runat="server">Seat </asp:Label>
                     <asp:Label ID="Modelo33" runat="server">Ibiza</asp:Label>
               </div>
                <asp:Label ID="Lbl9" runat="server" Text="Año:2021,Marca:Seat ,Modelo:Ibiza ,Costo:$360.000,Kilometraje:20,000 Kms"></asp:Label>
            </td>
          </tr>
            
           <tr>
            <td>
                <asp:Image ImageUrl="~/imagenes1/41.jpg"  runat="server" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca41" runat="server">Dodge </asp:Label>
                     <asp:Label ID="modelo41" runat="server">Ram</asp:Label>
               </div>
                <asp:Label ID="Lbl10" runat="server" Text="Año:2022,Marca:Dodge ,Modelo:Ram ,Costo:$759.900,Kilometraje:57,000 Kms"></asp:Label>
            </td>

               
            <td>
                <asp:Image ImageUrl="~/imagenes1/42.jpg" runat="server" Height="127px" Width="415px" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca42" runat="server">Tesla </asp:Label>
                     <asp:Label ID="Modelo42" runat="server">ModelX</asp:Label>
               </div>
                <asp:Label ID="Lbl11" runat="server" Text="Año:2019,Marca:Tesla ,Modelo:ModelX ,Costo:$2.500.850,Kilometraje:58,80 Kms"></asp:Label>
            </td>

            
            <td>
                <asp:Image ImageUrl="~/imagenes1/43.jpg" runat="server" Width="480px" Height="112px" />
                <div style="border:1px solid grey;width:300px; height:50px; margin-top:5px">
                 <span><i class="fa fa-solid fa-car " aria-hidden="true"></i> &nbsp; Marca:</span><asp:Label ID="Marca43" runat="server">Toyota </asp:Label>
                     <asp:Label ID="Modelo43" runat="server">Tacoma</asp:Label>
               </div>
                <asp:Label ID="Lbl12" runat="server" Text="Año:2021,Marca:Toyota ,Modelo:Tacoma ,Costo:$1.255.300,Kilometraje:19,800 Kms"></asp:Label>
            </td>
         </tr>
        </table>
            
      
</asp:Content>