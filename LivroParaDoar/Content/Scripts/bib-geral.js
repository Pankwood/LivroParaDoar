function createExternalLinks() {
	$("a[rel='externo']").attr("target","_blank");
	$("a[rel='externo']").attr("title",function () {
				this.title += " (abrirá em nova janela)";
			});
}

function cadastraMailing() {
	$("#frmMailing div[class*='alert']").remove();
	$("#frmMailing").append("<p class=\"loading\">enviando...</p>");
	$("#frmMailing .bt-mini").attr("disabled","disabled");
	$("#frmMailing .bt-mini").addClass("disabled");
	var email_mailing = $("#email_mailing").val();
	var url_post = $("#frmMailing").attr("action").replace("incluir", "incluirAjax");
	$.ajax({
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
		url : url_post,
		type: 'post',
		data: { email_mailing: email_mailing},
		success: function(data) {
	  		$("#frmMailing > p.loading").remove();
			$("#frmMailing .bt-mini").removeAttr("disabled");
			$("#frmMailing .bt-mini").removeClass("disabled");
			$("#frmMailing .bt-mini").focus();
			if (data.search(/sucesso/i) != -1)
				$("#email_mailing").val("");
			$("#frmMailing").append(data);
			//$("#frmMailing div[class*='alert']").fadeOut(200).fadeIn(200).fadeOut(200).fadeIn(200);
			setTimeout(function(){
				$("#frmMailing div[class*='alert']").remove();
			},10000);
	}});
	return false;
}

function addSubmitMailing() {
	$("#frmMailing").submit(function(){
		cadastraMailing();
		return false;
	});
}
/*
function enviaContato() {
	$("#frmContato div[class*='alert']").remove();
	$("#frmContato").append("<p class=\"loading\">enviando...</p>");
	$("#frmContato .bt-mini").attr("disabled","disabled");
	$("#frmContato .bt-mini").addClass("disabled");
	var email = $("#email").val();
	var nome = $("#nome").val();
	var mensagem = $("#mensagem").val();
	var url_post = $("#frmContato").attr("action").replace("enviar", "enviarAjax");
	$.ajax({
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
		url : url_post,
		type: 'post',
		data: { email:email, nome:nome, mensagem:mensagem },
		success: function(data) {
	  		$("#frmContato > p.loading").remove();
			$("#frmContato .bt-mini").removeAttr("disabled");
			$("#frmContato .bt-mini").removeClass("disabled");
			$("#frmContato .bt-mini").focus();
			if (data.search(/sucesso/i) != -1){
				$("#nome").val("");
				$("#email").val("");
				$("#mensagem").val("");
			}
			$("#frmContato").append(data);
			setTimeout(function(){
				$("#frmContato div[class*='alert']").remove();
			},10000);
	}});
	return false;
}
*/
function addSubmitContato() {
	$("#frmContato").submit(function(){
		enviaContato();
		return false;
	});
}

function applyCount(total) {
	var i, part, child, factor, distance,
	    count = new String(total),
	    parts = count.split("").reverse();

	if (total > 99999999) {
		tilt();
		return false;
	}

	for (i = parts.length - 1; i >= 0; i--) {
		part = parseInt(parts[i], 10);

		// get current position
		child = $('ul#digit-' + i).data('roundabout').childInFocus;
		factor = (part < child) ? (10 + part) - child : part - child;
		if(factor == 0){
			factor = 10;
		}
		distance = factor * 36;
		
		if (i) {
			$('ul#digit-' + i).roundabout('animateToDelta', -distance);
		} else {
			$('ul#digit-' + i).roundabout('animateToDelta', -distance, function() {
				$('.interact a').fadeTo(100, 1);
				clickable = true;
			});
		}
		
	}
}

function tilt() {
	for (var i = 0; i < 5; i++) {
		var amount = (Math.random()) ? 5 + (Math.random() * 20 - 10) : -5 - (Math.random() * 20 - 10);
		$('ul#digit-' + i).roundabout('animateToDelta', amount);
	}
}



	
});
