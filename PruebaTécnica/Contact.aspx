<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PruebaTécnica.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Eliminar Cliente</h1>
    <asp:Label ID="Label16" runat="server" Text="Insertar ID Cliente"></asp:Label>
    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
    <asp:Button ID="Button4" runat="server" Text="Eliminar" OnClick="eliminarClient" />

    <br><br />


    <h1>Clientes</h1>
    <br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
            <asp:BoundField DataField="APELLIDOS" HeaderText="APELLIDOS" SortExpression="APELLIDOS" />
            <asp:BoundField DataField="DOCUMENTO" HeaderText="DOCUMENTO" SortExpression="DOCUMENTO" />
            <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PruebaTecnicaConnectionString %>" SelectCommand="SELECT [ID], [FECHA], [NOMBRE], [APELLIDOS], [DOCUMENTO], [DIRECCION] FROM [CLIENTES]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PruebaTecnicaConnectionString %>" SelectCommand="SELECT FACTURACION_HEADER.ID, FACTURACION_HEADER.FECHA_FACTURA, FACTURACION_HEADER.CLIENTE_ID, FACTURACION_DETAIL.CANTIDAD, FACTURACION_DETAIL.DESCRIPCION_PRODUCTO, FACTURACION_DETAIL.ITBIS, FACTURACION_DETAIL.COSTO_UNITARIO, FACTURACION_DETAIL.TOTAL FROM FACTURACION_DETAIL INNER JOIN FACTURACION_HEADER ON FACTURACION_DETAIL.ID_HEADER = FACTURACION_HEADER.ID"></asp:SqlDataSource>
    <br />


    <h1>Facturas</h1>
    <br>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="FECHA_FACTURA" HeaderText="FECHA_FACTURA" SortExpression="FECHA_FACTURA" />
            <asp:BoundField DataField="CLIENTE_ID" HeaderText="CLIENTE_ID" SortExpression="CLIENTE_ID" />
            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
            <asp:BoundField DataField="DESCRIPCION_PRODUCTO" HeaderText="DESCRIPCION_PRODUCTO" SortExpression="DESCRIPCION_PRODUCTO" />
            <asp:BoundField DataField="ITBIS" HeaderText="ITBIS" SortExpression="ITBIS" />
            <asp:BoundField DataField="COSTO_UNITARIO" HeaderText="COSTO_UNITARIO" SortExpression="COSTO_UNITARIO" />
            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />


</asp:Content>
