// JavaScript Document
$(document).ready(function() {
	 
	 // ambos procesaran en save.php
	 
	 // servira para editar los de tipo input text.
     $('.text').editable('../site/includes/src/registraNotas.php');
	 
	 // servira para editar el cuadro combinado de paises
	 $('.select').editable('../site/includes/src/registraNotas.php', { 
		 data   : " {'1':'Argentina','2':'Bolivia','3':'Peru', '4':'Chile'}",
		 type   : 'select',
		 submit : 'OK'
	 });
	 
	 // servira para editar el textarea.
	 $('.textarea').editable('../site/includes/src/registraNotas.php', { 
		 type     : 'textarea',
		 submit   : 'OK'
	 });
	 	 
 });
