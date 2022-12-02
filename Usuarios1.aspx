<%@ Page Title="Usuarios1" Language="C#" Debug="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios1.aspx.cs" Inherits="saldanacars2.Usuarios1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo Usuario"  OnClick="btnNuevo_Click"/>
    <asp:GridView ID="GVUsuarios" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="Gainsboro" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                         <asp:LinkButton runat="server" ID="EditLink" CommandArgument='<%# Eval("id") %>' OnClick="Editlink_Click">edit</asp:LinkButton>
          
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    
                         <asp:LinkButton runat="server" ID="DeleteLink" CommandArgument='<%# Eval("id") %>' OnClick="Deletelink_Click">Delete</asp:LinkButton>
          
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>

    
         <div id="myModal" class="modal" tabindex="-1" role="dialog">
     <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <asp:HiddenField id="Modo" runat="server" />
          <asp:Label ID="lblId" runat="server"  CssClass="ancho" Text="Id:"></asp:Label>
          <asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox><br />
          <asp:Label ID="lblClave" runat="server"  CssClass="ancho" Text="Clave"></asp:Label>
          <asp:TextBox ID="txtClave" runat="server" ></asp:TextBox><br />
           <asp:Label ID="LblNombres" runat="server" Text="Nombres"></asp:Label>
          <asp:TextBox ID="txtNombres" runat="server" ></asp:TextBox><br />
           <asp:Label ID="lblApellidos" runat="server" Text="Apellidos"></asp:Label>
          <asp:TextBox ID="txtApellidos" runat="server" ></asp:TextBox><br />
           <asp:Label ID="LblRol" runat="server" Text="Rol"></asp:Label>
          <asp:TextBox ID="txtRol" runat="server" ></asp:TextBox><br />
          <asp:Label ID="LblContrasena" runat="server" Text="Contraseña"></asp:Label>
          <asp:TextBox ID="txtContrasena" runat="server" ></asp:TextBox><br />



         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <asp:Button Text="Enter" type="button" class="btn btn-primary" id="btnEnter"  OnClick ="btnEnter_Click" runat="server" />
      <%--  <button type="button" class="btn btn-primary">Save changes</button>--%>
      </div>
    </div>
  </div>
</div>
</asp:Content>
