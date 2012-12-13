function xmlhttp(){
		var xmlhttp;
		try{xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");}
		catch(e){
			try{xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");}
			catch(e){
				try{xmlhttp = new XMLHttpRequest();}
				catch(e){
					xmlhttp = false;
				}
			}
		}
		if (!xmlhttp) 
				return null;
			else
				return xmlhttp;
	}

function cargaformTabla(){
		var query = document.getElementById('ciclo').value;
		var A = document.getElementById('resultados');
		var B = document.getElementById('loading');
		var ajax = xmlhttp();

		ajax.onreadystatechange=function(){
				if(ajax.readyState==1){
						B.innerHTML = "<img src='../IMAGES/loading.gif' alg='Loading...'>";
					}

			}
		ajax.open("GET","cursoListarxciclo?ciclo="+encodeURIComponent(query),true);
		ajax.send(null);
	}
    
    
 function enviarform(x){
    
if(x=="1")
    {
    var accion = "registraMatricula.php";
		window.document.formMatricula.action = accion;
        window.document.formMatricula.target="_self";
		self.document.formMatricula.submit();
    }

if(x=="2")
    {
    var accion = "zeatok.php";
		window.document.form3.action = accion;
        window.document.form3.target="_self";
		self.document.form3.submit();
    }
}