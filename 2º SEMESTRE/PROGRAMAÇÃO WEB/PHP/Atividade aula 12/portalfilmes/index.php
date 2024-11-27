<!DOCTYPE html>
<?php require "Noticias.php";?>
<html lang="pt-br">
    <head>
        <title> Portal Filmes de terror | Home </title>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="style.css" media="screen"/>
    </head>
    <body>  
        <section class="banner">
            <h2 class="tituloPortal"> PORTAL FILMES DE TERROR</h2>
        </section>
            <div class="navMenu">
                <a href= "index.php" class="active">Home</a>
                <a href= "categoriasNoticias.php?Categoria=Destaques">Destaques</a>
                <a href= "categoriasNoticias.php?Categoria=Slasher"> Slasher </a>
                <a href= "categoriasNoticias.php?Categoria=Sobrenatural"> Sobrenatural</a>
				<a href= "categoriasNoticias.php?Categoria=Psicologico"> Psicológico</a>
                <a href= "categoriasNoticias.php?Categoria=Rock">Rock </a>
                <a href= "contato.php"> Contato</a>
                <a href= "https://www.instagram.com/izabela.cf">Sobre mim</a>
            </div>
        
        <section class="noticiaDestaque">
            <div class="imgNoticia">
                <img src="<?php echo $Noticias[1] ['Imagem'];?>">
            </div>
            <div class="textoNoticia">
                <h1><?php echo $Noticias[1] ['Titulo']; ?> </h1>
                <?php echo $Noticias[1] ['Resumo'];?>
                <p>
                    <a href="lerNoticia.php?id=<?php echo $Noticias[1]['id'];?>"> Para saber mais, acesse </a>
                </p>
            </div>
        </section>
        <section class="demaisNoticias">
            <h2><strong>CONFIRA DEMAIS NOTICIAS DO PORTAL DE FILMES DE TERROR:</h2></strong>
            <div class="demais-noticias">
                <div class="noticia">
					<p><?php echo $Noticias[2]['Categoria']; ?></p>
					<hr />
                    <h3><?php echo $Noticias[2] ['Titulo']; ?></h3>
                    <img src="<?php echo $Noticias[2] ['Imagem']; ?>" width="400px">
                    <?php echo $Noticias[2] ['Resumo'];?>
                    <a href="lerNoticia.php?id=<?php echo $Noticias[2]['id'];?>"
                    style="color:black"> Para saber mais, acesse </a>
                </div>
                <div class="noticia">
					<p><?php echo $Noticias[3]['Categoria']; ?></p>
					<hr />
                    <h3><?php echo $Noticias[3]['Titulo'];?></h3>
                    <img src="<?php	echo $Noticias[3]['Imagem']; ?>" width="400px">
                    <?php echo $Noticias[3]['Resumo'];?>
                   <a href= "lerNoticia.php?id=<?php echo $Noticias[3]['id'];?>" style="color:black"> Para saber mais, acesse </a>
                </div>
                <div class="noticia">
					<p><?php echo $Noticias[4]['Categoria']; ?></p>
					<hr />
                    <h3><?php echo $Noticias[4]['Titulo'];?></h3>
                    <img src="<?php echo $Noticias[4]['Imagem']; ?>" width="400px">
                    <?php echo $Noticias[4]['Resumo'];?>
                    <a href="lerNoticia.php?id=<?php echo $Noticias[4]['id'];?>"
                    style="color:black"> Para saber mais, acesse </a>
                </div>
            </div>
        </section>
    <footer> Izabela Cristina, FAPAM </footer>
    </body>
</html>
