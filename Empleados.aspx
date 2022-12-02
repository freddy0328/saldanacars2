<%@ Page Title="Empleados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="saldanacars2.Empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:Button ID="btnNuevo" runat="server" Text="Empleados"  OnClick="btnNuevo_Click"/>
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
          <asp:Label ID="lblId" runat="server" Text="Id:"></asp:Label>
          <asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox><br />
          <asp:Label ID="lblNombredelempleado" runat="server" Text="Nombredelempleado"></asp:Label>
          <asp:TextBox ID="txtNombredelempleado" runat="server" ></asp:TextBox><br />
           <asp:Label ID="Lbltipodeempleado" runat="server" Text="tipodeempleado"></asp:Label>
          <asp:TextBox ID="txttipodeempleado" runat="server" ></asp:TextBox><br />
           <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
          <asp:TextBox ID="txtDireccion" runat="server" ></asp:TextBox><br />
           <asp:Label ID="LblTelefono" runat="server" Text="Telefono"></asp:Label>
          <asp:TextBox ID="txtTelefono" runat="server" ></asp:TextBox><br />
          <asp:Label ID="LblCorreoelectronico" runat="server" Text="Correoelectronico"></asp:Label>
          <asp:TextBox ID="txtCorreoelectronico" runat="server" ></asp:TextBox><br />



         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <asp:Button Text="Enter" type="button" class="btn btn-primary" id="btnEnter"  OnClick ="btnEnter_Click" runat="server" />
    <%--    <button type="button" class="btn btn-primary">Save changes</button>--%>
      </div>
    </div>
  </div>
</div>
</asp:Content>
