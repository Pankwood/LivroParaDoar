x'<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" EnableEventValidation="false"
    Inherits="LivroParaDoar.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="https://www.facebook.com/2008/fbml"
xml:lang="pt-br" lang="pt-br">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Livro Para Doar | Pratique o desapego e ajude o desenvolvimento da nossa cultura
    </title>
    <meta name="description" content="Liberte um livro! Pratique o desapego e ajude o desenvolvimento da nossa cultura." />
    <meta name="viewport" content="width=device-width" />
    <meta name="author" content="Danilo Debiazi Vicente" />
    <meta name="keywords" content="livro, leitura, ong, gratis, doação, doacao, doar, ler, coruja, doar livro, melhor livro, A Esperança - Jogos Vorazes, Harry Potter e a Pedra Filosofal, Game of Thrones" />
    <meta name="robots" content="all" />
    <link rel="shortcut icon" href="Content/Imagens/favicon.ico" />
    <link href="Content/Estilos/fonts.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="Content/Estilos/client.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" async="" src="Content/Scripts/analytics.js"></script>
    <script type="text/javascript" id="facebook-jssdk" src="Content/Scripts/all.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery.knob.js"></script>
    <script type="text/javascript" src="Content/Scripts/mascaras.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery.fancybox.js"></script>
    <script type="text/javascript" src="Content/Scripts/bib-geral.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery.jplayer.min.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery.roundabout.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery.roundabout.shapes.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="Content/Scripts/maps.js"></script>
    <script type="text/javascript" src="Content/Scripts/jquery-ui-1-10-3-custom\js\jquery-ui-1.10.3.custom.min.js"></script>
    <link href="Content/Estilos/jquery.fancybox.css" rel="stylesheet" type="text/css"
        media="screen" />
    <script type="text/javascript">
