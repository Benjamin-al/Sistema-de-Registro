<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="error404.aspx.cs" Inherits="crud.error404" %>
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
        <link href="asset/css/error404.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <section class="page_404">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="col-sm-10 col-sm-offset-1 text-center">
                            <div class="four_zero_four_bg">
                                <h1 class="text-center">404</h1>
                                <div class="contant_box_404">
                                    <h3 class="h2">! ups Parece que tenemos algunos problemas</h3>
                                    <p>Pagina no esta disponible</p>
                                    <a href="home.aspx" class="link_404">Volver Al Inico</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
    </html>
</asp:Content>
