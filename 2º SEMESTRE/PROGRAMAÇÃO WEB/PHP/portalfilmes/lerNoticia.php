<!DOCTYPE html>
<html lang="pt-br">
    <head>
		<?php
			require "Noticias.php";
			if (isset($_GET['id'])) {
				$id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
			} else {
				$id=1;
			}
				
		?>
        <title> Portal de filmes de terror | Home </title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen"/>
    </head>
    <body>
        <section class="banner">
            <h2 class="tituloPortal"> PORTAL DE FILMES DE TERROR | Home </h2>
        </section>
        <div class="navMenu">
                <a href= "index.php" class="active">Home</a>
                <a href= "categoriasNoticias.php?Categoria=Destaques">Destaques</a>
                <a href= "categoriasNoticias.php?Categoria=Games"> Games </a>
                <a href= "categoriasNoticias.php?Categoria=EstranhoIncomum"> Estranho e Incomum</a>
                <a href= "categoriasNoticias.php?Categoria=Rock">Rock </a>
                <a href= "contato.php"> Contato</a>
                <a href= "https://www.instagram.com/izabela.cf">Sobre mim</a>
            </div>

       <section class="lerNoticia">
        <div style="text-align: center;">
            <img src="<?php echo $Noticias[$id]['Imagem']; ?>" width="1000px" alt="Foto dos personagens">
        </div>
        <div class="textoLN">
            <h2><?php echo $Noticias[$id]['Titulo'];?></h2>
            <div><?php echo $Noticias[$id]['Texto']; ?></div>
        </div>
    </section>
        <footer>
            Izabela Cristina, FAPAM.
        </footer>
    </body>
</html>