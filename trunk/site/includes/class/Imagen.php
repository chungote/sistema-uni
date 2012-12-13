<?php

class imagen
{
    function subirImagen($nombreImagen,$idusuario)
    {
        $nfinal = $idusuario . $nombreImagen;
        $destino = '../../../images/usuarios/' . $nfinal;
        $origen = $_FILES['imagen']['tmp_name'];
        move_uploaded_file($origen, $destino);
    }

    function crear_thumb($imagen, $idusuario, $ext)
    {
        $separo = explode('/', strtolower($ext));
        $nombre = $separo[0];
        $extension = $separo[1];

        switch ($extension) {

            case 'gif':
                $imagen_src = imagecreatefromgif($imagen);
                break;

            case 'jpg':
                $imagen_src = imagecreatefromjpeg($imagen);
                break;

            case 'png':
                $imagen_src = imagecreatefrompng($imagen);
                break;

            default:
                trigger_error("Formato de imagen no soportada!!!" . $extension, E_USER_ERROR);

        }
        $datos = getimagesize($imagen);
        $ratio = ($datos[1] / 170);
        $anchura = round($datos[0] / $ratio);
        $thumb = imagecreatetruecolor($anchura, 170);
        imagealphablending($thumb, false);
        imagecopyresampled($thumb, $imagen_src, 0, 0, 0, 0, $anchura, 170, $datos[0], $datos[1]);
        $nombreFoto = '../../../images/usuarios/' . $idusuario . '.jpg';
        if(file_exists($nombreFoto))
        {
            unlink($nombreFoto);
        }
        imagejpeg($thumb, $nombreFoto, 90);
        imagedestroy($imagen_src);
        imagedestroy($thumb);
        
        /**
         * function created by tibiyacks
         */
    }

}

?>