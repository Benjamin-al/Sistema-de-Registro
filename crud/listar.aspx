<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="listar.aspx.cs" Inherits="crud.listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <div class="container-grid">
                 <form id="form"  runat="server">
                    <div class="form-group col-12 col-m-6 col-lg-8">
                        <div class="buscar">
                            <div class="row">
                                <div class="col">
                                    <div >
                                        <asp:Label runat="server" class="lblform">Rut:</asp:Label>
                                            <asp:TextBox id="txtbuscar" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Rut ">
                                        </asp:TextBox>
                                    </div>
                                </div>
                                <div class="col">
                                     <div class="btnaccion">
                                         <div>
                                             <asp:Button ID="btnbuscar" runat="server" Text="Buscar" class="btn btn-outline-primary" OnClick="btnbuscar_Click" />
                                             <asp:Button ID="btneliminar" runat="server" Text="Eliminar" class="btn btn-outline-danger" OnClick="btneliminar_Click" />
                                             <asp:Button ID="btnModificar" runat="server" Text="Modificar" class="btn btn-outline-warning" OnClick="btnModificar_Click" />
                                         </div>
                                     </div> 
                                </div>
                            </div>
                        </div>
                    </div>
                   <asp:GridView ID="datagrid" runat="server" class="formgrid " PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="true"
                   OnPageIndexChanging="datagrid_PageIndexChanging"></asp:GridView>
            </form>
        </div>
     
    </body>
    </html>
   
</asp:Content>
