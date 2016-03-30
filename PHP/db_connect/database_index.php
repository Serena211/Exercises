<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <title>Forth Assignment-Indexer3!</title>
</head>

<body>
    <h1>Indexer: </h1>
<?php
    include ("./databaseClassMySQLi.php");
    $db = new database();
    $db->connect();
    
	echo "\t"."<form action=\"database_index.php\" method=\"GET\">"."<br/>"."\n";
    echo "\t\t"."<input type=\"text\" name=\"path\" />"."<br/>"."\n";
    echo "\t\t"."<input type=\"submit\" value=\"Submit\">"."<br/>"."\n";
    echo "\t"."</form>"."<br/>"."\n";

    if (isset($_GET["path"])) {
    $path = $_GET["path"];
    $path = str_replace("\\","/",$path);
    if (is_dir($path)) {
        if (substr($path, -1) != "/")
            $path .= "/";
        getDirContent($path); 
    } 
        else {
        $pathInfo=pathinfo($path);
        if (isset($pathInfo["extension"]) && ($pathInfo["extension"] == "html" ||   $pathInfo["extension"] == "htm"))
            displayFile($path);
        }
    }
    
    
function getDirContent($path) {
    //$currDir = getcwd();
    //chdir($path);
    $folder = opendir($path);
    while (($file = readdir($folder)) !== false) {
        if ($file == "." || $file == "..")
            continue;
        elseif (is_dir($path.$file))
            getDirContent($path.$file."/");
        else {
            $pathInfo=pathinfo($path.$file);
            if (isset($pathInfo["extension"]) && ($pathInfo["extension"] == "html" || $pathInfo["extension"] == "htm"))
                displayFile($path.$file);
        }
    }
    closedir($folder);
    //chdir($currDir);
}

function displayFile($path){
    global $db;
    //save url & name
    $pathInfo = pathinfo($path);
    $file_name = $pathInfo["filename"];
    
    echo "\t<p>File: \"".$path."\"</p>\n";
    
    $fileId = addToFiles($path, $file_name);
    if ($fileId === false)
        echo "\t<p>This file was indexed before.</p>\n";
    else
        echo "\t<p>Index file successfully!</p>\n";
    
    $metaTags = get_meta_tags($path);
    echo "\t<p><b>Meta Information: </b></p>\n";
    foreach ($metaTags as $name => $value) {
        echo "\t<p>".$name." => ".$value."</p>";
        if ($fileId !== false) {
            $query = "INSERT INTO Meta_info (id_file, type, content) ".
                     "VALUES (".$fileId.", '".$name."', '".$value."')";
            $db->send_sql($query);
        }
    }
    echo "\t<p><b>Index Information: </b></p>\n";
    
    if (!isset($myfile)){
        $myfile =
            fopen("$path","r")
            or die("Unable to open file!");
        $getFile = "";
        while(!feof($myfile)) {
            $getFile .= fread($myfile,10000);
        }
        fclose($myfile); 
    }

    //handle the file
        $stripTxt = strip_tags($getFile);
        $lowerCase = strtolower($stripTxt);
        $search= array("'s","\xB0");
        $noSpecialChr = str_replace($search, " ", $lowerCase);
        $arr = superExplode($noSpecialChr," @^*~\t\n,.()'!?/\";\:{}%");

    //sorting
    if (!isset($sortArr)){
        $sortArr=array_count_values($arr);
        ksort($sortArr);
        foreach ($sortArr as $key=>$elem) {
            echo "\t\t"."$key=>$elem "."<br/>"."\n";
            if ($fileId !== false) {
                $query = "SELECT id_word FROM Words WHERE word = '".$key."'";
                $db->send_sql($query);
                $row = $db->next_row();
                $wordId = "";
                if ($row !== null)
                    $wordId = $row["id_word"];
                else {
                    $query = "INSERT INTO Words (word) VALUES ('".$key."')";
                    $db->send_sql($query);
                    $wordId = $db->insert_id();
                }
                $query = "INSERT INTO File_word (id_file, id_word, count)".
                         "VALUES (".$fileId.", ".$wordId.", ".$elem.")";
                $db->send_sql($query);
            }
        }
    }

}

//add url & name to table Files
function addToFiles($url,$file_name){
    global $db;
    $query = "SELECT name FROM Files WHERE url = '".$url."'";
    $db->send_sql($query);
    $row = $db->next_row();
    if ($row === null) {
        $query = "INSERT INTO Files (name, url) VALUES ('".$file_name."', '".$url."')";
        $db->send_sql($query);
        return $db->insert_id();
    } else
        return false;
}

//the method to tokenize
function superExplode($str,$sep){
    $i = 0;
    $arr[$i++] = strtok($str, $sep);
    while ($token = strtok($sep))
        $arr[$i++] = $token;
    return $arr;
}


?>
    
</body>

</html>