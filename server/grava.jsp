<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%

  // cria as variaveis  
  // e obtem os dados digitados pelo usuario
  String vNome  = request.getParameter( "txtnome" ) ;
  String vTelefone  = request.getParameter( "txttelefone" ) ;
  String vEmail  = request.getParameter( "txtemail" ) ;
  String vPessoas  = request.getParameter( "inputPessoas" );
  String vHora  = request.getParameter( "inputHora" ) ;
  String vData  = request.getParameter( "inputData" ) ;


  //int    vIdade = Integer.parseInt(request.getParameter( "txtidade" )) ;


  // cria as variaveis para conexao com o banco de dados
  
  String driver = "net.sourceforge.jtds.jdbc.Driver" ;
  String url     = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd" ;
  String usuario = "bd" ;
  String senha   = "" ;

  // carrega o driver na mem�ria
  //
  Class.forName(driver) ;

  // cria a conexao com o banco
  //
  Connection conexao = DriverManager.getConnection(url,usuario,senha);

  // prepara o comondo para inserir 
  String sql = "INSERT INTO reserva (nome,telefone,email,quantidade,dia,hora) VALUES ('" + vNome + "','" + vTelefone + "','" + vEmail + "','" + vPessoas + "','" + vData + "','" + vHora + "')" ;

  // cria o objeto statement para executar
  // o comando do sql
  Statement stm = conexao.createStatement() ;


  // executa o comando do sql
  stm.executeUpdate(sql) ;  


%>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Primuz Burger</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/sobre.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark py-3" style="background-color: #E67E22;">
        <a class="navbar-brand ml-5" href="../index.html"><img src="../img/logo-primuz-burgers.svg" alt="Primuz Burger Logo"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mr-5">
            <li class="nav-item">
              <a class="nav-link ml-4" href="../index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link ml-4" href="../pages/cardapio.html">Cardápio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link ml-4" href="../pages/sobre.html">Sobre</a>
            </li>
            <a class="btn btn-warning ml-4" href="../pages/reserva.html" style="min-width:150px; color: white; background: #E67E22; border-color: #fff;border-radius: 30px;">Reserva</a>
          </ul>
        </div>
      </nav>

      <div class="container">
          <div class="row">
              <div class="col">
                <h1 class="text-center mt-5 mb-5 titulo">Reserva Confirmada</h1>
                <ul class="list-group">
                  <li class="list-group-item">Nome: <% out.print(vNome); %></li>
                  <li class="list-group-item">Telefone: <% out.print(vTelefone); %></li>
                  <li class="list-group-item">Email: <% out.print(vEmail); %></li>
                  <li class="list-group-item">Quantidade de Pessoas: <% out.print(vPessoas); %></li>
                  <li class="list-group-item">Hora: <% out.print(vHora); %></li>
                  <li class="list-group-item">Data: <% out.print(vData); %></li>
                </ul>
                <div class="text-center">
                  <a href="../index.html" class="btn btn-primary my-1 mt-3" style="background: #E67E22; border-color: #E67E22;">Voltar</a>
                </div>
              </div>
          </div>
      </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>



