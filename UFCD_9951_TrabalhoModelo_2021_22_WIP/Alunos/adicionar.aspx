﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="UFCD_9951_TrabalhoModelo_2021_22_WIP.Alunos.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/public/bootstrap.min.css" rel="stylesheet" />
    <link href="/public/estilos.css" rel="stylesheet" />
    <script src="/public/jquery-3.5.1.slim.min.js"></script>
    <script src="/public/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!--navbar-->
            <!--Menu-->
            <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
                <a class="navbar-brand" href="/index.aspx">PS - UFCD 9951</a>
                <!--Botão hamburguer-->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!--Botão hamburguer-->
                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav mr-auto">
                        <!--Alunos-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Alunos</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown01">
                                <a class="dropdown-item" href="/Alunos/adicionar.aspx">Adicionar</a>
                                <a class="dropdown-item" href="/Alunos/gerir.aspx">Gerir</a>
                                <a class="dropdown-item" href="/Alunos/pesquisar.aspx">Pesquisar</a>
                            </div>
                        </li>
                        <!--Alunos-->
                        <!--Disciplinas-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Disciplinas</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown02">
                                <a class="dropdown-item" href="/Disciplinas/adicionar.aspx">Adicionar</a>
                                <a class="dropdown-item" href="/Disciplinas/gerir.aspx">Gerir</a>
                                <a class="dropdown-item" href="/Disciplinas/pesquisar.aspx">Pesquisar</a>
                            </div>
                        </li>
                        <!--Disciplinas-->
                        <!--Notas-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Notas</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown03">
                                <a class="dropdown-item" href="/Notas/adicionar.aspx">Adicionar</a>
                                <a class="dropdown-item" href="/Notas/gerir.aspx">Gerir</a>
                                <a class="dropdown-item" href="/Notas/pesquisar.aspx">Pesquisar</a>
                            </div>
                        </li>
                        <!--Notas-->
                        <!--Estatísticas-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Estatísticas</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="/Consultas/media_aluno.aspx">Média por aluno</a>
                                <a class="dropdown-item" href="/Consultas/melhor_aluno.aspx">Melhor aluno</a>
                                <a class="dropdown-item" href="/Consultas/nr_notas_disciplina.aspx">Nr de Notas Por Disciplina</a>
                            </div>
                        </li>
                        <!--Estatísticas-->
                    </ul>
                </div>
            </nav>
            <!--Menu-->
            <h1>Adicionar Aluno</h1>
            <asp:FormView OnItemInserting="FormView1_ItemInserting" Width="100%" DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlAlunos">
                <EditItemTemplate>
                    nprocesso:
                    <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel1" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    genero:
                    <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    cp:
                    <asp:TextBox Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" /><br />
                    localidade:
                    <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                    email:
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    fotografia:
                    <asp:TextBox Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Nome:
                    <asp:TextBox CssClass="form-control" placeholder="Insere o teu nome" Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    Data Nascimento:
                    <asp:TextBox CssClass="form-control" TextMode="Date" Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    Género:
                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" SelectedValue='<%# Bind("genero") %>'>
                        <asp:ListItem Text="Masculino" Value="M" />
                        <asp:ListItem Text="Feminino" Value="F" />
                        <asp:ListItem Text="Outro" Value="O" />
                    </asp:DropDownList>
                    <br />
                    Morada:
                    <asp:TextBox CssClass="form-control" placeholder="A sua morada" Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    Código postal:
                    <asp:TextBox CssClass="form-control" placeholder="O código postal" Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" /><br />
                    Localidade:
                    <asp:TextBox CssClass="form-control" Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                    Email:
                    <asp:TextBox CssClass="form-control" TextMode="Email" Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                    <asp:LinkButton CssClass="btn btn-danger btn-lg" runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton CssClass="btn btn-info btn-lg" runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    nprocesso:
                    <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    data_nascimento:
                    <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                    genero:
                    <asp:Label Text='<%# Bind("genero") %>' runat="server" ID="generoLabel" /><br />
                    morada:
                    <asp:Label Text='<%# Bind("morada") %>' runat="server" ID="moradaLabel" /><br />
                    cp:
                    <asp:Label Text='<%# Bind("cp") %>' runat="server" ID="cpLabel" /><br />
                    localidade:
                    <asp:Label Text='<%# Bind("localidade") %>' runat="server" ID="localidadeLabel" /><br />
                    email:
                    <asp:Label Text='<%# Bind("email") %>' runat="server" ID="emailLabel" /><br />
                    fotografia:
                    <asp:Label Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO Alunos(nome,data_nascimento,genero,morada,cp,localidade,email,fotografia)
values (@nome,@data_nascimento,@genero,@morada,@cp,@localidade,@email,@fotografia)"
                SelectCommand="SELECT * FROM [alunos]">
                <InsertParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="genero"></asp:Parameter>
                    <asp:Parameter Name="morada"></asp:Parameter>
                    <asp:Parameter Name="cp"></asp:Parameter>
                    <asp:Parameter Name="localidade"></asp:Parameter>
                    <asp:Parameter Name="email"></asp:Parameter>
                    <asp:Parameter Name="fotografia"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
