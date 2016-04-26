function mascara(o,f){
    v_obj=o;
    v_fun=f;
	arguments[2] ? v_foco = arguments[2] : v_foco = false
    setTimeout("execmascara()",1);
}

function execmascara() { v_obj.value=v_fun(v_obj.value,v_foco); }

function leech(v){
    v=v.replace(/o/gi,"0");
    v=v.replace(/i/gi,"1");
    v=v.replace(/z/gi,"2");
    v=v.replace(/e/gi,"3");
    v=v.replace(/a/gi,"4");
    v=v.replace(/s/gi,"5");
    v=v.replace(/t/gi,"7");
    return v;
}

function mascaraSoNumeros(v){
    return v.replace(/\D/g,"");
}

function mascaraTelefone(v){
    v=v.replace(/\D/g,"");                 //Remove tudo o que não é dígito
    v=v.replace(/^(\d\d)(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
    v=v.replace(/(\d{4})(\d)/,"$1-$2");    //Coloca hífen entre o quarto e o quinto dígitos
    return v
}

function mascaraGravacaoAlphaNumber(v){
	var vini = v;
	v = v.replace(/[^a-zA-Z0-9-/\u00E0-\u00FC ]/g, '')
    if (v!=vini){
    	v = v + "|ERRO";
    }
    return v;
}

function mascaraGravacaoAlpha(v){
	var vini = v;
	v = v.replace(/[^a-zA-Z\u00E0-\u00FC ]/g, '')
    if (v!=vini){
    	v = v + "|ERRO";
    }
    return v;
}

function mascaraCpf(v){
    v=v.replace(/\D/g,"");                    //Remove tudo o que não é dígito
    v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    v=v.replace(/(\d{3})(\d)/,"$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
                                             //de novo (para o segundo bloco de números)
    v=v.replace(/(\d{3})(\d{1,2})$/,"$1-$2"); //Coloca um hífen entre o terceiro e o quarto dígitos
    return v
}

function mascaraCep(v){
    v=v.replace(/\D/g,"");                //Remove tudo o que não é dígito
    v=v.replace(/^(\d{5})(\d)/,"$1-$2"); //Esse é tão fácil que não merece explicações
    return v
}

function mascaraCnpj(v){
	if (arguments[1]) {
		if (v.length >= 18)
			$("#" + arguments[1]).focus();
	}
    v=v.replace(/\D/g,"");                           //Remove tudo o que não é dígito
    v=v.replace(/^(\d{2})(\d)/,"$1.$2");             //Coloca ponto entre o segundo e o terceiro dígitos
    v=v.replace(/^(\d{2})\.(\d{3})(\d)/,"$1.$2.$3"); //Coloca ponto entre o quinto e o sexto dígitos
    v=v.replace(/\.(\d{3})(\d)/,".$1/$2");           //Coloca uma barra entre o oitavo e o nono dígitos
    v=v.replace(/(\d{4})(\d)/,"$1-$2");              //Coloca um hífen depois do bloco de quatro dígitos
    return v
}

function mascaraRomanos(v){
    v=v.toUpperCase();             //Maiúsculas
    v=v.replace(/[^IVXLCDM]/g,""); //Remove tudo o que não for I, V, X, L, C, D ou M
    //Essa é complicada! Copiei daqui: http://www.diveintopython.org/refactoring/refactoring.html
    while(v.replace(/^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/,"")!="")
        v=v.replace(/.$/,"");
    return v
}

function mascaraSite(v){
    //Esse sem comentarios para que você entenda sozinho ;-)
    v=v.replace(/^http(s)?:\/\/?/,"");
    dominio=v;
    caminho="";
    if(v.indexOf("/")>-1)
		dominio=v.split("/")[0];
	caminho=v.replace(/[^\/]*/,"");
    dominio=dominio.replace(/[^\w\.\+-:@]/g,"");
    caminho=caminho.replace(/[^\w\d\+-@:\?&=%\(\)\.]/g,"");
    caminho=caminho.replace(/([\?&])=/,"$1");
    if(caminho!="")dominio=dominio.replace(/\.+$/,"");
    v="http://"+dominio+caminho;
    return v;
}
function mascaraData(v){
	v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
	v=v.replace(/(\d{2})(\d)/,"$1/$2"); //Coloca barra entre o segundo e o terceiro digito
	v=v.replace(/(\d{2})(\d)/,"$1/$2"); //Coloca barra entre o quinto e o sexto digito
	return v;
}
function mascaraDataHoraSemSec(v){
	v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
	v=v.replace(/(\d{2})(\d)/,"$1/$2"); //Coloca barra entre o segundo e o terceiro digito
	v=v.replace(/(\d{2})(\d)/,"$1/$2"); //Coloca barra entre o quinto e o sexto digito
	v=v.replace(/(\d{4})(\d)/,"$1 $2"); //Coloca espaco entre data e hora
	v=v.replace(/(\s)(\d{2})(\d)/,"$1$2:$3"); //Coloca : entre hora e minuto
	return v;
}
function mascaraHora(v){
	v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
	v=v.replace(/(\d{2})(\d)/,"$1:$2"); //Coloca barra entre o segundo e o terceiro digito
	return v;
}
function mascaraValor(v){
	v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
	v=v.replace(/(\d)(\d{2})$/,"$1,$2"); //Coloca ponto antes dos 2 últimos digitos
	return v;
}
function mascaraCodigo(v){
    return v.replace(/[^\d\w]/g,"");
}
function excluir(tipoItem) {
	return confirm("Deseja realmente excluir este item '" + tipoItem + "'? Esta é uma operação irreversível.");
}