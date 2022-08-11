<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="modificar.aspx.cs" Inherits="crud.Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title></title>

        </head>
        <body>
            <div class="container">
                <form class="form" id="form" runat="server">
                    <div class="form-group col-12 col-m-6 col-lg-8">
                        <!--Titulo-->
                        <div class="row w-100 align-items-center">
                            <div class="col text-center">
                                <label>Actualizar Registros</label>
                            </div>
                        </div>
                        <!--div para rut-->
                        <div>
                            <div class="row">
                                <div class="col">
                                    <div>
                                        <asp:Label runat="server" class="lblform">Rut:</asp:Label>
                                        <asp:TextBox ID="txtbuscar" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Rut "></asp:TextBox>
                                        <asp:Label ID="Label1" Class="lblrut" runat="server" Text="Ejemplo: 11111111-1"></asp:Label>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="btnaccion">
                                        <div>
                                            <asp:Button ID="btnbuscar" runat="server" Text="Buscar" class="btn btn-outline-warning" OnClick="btnbuscar_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!--div para nombre y apelliso-->
                        <div class="row">
                            <div class="col">
                                <asp:Label runat="server" class="lblform">Nombre:
                                            <asp:TextBox ID="txtnombre" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Su Nombre"></asp:TextBox>
                                </asp:Label>
                            </div>
                            <div class="col">
                                <asp:Label runat="server" class="lblform">Apellido:
                                                <asp:TextBox ID="txtapellido" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Su Apellido"></asp:TextBox>
                                </asp:Label>
                            </div>
                        </div>

                        <!--div para edad-->
                        <div>
                            <asp:Label runat="server" class="lblform">Edad:
                                         <asp:TextBox ID="txtedad" type="number" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Su Edad"></asp:TextBox>
                            </asp:Label>
                        </div>

                        <div class="btn col text-center">
                            <!--label error-->
                            <div class="row w-100 align-items-center">
                                <div class="col text-center">
                                    <asp:Label ID="lblerror" Class="lblerror" runat="server"></asp:Label>
                                </div>
                            </div>

                            <div class="row w-100 align-items-center">
                                <div class="col text-center">
                                    <asp:Button ID="btnactualizar" runat="server" Text="Actualizar" class="btn btn-outline-primary" OnClick="btnactualizar_Click" />
                                </div>
                            </div>
                            <!--mensaje -->
                            <div class="row w-100 align-items-center">
                                <div class="col text-center">
                                    <asp:Label ID="mensaje" Class="lblmensaje" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </body>
    </html>
</asp:Content>
