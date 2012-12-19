<?php

class imagen
{
    function subirImagen($nombreImagen, $idusuario, $origen,$tipoimagen)
    {
        $separo = explode('/', strtolower($tipoimagen));
        $nombre = $separo[0];
        $extension = $separo[1];

        $nfinal = $idusuario . '.' . $extension;
        $destino = '../../../images/usuarios/' . $nfinal;

        if (file_exists($destino)) {
            unlink($destino);
        }
        move_uploaded_file($origen, $destino);
        
        return $destino;
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
                
            case 'jpeg':
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
        // if(file_exists($nombreFoto))
        //{
        //  unlink($nombreFoto);
        // }
        imagejpeg($thumb, $nombreFoto, 90);
        imagedestroy($imagen_src);
        unlink($imagen);
        imagedestroy($thumb);

    }

}

?>