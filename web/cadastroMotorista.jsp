﻿<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     
   
   <script>
     function Cadastrar() {
                     if (validarCadastroM()) {
                         document.cadMoto.acao.value = 'CADASTRAR';
                         document.cadMoto.submit();
                       }
                       }

    function verificarCadastro() {
               document.cadMoto.acao.value = 'verifica';
               document.cadMoto.submit();
                     }
    
    
    
     function validarCadastroM() {
                                        var nome = cadMoto.nome.value;
                                        var rg = cadMoto.rg.value;
                                        var cpfm = cadMoto.cpfm.value;
                                        var nascimento = cadMoto.nascimento.value;
                                        var telefone = cadMoto.telefone.value;
                                        var celular = cadMoto.celular.value;
                                        var cnh = cadMoto.cnh.value;
                                        var validadeCNH = cadMoto.validadeCNH.value;
                                        var categoria = cadMoto.categoria.value;
                                        var email = cadMoto.email.value;
                                        var emailconfirmacao = cadMoto.emailconfirmacao.value;
                                        var senha = cadMoto.senha.value;
                                        var confirmasenha = cadMoto.confirmasenha.value;
                                        var cep = cadMoto.cep.value;
                                        var endereco = cadMoto.endereco.value;
                                        var numerocasa = cadMoto.numero.value;
                                        var bairro = cadMoto.bairro.value;
                                        var cidade = cadMoto.cidade.value;
                                        var estado = cadMoto.estado.value;
                                        
                                        if (nome === "") {
                                            alert('Preencha o campo com seu nome');
                                            cadMoto.nome.focus();
                                            return false;
                                        } 
                                        if(rg === "" || rg.length < 10){
                                            alert('Preencha o campo com seu  rg');
                                            cadMoto.rg.focus();
                                            return false;
                                        }
                                         if(cpfm === "" || cpfm.length < 14){
                                            alert('Preencha o campo com seu CPF');
                                            cadMoto.cpfm.focus();
                                            return false;
                                        }
                                         if(nascimento === ""){
                                            alert('Preencha  a sua data de nascimento');
                                            cadMoto.nascimento.focus();
                                            return false;
                                        }
                                          if((telefone === "" || telefone.length < 14) && (celular === "" || celular.length < 15)){
                                            alert('Preencha o campo com seu telefone');
                                            cadMoto.telefone.focus();
                                            cadMoto.celular.focus();
                                            return false;
                                        }
                                            if(cnh === "" || cnh.length < 11){
                                            alert('Preencha   o campo com numero de registro da sua cnh');
                                            cadMoto.cnh.focus();
                                            return false;
                                        }
                                          if(validadeCNH === ""){
                                            alert('Preencha  a data de vencimento da sua cnh');
                                            cadMoto.validadeCNH.focus();
                                            return false;
                                        }
                                         if(categoria === ""){
                                            alert('Preencha a categoraia da sua cnh');
                                            cadMoto.categoria.focus();
                                            return false;
                                        }
                                            if(email === ""){
                                            alert('Preencha o campo de email');
                                            cadMoto.email.focus();
                                            return false;
                                        }
                                            if(emailconfirmacao === ""){
                                            alert('Preencha o campo de confirmação do email');
                                            cadMoto.emailconfirmacao.focus();
                                            return false;
                                        }
                                         if (email !== emailconfirmacao) {
                                            alert('Email diferentes');
                                            cadMoto.email.focus();
                                            cadMoto.emailconfirmacao.focus();
                                            return false;
                                        }
                                             if (senha === "") {
                                            alert('Preencha o campo senha');
                                            cadMoto.senha.focus();
                                            return false;
                                        }
                                        if (confirmasenha === "") {
                                            alert('Preencha o campo confirmaçao senha');
                                            cadMoto.confirmasenha.focus();
                                            return false;
                                        }
                                           if (senha !== confirmasenha) {
                                            alert('senha diferentes');
                                            cadMoto.senha.focus();
                                            cadMoto.confirmasenha.focus();
                                            return false;
                                        }
                                              if(cep === "" || cep.length < 9){
                                            alert('Preencha   o campo com seu CEP');
                                            cadMoto.cep.focus();
                                            return false;
                                        }
                                          if (endereco === "") {
                                            alert('Preencha o campo endereço');
                                            cadMoto.endereco.focus();
                                            return false;
                                        }
                                            if (numerocasa === "") {
                                            alert('Preencha o campo numero do endereço');
                                            cadMoto.numero.focus();
                                            return false;
                                        }
                                        if (bairro === "") {
                                            alert('Preencha o campo bairro');
                                            cadMoto.bairro.focus();
                                            return false;
                                        }
                                         if (cidade === "") {
                                            alert('Preencha o campo cidade');
                                            cadMoto.cidade.focus();
                                            return false;
                                        }
                                            if (estado === "") {
                                            alert('Preencha o campo estado');
                                            cadMoto.estado.focus();
                                            return false;
                                        }
                                        return true;

                                    }
    
    
    
             
                                            
    
    
    
    
    
    </script>
    
    
    
      <% String mensagem2 = (String) request.getAttribute("mensagemE");
                                              if (mensagem2 != null) {%>
                                           
                                               
                                                  <script>
                                                     
                                                     alert("<%= mensagem2 %>");
                                                       window.location="cadastroMotorista.jsp";
                                                 </script> 
                                         
                                            <% }%> 
                                            
                                                         
                                         <% String mensagem = (String) request.getAttribute("mensagem");
                                       if (mensagem != null) {%>  
                                              <script>
                                                     
                                                     alert("<%= mensagem %>");
                                                    window.location="cadastroMotorista.jsp";
                                                     
                                             </script>
                                   
                                      <% }%>
                                            
    <!-- End Google Tag Manager -->

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>

    <meta charset="utf-8">
    <title>Cadastro - Leve Fácil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="canonical" href="contato.html" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <meta name="description" content="Leve Fácil!">
    <meta name="author" content="Guilherme - Grupo 3 | Leve Fácil" />

    <link rel="shortcut icon" href="img/favicon.png" sizes="32x32 48x48 64x64 128x128" />
    <link href="css1/stack-interface.css" rel="stylesheet" type="text/css" media="all">
    <link href="css1/socicon.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/stack-interface.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/theme-cedar.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/custom.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/stylemob.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/p-m.css" rel="stylesheet" type="text/css" media="all" />

    <link rel="stylesheet" type="text/css" href="css1/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css1/demo.css" />
    <link rel="stylesheet" type="text/css" href="css1/component.css" />

   
    <link href="css1/iconsmind.css" rel="stylesheet" type="text/css" media="all" />

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:200,300,400,400i,500,600,700" rel="stylesheet">
<!--
    <style>
        a.m-pecaoseu {
            font-weight: 600 !important;
            border-bottom-color: #fff !important;
        }
    </style>

    <!-- Google Tag Manager 
    <script>(function (w, d, s, l, i) {
    w[l] = w[l] || []; w[l].push({
        'gtm.start':
        new Date().getTime(), event: 'gtm.js'
    }); var f = d.getElementsByTagName(s)[0],
    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-KB35TR2');

    
    
    
-->
</head>
<body data-smooth-scroll-offset="77">

    <!-- Google Tag Manager (noscript) -->
    <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KB35TR2"
            height="0" width="0" style="display: none; visibility: hidden"></iframe>
    </noscript>
    <!-- End Google Tag Manager (noscript) -->

    <div class="nav-container bgblackmob" style="position: fixed; width: 100%; z-index: 99;">
        <div>
            <div class="bar bar--sm visible-xs bg-transparent-mob">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3 col-sm-2">
                            <a href="index.jsp">
                                <img class="logo logo-dark" alt="Leve Fácil" title="Leve Fácil" src="images1/logo.png">
                                <img class="logo logo-light" alt="Leve Fácil" title="Leve Fácil" src="images1/logo.png">
                            </a>
                        </div>
                        <div class="col-xs-9 col-sm-10 text-right" style="z-index: 9999999999;">
                            <a href="#" class="hamburger-toggle" data-toggle-class="#menu1;hidden-xs hidden-sm" style="z-index: 9999999999;"><i class="icon icon--sm stack-interface stack-menu"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <nav id="menu1" class="bar bar-1 hidden-xs bg--dark">
                <div class="">
                    <div class="row">

                        <div class="col-md-12 col-sm-10 text-center text-center-xs text-center-sm right-ipad p-absolute">
                            <div class="bar__module">
                                <ul class="menu-horizontal menu-oficial text-left textright-ipad">
                                    <li><a href="index.jsp">HOME</a></li>
                                    <li><a href="cadastroCliente.jsp">CADASTRO CLIENTE</a></li>
                                    <li><a href="cadastroMotorista.jsp" class="active">CADASTRO MOTORISTA</a></li>
                                    <li><a href="login.jsp">ÁREA RESTRITA</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-2 hidden-xs left-ipad logo">
                            <div class="bar__module">
                                <a href="index.jsp">
                                    <img class="logo logo-dark" alt="Leve Fácil" title="Leve Fácil" src="images1/logo.png">
                                    <img class="logo logo-light" alt="Leve Fácil" title="Leve Fácil" src="images1/logo.png">
                                </a>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12 text-center text-center-xs text-center-sm">
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>


    <div class="main-container pt-90 pt-20-mob">


        <form name="cadMoto" id="cadMoto" runat="server" method="post" action="CadastroMotorista">

            <section class="switchable bg--dark pt-80 pt-0-mob bgcinzamob">
                <div class="container formularios">

                    <h2>Já possui um cadastro como Motorista?
                        <br />
                        Digite o seu cpf abaixo para confirmar</h2>

                    <h4 class="alerta" id="alerta1" runat="server"></h4>

                    <div class="col-md-12 col-xs-12 padding">

                        <div class="col-md-4 col-xs-12"></div>

                        <div class="col-md-4 col-xs-12">
                            <label>Número do CPF</label>
                            <input runat="server" type="text" id="txtcpf" name="cpf" class="inputCPF" maxlength="14" onkeydown="mascara(this,mCPF)" />
                           
                           <!-- <button ID="btnCPFok" Text="OK" class="btnCPFok" runat="server" OnClick="btnCPFok_Click">OK</button> -->
                            <button ID="btnCPFok" type="button" Text="OK" class="btnCPFok" OnClick="verificarCadastro()" value="verificar"> OK</button>
                            <div class="col-md-4 col-xs-12"></div>
                     
                        <div class="col-md-4 col-xs-12"></div>

                    </div>

                    <div class="clearfix"></div>


                </div>


                <div class="container formularios pt-80 pt-30-mob">

                    


                    <h2 class="mt-80 mt-40-mob">Ou faça agora seu cadastro</h2>

                    <h4 class="alerta" id="alerta2" runat="server"></h4>

                    <div class="col-md-12 padding">

                        <div class="col-md-6 col-xs-12 ">
                            <label class="control-label">Nome Completo</label>
                            <input runat="server" type="text" id="nome" name="nome" />
                        </div>

                        <div class="col-md-3 col-xs-12">
                            <label>Número do RG</label>
                            <input runat="server" type="text" id="rg" name="rg" maxlength="12" onkeydown="mascara(this,mRG)" />
                        </div>

                        <div class="col-md-3 col-xs-12 pr-0">
                            <label>Número do CPF</label>
                            <input runat="server" type="text" id="cpf" name="cpfm" maxlength="14" onkeydown="mascara(this, mCPF)" />
                        </div>

                        <div class="col-md-4 col-xs-12 pl-0">
                            <label>Data de Nascimento</label>
                            <input name="nascimento" ID="nascimento" runat="server" type="date" MaxLength="10" placeholder="__/__/_____" onkeypress="return NumberOnly();" onkeydown="formatar(this,'##/##/####',event)" />
                        </div>
                        <div class="col-md-4 col-xs-12">
                            <label>Telefone</label>
                            <input runat="server" type="text" id="telefone" name="telefone" maxlength="14" onkeydown="mascara(this, mTel)" />
                        </div>
                        <div class="col-md-4 col-xs-12 pr6-0">
                            <label>Celular</label>
                            <input runat="server" type="text" id="celular" name="celular" maxlength="15" onkeydown="mascara(this, mTel)" />
                        </div>
                        <div class="col-md-3 col-xs-12 pl-0">
                            <label>CNH</label>
                            <input runat="server" type="text" id="cnh" name="cnh" maxlength="11"  />
                        </div>
                       
                        <div class="col-md-3 col-xs-12">
                            <label>Data de Vencimento</label>
                            <input name="validadeCNH" ID="vencimento" runat="server" type="date" MaxLength="10" placeholder="__/__/_____" onkeypress="return NumberOnly();" onkeydown="formatar(this,'##/##/####',event)" />
                        </div>
                        <div class="col-md-3 col-xs-12 pr-0">
                            <label>Categoria</label>
                                  <select runat="server" name="categoria" id="categoria" class="selectpicker w100ppc">
                                <option value="" selected disabled>-</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                            </select>
                            
                            
                        </div>
                        <div class="col-md-6 col-xs-12 pl-0">
                            <label>E-mail</label>
                            <input runat="server" type="text" id="email" name="email" />
                        </div>
                        <div class="col-md-6 col-xs-12 pr-0">
                            <label>Confirmar E-mail</label>
                            <input runat="server" type="text" id="emailconfirmacao" name="emailconfirmacao" />
                        </div>
                        <div class="col-md-6 col-xs-12 pl-0">
                            <label>Senha</label>
                            <input type="password" name="senha" runat="server" id="fTxtSenha" textmode="Password" cssclass="mws-textinput" maxlength="50" />
                        </div>
                        <div class="col-md-6 col-xs-12 pr-0">
                            <label>Confirmar Senha</label>
                            <input name="confirmasenha" type="password"  runat="server" id="fTxtConfirmarSenha" textmode="Password" cssclass="mws-textinput" maxlength="50" />
                        </div>

                        <div class="col-md-4 col-xs-12 pl-0">
                            <label>CEP</label>
                            <input runat="server" type="text" id="cep" name="cep" maxlength="9" onkeydown="mascara(this, mCEP)" />
                        </div>
                        <div class="col-md-7 col-xs-12">
                            <label>Endereço</label>
                            <input runat="server" type="text" id="endereco" name="endereco" />
                        </div>
                        <div class="col-md-1 pl-0-mob col-xs-5 pr-0">
                            <label>Nº</label>
                            <input runat="server" type="text" id="numero" name="numero" />
                        </div>

                        <div class="col-md-3 pr-0-mob col-xs-7 pl-0">
                            <label>Complemento</label>
                            <input runat="server" type="text" id="complemento" name="complemento" />
                        </div>
                        <div class="col-md-3 col-xs-12">
                            <label>Bairro</label>
                            <input runat="server" type="text" id="bairro" name="bairro" />
                        </div>
                        <div class="col-md-3 col-xs-12">
                            <label>Cidade</label>
                            <input runat="server" type="text" id="cidade" name="cidade" />
                        </div>
                        <div class="col-md-3 col-xs-12 pr-0">
                            <label>Estado</label>
                            <select runat="server" name="estado" id="estado" class="selectpicker w100ppc">
                                <option value="" selected disabled>-</option>
                                <option value="AC">Acre</option>
                                <option value="AL">Alagoas</option>
                                <option value="AP">Amapá</option>
                                <option value="AM">Amazonas</option>
                                <option value="BA">Bahia</option>
                                <option value="CE">Ceará</option>
                                <option value="DF">Distrito Federal</option>
                                <option value="ES">Espírito Santo</option>
                                <option value="GO">Goiás</option>
                                <option value="MA">Maranhão</option>
                                <option value="MT">Mato Grosso</option>
                                <option value="MS">Mato Grosso do Sul</option>
                                <option value="MG">Minas Gerais</option>
                                <option value="PA">Pará</option>
                                <option value="PB">Paraíba</option>
                                <option value="PR">Paraná</option>
                                <option value="PE">Pernambuco</option>
                                <option value="PI">Piauí</option>
                                <option value="RJ">Rio de Janeiro</option>
                                <option value="RN">Rio Grande do Norte</option>
                                <option value="RS">Rio Grande do Sul</option>
                                <option value="RO">Rondônia</option>
                                <option value="RR">Roraima</option>
                                <option value="SC">Santa Catarina</option>
                                <option value="SP">São Paulo</option>
                                <option value="SE">Sergipe</option>
                                <option value="TO">Tocantins</option>
                            </select>
                        </div>


                        <div class="col-md-1 col-xs-12"></div>

                    </div>

                    <div class="col-md-12 padding mt-0 mb-40 col-xs-12">
                        <input runat="server" type="checkbox" id="chkTermo" style="width: 19px; height: 19px; z-index: 999;">
                        <span class="pl-15 pb-10" style="vertical-align: super;">Li e concordo com os <a href="Termo_de_uso_ELO.pdf" target="_blank">termos de uso</a>. </span>
                    </div>

                    <div class="col-md-12 col-xs-12 padding">
                        <button type="button" value="cadastrar" name="btnCadastrar" class="button btn-confirmacao" onclick="Cadastrar()" ID="btnConfirmar" >CADASTRAR</button>
                        <input type="hidden" name="acao">
                        
                    </div>
                    <div class="clearfix mt-50 mb-50"></div>

                </div>

            </section>

        </form>


        <footer class="space--sm footer-2 some-mob" style="background: #000; border-top: 1px solid #3e3e3e;">
            <div class="container">
                <div class="row mt-20">
                    <div class="col-sm-2 col-md-2 col-xs-6">
                        <a href="index.jsp">
                            <img class="logo" alt="Leve Facil" title="Leve Facil" src="images1/logo.png"></a>
                    </div>
             
                </div>

            </div>

            <hr style="border-color: #3e3e3e" />

            <p class="text-center" style="color: #999">Copyright Leve Fácil 2019. Todos os direitos reservados.</p>
    </div>
    </footer>

    </div>
    <!--
    <div id="interrogacaocartao1" onclick="fechaInfo()"><span>
        <img src="img/popup_cartao1.png"><a class='a-voltar'>X</a></span></div>
    <div id="interrogacaocartao2" onclick="fechaInfo()"><span>
        <img src="img/popup_cartao2.png"><a class='a-voltar'>X</a></span></div>
    <div id="interrogacaoiccid" onclick="fechaInfo()"><span>
        <img src="img/popup_iccid.png"><a class='a-voltar'>X</a></span></div>
-->

    <script src="js1/jquery-3.1.1.min.js"></script>
    <script src="js1/parallax.js"></script>
    <script src="js1/scripts.js"></script>
    <script src="https://www.w3schools.com/lib/w3.js"></script>
    <script>w3.includeHTML();</script>

    <script src="js1/custom-file-input.js"></script>

    <script>
        function tela1() { $('#item1').show(); $('#item2').hide(); $('#item3').hide(); $('#item4').hide(); }
        function tela2() { $('#item1').hide(); $('#item2').show(); $('#item3').hide(); $('#item4').hide(); }
        function tela3() { $('#item1').hide(); $('#item2').hide(); $('#item3').show(); $('#item4').hide(); }
        function tela4() { $('#item1').hide(); $('#item2').hide(); $('#item3').hide(); $('#item4').show(); }
    </script>
    <script src="js1/maischip.js"></script>
    <script src="js1/validacoes.js"></script>
    <script src="js1/popup-mobile.js"></script>
   

</body>

</html>