var markers = [
<asp:Repeater ID="rptMarkers" runat="server">
<ItemTemplate>
            {
            "title": '<%# Eval("Name") %>',
            "lat": '<%# Eval("Latitude") %>',
            "lng": '<%# Eval("Longitude") %>',
            "description": '<%# Eval("Description") %>'
        }
</ItemTemplate>
<SeparatorTemplate>
    ,
</SeparatorTemplate>
</asp:Repeater>
];
    </script>
    <script type="text/javascript">
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 3,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("mapa"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title,
                    icon: 'Content/Imagens/favicon.ico'
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB4vo0jjxJOtlkleM7qy_GA21BSADcoF2I&sensor=false"></script>
</head>
<body id="b_geral" class="pt">
    <form id="form1" runat="server">
    <div class="mestre">
        <div class="bloco" id="inicio">
            <div class="contentFixoCenter">
                <div class="topo">
                    <ul class="menu claro">
                        <li><a href="#campanha">A Campanha</a></li>
                        <li>•</li>
                        <li><a href="#meditometro">Como Funciona</a></li>
                        <li>•</li>
                        <li><a href="#aprendaameditar">Liberte um Livro</a></li>
                        <li>•</li>
                        <li><a href="#medite">Libertos</a></li>
                        <li>•</li>
                        <li><a href="#contato">Contato</a></li>
                    </ul>
                    <!--  <div class="lang">
                        <ul>
                            <li><a href="http://www.eumedito.org/pt/" title="Português" class="pt">Português</a></li>
                            <li><a href="http://www.eumedito.org/es/" title="Español" class="es">Español</a></li>
                            <li><a href="http://www.eumedito.org/it/" title="Italiano" class="it">Italiano</a></li>
                        </ul>
                    </div>-->
                    <ul class="compartilhar">
                        <li><a href="https://www.facebook.com/pages/Livro-Para-Doar/534312819994421" class="bt facebook-p"
                            rel="externo" title="Livro Para Doar no Facebook (abrirá em nova janela)" target="_blank">
                            Compartilhar pelo Facebook</a></li>
                    </ul>
                </div>
                <div class="intro">
                    <h2 class="tit-quando-voce-medita">
                        Livro para doar.</h2>
                    <img src="Content/Imagens/balao-eu-medito-pt.png" alt="Livro Para Doar" class="balao-eu-medito">
                    <p>
                        <br />
                        <strong>Liberte seus livros!</strong><br>
                        Pratique o desapego e ajude o desenvolvimento<br />
                        da nossa cultura.<br />
                        <a class="bt-saiba-mais saiba-mais" href="#campanha"><strong>» SAIBA MAIS</strong></a>
                    </p>
                </div>

                <div class="contador">
                    <h3 class="contador-de-energias">
                        Medidômetro</h3>
                    <h4>
                        <strong>TOTAL</strong> de livros libertos:</h4>
                    <div class="contador-tempo">
                        <asp:Label ID="lblCont1" runat="server"></asp:Label>
                        <span>livros</span>
                    </div>
                </div>
                <a class="seta" href="#campanha">Campanha</a>
            </div>
        </div>
        <div class="bloco" id="campanha">
            <div class="contentFixoCenter">
                <div class="logo-p">
                    <img src="Content/Imagens/logo-p-pt.png">
                </div>
                <div class="topo">
                    <ul class="menu escuro">
                        <li><a href="#campanha">A Campanha</a></li>
                        <li>•</li>
                        <li><a href="#meditometro">Como Funciona</a></li>
                        <li>•</li>
                        <li><a href="#aprendaameditar">Liberte um Livro</a></li>
                        <li>•</li>
                        <li><a href="#medite">Libertos</a></li>
                        <li>•</li>
                        <li><a href="#contato">Contato</a></li>
                    </ul>
 
                    <ul class="compartilhar">
                        <li><a href="https://www.facebook.com/pages/Livro-Para-Doar/534312819994421" class="bt facebook-p"
                            rel="externo" title="Livro Para Doar no Facebook (abrirá em nova janela)" target="_blank">
                            Compartilhar pelo Facebook</a></li>
                    </ul>
                </div>
                <div class="conteudo">
                    <h3 class="tit-a-campanha">
                        A Campanha</h3>
                    <p>
                        O Livro Para Doar é uma iniciativa que visa libertar os livros que estão presos na sua estante,
                        também queremos difundir o hábito da leitura e formar
                        novos leitores, estimular a troca gratuita e o desapego de livros, revistas, HQs
                        e outros; dos mais variados gêneros e estilos. O participante lê o livro, fixa nosso
                        adesivo no livro e liberta a obra deixando em algum lugar público, como o banco
                        da praça, o playground do condomínio, a sala de espera de algum consultório médico,
                        ônibus ou em qualquer lugar onde ele encontre um novo leitor. No site existe um
                        mapa que mostra onde os livros são libertados, isso acontece de acordo com o Endereço 
                        escolhido na hora de libertar o livro. Quem participa da iniciativa
                        tem um sentimento de desapego tão grande que não se importa em libertar os livros
                        que não usa mais em locais públicos para que o maior número de pessoas possam ler,
                        em vez de mantê-los parados nas estantes. Dessa forma, o projeto amplia o acesso
                        à cultura e incentiva a democratização da leitura.
                    </p>
                    <p>
                        A libertação é simples. <a href="#aprendaameditar" class="saiba-mais">Vamos praticar?</a></p>
                </div>
                <div class="beneficios">
                    <h3 class="tit-beneficios">
                        Benefícios da Leitura</h3>
                    <p>
                        • Aquisição de conhecimento: ampliamos nosso conhecimento sobre assuntos específicos
                        e gerais,<br>
                        • Estímulo à brincadeira: com a leitura criamos um mundo paralelo onde somos livres
                        para sonhar e nos divertir sem nos sentirmos pressionados,<br>
                        • Estímulo à criatividade: a leitura desenvolve prazerosamente o nosso potencial
                        criativo,<br>
                        • Estabilização de estados de ansiedade<br>
                        • Desenvolvimento da capacidade de argumentar: criamos bases para fazer argumentos
                        consistentes,<br>
                        • Ampliação do vocabulário: conhecemos novas palavras e aprendemos a usá-las em
                        seus diferentes e ricos sentidos.</p>
                </div>
                <a class="seta" href="#meditometro">Medidômetro</a>
            </div>
        </div>
        <div class="bloco" id="meditometro">
            <div class="contentFixoCenter">
                <div class="logo-p">
                    <img src="Content/Imagens/logo-p-pt.png">
                </div>
                <div class="topo">
                    <ul class="menu escuro">
                        <li><a href="#campanha">A Campanha</a></li>
                        <li>•</li>
                        <li><a href="#meditometro">Como Funciona</a></li>
                        <li>•</li>
                        <li><a href="#aprendaameditar">Liberte um Livro</a></li>
                        <li>•</li>
                        <li><a href="#medite">Libertos</a></li>
                        <li>•</li>
                        <li><a href="#contato">Contato</a></li>
                    </ul>
             
                    <ul class="compartilhar">
                        <li><a href="https://www.facebook.com/pages/Livro-Para-Doar/534312819994421" class="bt facebook-p"
                            rel="externo" title="Livro Para Doar no Facebook (abrirá em nova janela)" target="_blank">
                            Compartilhar pelo Facebook</a></li>
                    </ul>
                </div>
                <div class="conteudo">
                    <div class="descapp">
                        <img src="Content/Imagens/iphone.png" class="iphone">
                        <h3 class="tit-o-aplicativo">
                            O Aplicativo</h3>
                        <p>
                            Para libertar o livro, você precisa fixar nosso <a href="Content/Imagens/MarcaPagina.jpg" title="Marca Página"
                                target="_blank">Marca Página</a> no livro que pretende libertar, depois você
                            cadastra seu Apelido, Email e Endereço, seu email servirá para participar de campanhas futuras que o Livro
                            Para Doar pretende fazer. O endereço é usado indicar onde o livro foi libertado no nosso
                            mapa. E a quantidade de livros libertos aparece no nosso medidômetro. Na contra-capa do livro
                            você também pode marcar seu nome, data e local onde deixou o livro.
                            <a href="#aprendaameditar">Que tal libertar um livro agora?</a></p>
                    </div>

                </div>
                <div class="contador">
                    <h3 class="contador-de-energias">
                        Medidômetro</h3>
                    <h4>
                        <strong>TOTAL</strong> de livros libertos:</h4>
                    <div class="contador-tempo">
                        <asp:Label ID="lblCont2" runat="server" Text="000.000 "></asp:Label>
                        <span>livros</span>
                    </div>
                </div>
                <a class="seta" href="#aprendaameditar">Aprenda a Meditar</a>
            </div>
        </div>
        <div class="bloco" id="aprendaameditar">
            <div class="contentFixoCenter">
                <div class="logo-p">
                    <img src="Content/Imagens/logo-p-pt.png">
                </div>
                <div class="topo">
                    <ul class="menu claro">
                        <li><a href="#campanha">A Campanha</a></li>
                        <li>•</li>
                        <li><a href="#meditometro">Como Funciona</a></li>
                        <li>•</li>
                        <li><a href="#aprendaameditar">Liberte um Livro</a></li>
                        <li>•</li>
                        <li><a href="#medite">Libertos</a></li>
                        <li>•</li>
                        <li><a href="#contato">Contato</a></li>
                    </ul>

                    <ul class="compartilhar">
                        <li><a href="https://www.facebook.com/pages/Livro-Para-Doar/534312819994421" class="bt facebook-p"
                            rel="externo" title="Livro Para Doar no Facebook (abrirá em nova janela)" target="_blank">
                            Compartilhar pelo Facebook</a></li>
                    </ul>
                </div>
                <div class="conteudo">
                    <h2 class="tit-353">
                        O Exercício 3-5-3</h2>
                    <br />
                    <br />
                    <form id="Form2" action="http://formmail.kinghost.net/formmail.cgi" method="post">
                    <input type="hidden" name="recipient" value="contato@livroparadoar.com.br" />
                    <input type="hidden" name="redirect" value="http://livroparadoar/MeuSite.htm" />
                    <input type="hidden" name="subject" value="Novo Livro Liberto" />
                    <table border="0" class="email">
                        <tr>
                            <td style="color: #FFFFFF">
                                <label style="width: 100%; display: block; margin: 0 auto 5px; text-align: right;
                                    font-size: 17px; vertical-align: top; padding: 3px 0 0;">
                                    Nome do Livro
                                </label>
                            </td>
                            <td>
                                <asp:TextBox name="Nome" ID="edtLivro" runat="server" Style="-webkit-border-radius: 5px;
                                    border-radius: 5px; width: 270px; height: 18px; border: 1px solid #708a91; line-height: 18px;
                                    padding: 2px 5px; -webkit-box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4);
                                    box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4); vertical-align: top;
                                    font-size: 14px; color: #8e8e8e; border: 1px solid #7DA5B0; margin: -3px 0 0 5px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF">
                                <label style="width: 100%; display: block; margin: 0 auto 5px; text-align: right;
                                    font-size: 17px; vertical-align: top; padding: 3px 0 0;">
                                    Seu Apelido
                                </label>
                            </td>
                            <td>
                                <asp:TextBox name="Nome" ID="edtNome" runat="server" Style="-webkit-border-radius: 5px;
                                    border-radius: 5px; width: 270px; height: 18px; border: 1px solid #708a91; line-height: 18px;
                                    padding: 2px 5px; -webkit-box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4);
                                    box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4); vertical-align: top;
                                    font-size: 14px; color: #8e8e8e; border: 1px solid #7DA5B0; margin: -3px 0 0 5px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF">
                                <label style="width: 100%; display: block; margin: 0 auto 5px; text-align: right;
                                    font-size: 17px; vertical-align: top; padding: 3px 0 0;">
                                    Email
                                </label>
                            </td>
                            <td>
                                <asp:TextBox name="EmailCli" ID="edtEmail" Style="-webkit-border-radius: 5px; border-radius: 5px;
                                    width: 270px; height: 18px; border: 1px solid #708a91; line-height: 18px; padding: 2px 5px;
                                    -webkit-box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4); box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4);
                                    vertical-align: top; font-size: 14px; color: #8e8e8e; border: 1px solid #7DA5B0;
                                    margin: -3px 0 0 5px;" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF">
                                <label style="width: 100%; display: block; margin: 0 auto 5px; text-align: right;
                                    font-size: 17px; vertical-align: top; padding: 3px 0 0;">
                                    Endereço
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEndereco" runat="server" Style="-webkit-border-radius: 5px; border-radius: 5px;
                                    width: 270px; height: 18px; border: 1px solid #708a91; line-height: 18px; padding: 2px 5px;
                                    -webkit-box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4); box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4);
                                    vertical-align: top; font-size: 14px; color: #8e8e8e; border: 1px solid #7DA5B0;
                                    margin: -3px 0 0 5px;" Height="5px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF">
                                <label style="width: 100%; display: block; margin: 0 auto 5px; text-align: right;
                                    font-size: 17px; vertical-align: top; padding: 3px 0 0;">
                                   <%-- Latitude--%>
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtLatitude" runat="server" Height="2px" Style="-webkit-border-radius: 5px;
                                    border-radius: 5px; width: 270px; height: 18px; border: 1px solid #708a91; line-height: 18px;
                                    padding: 2px 5px; -webkit-box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4);
                                    box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4); vertical-align: top;
                                    font-size: 14px; color: #8e8e8e; border: 1px solid #7DA5B0; margin: -3px 0 0 5px;">
                                </asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF">
                                <label style="width: 100%; display: block; margin: 0 auto 5px; text-align: right;
                                    font-size: 17px; vertical-align: top; padding: 3px 0 0;">
                                    <%--Longitude--%>
                                </label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtLongitude" runat="server" Style="-webkit-border-radius: 5px;
                                    border-radius: 5px; width: 270px; height: 18px; border: 1px solid #708a91; line-height: 18px;
                                    padding: 2px 5px; -webkit-box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4);
                                    box-shadow: inset 1px 1px 3px 1px rgba(88, 88, 88, 0.4); vertical-align: top;
                                    font-size: 14px; color: #8e8e8e; border: 1px solid #7DA5B0; margin: -3px 0 0 5px;">
                                </asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="Button1" Style="text-align: left;" class="btEnviar1" runat="server"
                                    OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
                <div class="video">
                    <h4>
                        Veja o vídeo</h4>
                    <iframe width="389" height="219" src="//www.youtube.com/embed/37Sb1bUX7es" frameborder="0"
                        allowfullscreen></iframe>
                </div>
                <a class="seta" href="#medite">Medite</a>
            </div>
        </div>
        <div class="bloco" id="medite">
            <div class="contentFixoCenter">
                <div class="logo-p">
                    <img src="Content/Imagens/logo-p-pt.png">
                </div>
                <div class="topo">
                    <ul class="menu claro">
                        <li><a href="#campanha">A Campanha</a></li>
                        <li>•</li>
                        <li><a href="#meditometro">Como Funciona</a></li>
                        <li>•</li>
                        <li><a href="#aprendaameditar">Liberte um Livro</a></li>
                        <li>•</li>
                        <li><a href="#medite">Libertos</a></li>
                        <li>•</li>
                        <li><a href="#contato">Contato</a></li>
                    </ul>
                    <ul class="compartilhar">
                        <li><a href="https://www.facebook.com/pages/Livro-Para-Doar/534312819994421" class="bt facebook-p"
                            rel="externo" title="Livro Para Doar no Facebook (abrirá em nova janela)" target="_blank">
                            Compartilhar pelo Facebook</a></li>
                    </ul>
                </div>
                <div class="conteudo">
                    <h3 class="tit-hora-de-meditar">
                        Libertos</h3>
                    <p>
                        Vamos espalhar nossos livros por todo o Brasil! Veja a lista de livros libertos
                        no mapa.</p>
                    <div class="cronometro">
                        <div id="mapa" style="width: 500px; height: 210px;">
                        </div>
                    </div>
             
                    <div id="redes-sociais">
                        <ul class="compartilhar">
                            <li><a href="https://twitter.com/intent/tweet?status=É+muito+bom+libertar+meus+livros+e+saber+que+outras+pessoas+podem+ter+acesso+a+cultura.+Liberte+você+também+-+http://www.livroparadoar.com.br/"
                                class="bt twitter" rel="nofollow" title="Compartilhar pelo Twitter">Compartilhar
                                pelo Twitter</a></li>
                            <li><a href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.livroparadoar.com.br%2F&t=É+muito+bom+libertar+meus+livros+e+saber+que+outras+pessoas+podem+ter+acesso+a+cultura.+Liberte+você+também."
                                class="bt facebook" rel="nofollow" title="Compartilhar pelo Facebook">Compartilhar
                                pelo Facebook</a></li>
                        </ul>
                        <div class="txtCompartilhe">
                            <h3>
                                COMPARTILHE</h3>
                            <p class="compartilhe">
                                Ajude-nos a disseminar essa ideia. Imagine se todos tiverem acesso a leitura e a
                                educação!</p>
                        </div>
                    </div>
                </div>
  
                <div class="contador">
                    <h3 class="contador-de-energias">
                        Medidômetro</h3>
                    <h4>
                        <strong>TOTAL</strong> de livros libertos:</h4>
                    <div class="contador-tempo">
                  
                        <asp:Label ID="lblCont3" runat="server" Text="000.000 "></asp:Label>
                        <span>livros</span>
                    </div>
                </div>
                <a class="seta" href="#contato">Contato</a>
            </div>
        </div>
        <div class="bloco" id="contato">
            <div class="contentFixoCenter">
                <div class="topo">
                    <ul class="menu claro">
                        <li><a href="#campanha">A Campanha</a></li>
                        <li>•</li>
                        <li><a href="#meditometro">Como Funciona</a></li>
                        <li>•</li>
                        <li><a href="#aprendaameditar">Liberte um Livro</a></li>
                        <li>•</li>
                        <li><a href="#medite">Libertos</a></li>
                        <li>•</li>
                        <li><a href="#contato">Contato</a></li>
                    </ul>

                    <ul class="compartilhar">
                        <li><a href="https://www.facebook.com/pages/Livro-Para-Doar/534312819994421" class="bt facebook-p"
                            rel="externo" title="Livro Para Doar no Facebook (abrirá em nova janela)" target="_blank">
                            Compartilhar pelo Facebook</a></li>
                    </ul>
                </div>
                <div class="conteudo">
                    <div class="conteudob meio">
                        <img src="Content/Imagens/balao-g-pt.png" alt="5 Minutos para mudar sua vida">
                    </div>
                    <div class="conteudob direita">
                        <div class="conteudoContato">
                            <h3 class="tit-quer-falar-conosco">
                                Quer falar conosco?</h3>
                            <p>
                                Respirar fundo e deixar a mente longe das distrações e problemas. Exercitar seu
                                mundo interior e exteriorizar as mudanças no mundo a sua volta. As mudanças existem
                                e começam dentro de nós.</p>
                            <p>
                                Se você quer saber mais sobre este projeto, compartilhar conosco sua experiência
                                com a meditação ou conversar sobre qualquer assunto relacionado aos 5 Minutos ou
                                ao Movimento Mãos Sem Fronteiras, escreva-nos utilizando o formulário abaixo. Será
                                ótimo receber seu contato.</p>
                            <form id="frmContato" action="http://formmail.kinghost.net/formmail.cgi" method="post">
                            <input type="hidden" name="recipient" value="contato@livroparadoar.com.br" />
                            <input type="hidden" name="redirect" value="http://www.livroparadoar.com.br/#contato" />
                            <input type="hidden" name="subject" value="Contato" />
                            <fieldset>
                                <label for="nome">
                                    Nome
                                    <input type="text" name="nome1" id="nome1">
                                </label>
                                <label for="email">
                                    E-mail
                                    <input type="text" name="email1" id="email1">
                                </label>
                                <label for="mensagem">
                                    Msg
                                    <textarea name="mensagem" id="mensagem"></textarea>
                                </label>
                                <button type="submit" id="btEnviarContato">
                                    Enviar</button>
                            </fieldset>
                            </form>
                        </div>

                    </div>
                </div>
                <div class="contador">
                    <h3 class="contador-de-energias">
                        Medidômetro</h3>
                    <h4>
                        <strong>TOTAL</strong> de livros libertos:</h4>
                    <div class="contador-tempo">
                        <asp:Label ID="lblCont4" runat="server" Text="000.000 "></asp:Label>
                        <span>livros</span>
                    </div>
                </div>
                <a class="seta b" href="#inicio">Voltar</a>
            </div>
        </div>
        <div id="rodape">
            <div class="contentFixoCenter">
                <dl>
                    <dt>Realização:</dt>
                    <dd>
                        <!--<a href="http://www.msfbrasil.org.br/" title="Mãos Sem Fronteiras (abrirá em nova janela)"
                            rel="externo" target="_blank">-->
                        <img src="Content/Imagens/logo-msf-pt.png"><!--</a>-->
                        <p>
                            <!-- <a href="http://www.msfbrasil.org.br/" rel="externo" target="_blank" title=" (abrirá em nova janela)">
                                </a><a href="http://www.msfbrasil.org.br/">-->
                            Para Doar<!--</a>--><br>
                            <a href="mailto:contato@livroparadoar.org.br">contato@livroparadoar.com.br</a><br>
                            (11) 96477-1444</p>
                    </dd>
                </dl>
                <dl class="apoio">
                    <dt>Apoio:</dt>
                    <dd class="apoio">
                        Apoie esta campanha.
            </div>
        </div>
        <script type="text/javascript">
            function atualizaMeditometro() {
                $.ajax("/meditometro/").done(function (data) {
                    applyCount(data);
                });

            }
            var tempo_cronometro = 300;
            var countdown;
            $(document).ready(function () {

                $("a.seta, .menu a, .saiba-mais").click(function () {
                    var ancora = $(this).attr("href");
                    $("html, body").animate({ scrollTop: $(ancora).offset().top }, 1000);
                    return false;
                });

                $(".dial").knob({
                    'displayInput': false,
                    'min': 0,
                    'max': tempo_cronometro,
                    'fgColor': "#ffcb08",
                    'bgColor': "#c7eafc",
                    'readOnly': true,
                    'thickness': .5
                });

                var tempo = new Number();
                var navegador = getInternetExplorerVersion();
                // Tempo em segundos
                tempo = tempo_cronometro;

                function startCountdown() {

                    var $m = $(".dial");
                    // Se o tempo não for zerado
                    if ((tempo - 1) >= -1) {
                        // Pega a parte inteira dos minutos
                        var min = parseInt(tempo / 60);
                        // Calcula os segundos restantes
                        var seg = tempo % 60;
                        // Formata o número menor que dez, ex: 08, 07, ...
                        if (min < 10) {
                            min = "0" + min;
                            min = min.substr(0, 2);
                        }
                        if (seg <= 9) {
                            seg = "0" + seg;
                        }
                        // Cria a variável para formatar no estilo hora/cronômetro
                        horaImprimivel = min + ':' + seg;
                        //JQuery pra setar o valor
                        $(".tempo").html(horaImprimivel);
                        $(".minutosCronometroG").html(min);
                        $(".segundosCronometroG").html(seg);
                        if (navegador == -1 || navegador > 8.0)
                            $m.val(tempo).trigger("change");
                        // diminui o tempo
                        tempo--;
                        // Define que a função será executada novamente em 1000ms = 1 segundo
                        countdown = setTimeout(startCountdown, 1000);
                        // Quando o contador chegar a zero faz esta ação
                    } else {
                        if (!$("#inputComSom").hasClass("selecionado"))
                            $("#beep").jPlayer("play");
                        else
                            $("#trilha").jPlayer("stop");
                        $.ajax("/meditou/").done(function (data) {
                            applyCount(data);
                        });
                        $("#pararCronometro").parent().hide();
                        $(".botoes .compartilhar").parent().show();
                        $("#recomecarCronometro").parent().show();
                        $(".botoes .pipe").show();
                    }
                }

                $("#iniciarCronometro, #recomecarCronometro").click(function () {
                    if ($("#inputComSom").hasClass("selecionado")) {
                        $("#trilha").jPlayer("play");
                    }
                    tempo = tempo_cronometro;
                    startCountdown();
                    $(this).parent().hide();
                    $("#pararCronometro").parent().show();
                    $("#recomecarCronometro").parent().hide();
                    $(".botoes .compartilhar").parent().hide();
                    $(".botoes .pipe").hide();
                });
                $("#pararCronometro").click(function () {
                    if ($("#inputComSom").hasClass("selecionado")) {
                        $("#trilha").jPlayer("stop");
                    }
                    clearTimeout(countdown);
                    tempo = 0;
                    $(".tempo").html("00:00");
                    $(".minutosCronometroG").html('00');
                    $(".segundosCronometroG").html('00');
                    $(".dial").val(0).trigger("change");
                    $(this).parent().hide();
                    $("#iniciarCronometro").parent().show();
                });

                $("#inputComSom").click(function () {
                    if ($(this).hasClass("selecionado"))
                        $(this).removeClass("selecionado");
                    else
                        $(this).addClass("selecionado");
                });

                $(".veja-o-video").fancybox({
                    'titleShow': false,
                    'transitionIn': 'elastic',
                    'transitionOut': 'elastic',
                    'hideOnContentClick': false,
                    'zoomOpacity': true,
                    'zoomSpeedIn': 500,
                    'zoomSpeedOut': 500,
                    'padding': 15,
                    'autoDimensions': true,
                    'centerOnScroll': true,
                    'overlayShow': true,
                    'overlayColor': "#FFFFFF",
                    'onClosed': function () {
                        $.fancybox.hideActivity();
                    }
                });


                $(".compartilhar a.twitter, .compartilhar a.facebook, a.compartilhar").click(function () {
                    window.open($(this).attr("href"), '', 'width=800,height=600');
                    return false;
                });

                function openWin(url) {
                    myWindow = window.open('', '', 'width=200,height=100');
                    myWindow.document.write("<p>This is 'myWindow'</p>");
                    myWindow.focus();
                }

                function getInternetExplorerVersion() {
                    var rv = -1; 
                    if (navigator.appName == 'Microsoft Internet Explorer') {
                        var ua = navigator.userAgent;
                        var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
                        if (re.exec(ua) != null)
                            rv = parseFloat(RegExp.$1);
                    }
                    return rv;
                }
                $("#beep").jPlayer({
                    ready: function (event) {
                        $(this).jPlayer("setMedia", {
                            mp3: "http://www.eumedito.org/mp3/bell-polvo.mp3"
                        });
                    },
                    swfPath: "http://www.eumedito.org/js/jplayer"
                });
                $("#trilha").jPlayer({
                    ready: function (event) {
                        $(this).jPlayer("setMedia", {
                            mp3: "http://www.eumedito.org/mp3/meditacao.mp3"
                        });
                    },
                    swfPath: "http://www.eumedito.org/js/jplayer"
                });


                atualizaMeditometro();
                setInterval(function () {
                    atualizaMeditometro();
                }, 30000);
            });


            function Button1_onclick() {

            }

        </script>
    </div>
    <div id="fancybox-tmp">
    </div>
    <div id="fancybox-loading">
        <div>
        </div>
    </div>
    <div id="fancybox-overlay">
    </div>
    <div id="fancybox-wrap">
        <div id="fancybox-outer">
            <div class="fancy-bg" id="fancy-bg-n">
            </div>
            <div class="fancy-bg" id="fancy-bg-ne">
            </div>
            <div class="fancy-bg" id="fancy-bg-e">
            </div>
            <div class="fancy-bg" id="fancy-bg-se">
            </div>
            <div class="fancy-bg" id="fancy-bg-s">
            </div>
            <div class="fancy-bg" id="fancy-bg-sw">
            </div>
            <div class="fancy-bg" id="fancy-bg-w">
            </div>
            <div class="fancy-bg" id="fancy-bg-nw">
            </div>
            <div id="fancybox-inner">
            </div>
            <a id="fancybox-close"></a><a href="javascript:;" id="fancybox-left"><span class="fancy-ico"
                id="fancybox-left-ico"></span></a><a href="javascript:;" id="fancybox-right"><span
                    class="fancy-ico" id="fancybox-right-ico"></span></a>
        </div>
    </div>
    </form>
</body>
</html>
