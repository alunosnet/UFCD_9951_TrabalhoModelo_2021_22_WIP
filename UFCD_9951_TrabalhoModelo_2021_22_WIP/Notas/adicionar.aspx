<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="UFCD_9951_TrabalhoModelo_2021_22_WIP.Notas.adicionar" %>

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
            <h1>Registar nota</h1>
            <asp:FormView ID="FormView1" DefaultMode="Insert" runat="server" DataKeyNames="nr_nota" DataSourceID="SqlNotas">
                <EditItemTemplate>
                    nr_nota:
                    <asp:Label Text='<%# Eval("nr_nota") %>' runat="server" ID="nr_notaLabel1" /><br />
                    nprocesso:
                    <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /><br />
                    codigo_disciplina:
                    <asp:TextBox Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaTextBox" /><br />
                    data_nota:
                    <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    nr_modulo:
                    <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                    nota:
                    <asp:TextBox Text='<%# Bind("nota") %>' runat="server" ID="notaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nprocesso:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlAlunos" DataTextField="nome" DataValueField="nprocesso" SelectedValue='<%# Bind("nprocesso") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [nome], [nprocesso] FROM [alunos] ORDER BY [nome]"></asp:SqlDataSource>
                    <br />
                    codigo_disciplina:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDisciplinas" DataTextField="Nome_Ano" DataValueField="codigo"></asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [codigo], concat([nome], [ano_escolaridade]) as Nome_Ano FROM [disciplinas] ORDER BY [nome]"></asp:SqlDataSource>
                    <br />
                    data_nota:
                    <asp:TextBox TextMode="Date" Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    nr_modulo:
                    <asp:TextBox TextMode="Number" Min="1" Max="20" Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                    nota:
                    <asp:TextBox TextMode="Number" Min="1" Max="20" Text='<%# Bind("nota") %>' runat="server" ID="notaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    nr_nota:
                    <asp:Label Text='<%# Eval("nr_nota") %>' runat="server" ID="nr_notaLabel" /><br />
                    nprocesso:
                    <asp:Label Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    codigo_disciplina:
                    <asp:Label Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /><br />
                    data_nota:
                    <asp:Label Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                    nr_modulo:
                    <asp:Label Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /><br />
                    nota:
                    <asp:Label Text='<%# Bind("nota") %>' runat="server" ID="notaLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO notas(nprocesso, codigo_disciplina, data_nota, nr_modulo, nota) VALUES (@nprocesso, @codigo, @data_nota, @nr_modulo, @nota)" SelectCommand="SELECT * FROM [notas]">
                <InsertParameters>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                    <asp:Parameter Name="codigo"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="data_nota"></asp:Parameter>
                    <asp:Parameter Name="nr_modulo"></asp:Parameter>
                    <asp:Parameter Name="nota"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
