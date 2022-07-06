<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NoHungry</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="estilotelainicialnohungry.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=ABeeZee&family=Alatsi&display=swap" rel="stylesheet">
</head>

<body>
    <header class="cabecalho">
 	<div class="logodiv">
 	 <a href="index.jsp"> <img class="logo" alt="Logo" src="images/logo.png"></a>
 	</div>
   
        <ul class="lateral">
                <li id="sobre">sobre</li>
                <li id="trabalhe">trabalhe conosco</li>
        </ul>

        <div = class="logecad">
        
          <a href="login.jsp"><button type="button" class="btl"> logar</button></a>
          <a href="registro.jsp"> <button type="button" class="btr"> Criar conta</button></a> 

        </div>
        
    </header>

    <h1 id="pecja"> <marquee scrollamount="35" scrolldelay="0">PEÇA JA O SEU!</marquee></h1>
  
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/foto1.jpeg" class="d-block w-100" alt="...">
            <h4 class="saud">Saudável</h4>
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/foto2.webp" class="d-block w-100" alt="...">
            <h5 class="massas">Massas</h5>
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/hamburguer.jpeg" class="d-block w-100" alt="...">
            <h5 class="lanche">Lanches</h5>
            <div class="carousel-caption d-none d-md-block">
          
            </div>
            
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

      <div class="icones">
        <h1>Como funciona?</h1>
        <p>É simples!</p>
          <div class="icon">
            <img src="images/touchscreen2.png" alt="celular com um dedo na tela" class="iconet">
            <h4>Faça o seu pedido</h4>
          </div>
          <div class="icon">
            <img src="images/delivery2.png" alt="entregador" class="iconet">
            <h4>Espere a sua entrega</h4>
          </div>
          <div class="icon">
            <img src="images/food2.png" alt="pedido do cliente" class="iconet">
            <h4>E se delicie!</h4>
          </div>
      </div>




      <footer class="rodape">

          <section class="redes">
            <h1 class="redestext">Redes Sociais</h1>
            
            <div class="redesociais">
              <a href="https://www.facebook.com/" target="_blank"><img src="images/faceimage2.png" class="redesocial" alt="..."></a>

              <a href="https://www.instagram.com/" target="_blank"><img src="images/instaimage2.png" class="redesocial" alt="..."></a>

              <a href="https://www.whatsapp.com/" target="_blank"><img src="images/whatsappimage2.png" class="redesocial" alt="logo do wha"></a>
          </div>
          
        </section>

        <hr>

        <p class="textorodape">   Copyright 2022 - Todos os direitos reservados ao grupo de Alunos da Estácio do projeto para a nota final na disciplina de <br> <span id="alin"><b>DESENV. WEB EM HTML5, CSS, JAVASCRIPT E PHP (ARA0062/6793671 / 2022.1) 3001 <br> </span> </b> <br>
          202109068199 - RHYANN JOSE BEZERRA DA SILVA <br>
          202108199966 - MARIA GABRIELA DAMASCENO VENTURA <br>
          202002542586 - MARLLON MAYRON FERREIRA DA SILVA <br>
         </p> 
         
      </footer>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>