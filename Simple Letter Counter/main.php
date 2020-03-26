<?php

$sentence = 'This is a sample sentence.'; //Enter a sentence in quotes (single or double).

$sentence = strtolower($sentence);
$freq = [];

for ($i=0;$i<strlen($sentence);$i++) {
    $c = $sentence[$i];
    if (array_key_exists($c,$freq))
        $freq[$c]++;
    else
        $freq[$c]=1;
}

for ($i=97;$i<123;$i++) {
    if (isset($freq[chr($i)]))
        echo chr($i).' -> '.$freq[chr($i)].'<br/>';
    else
        echo chr($i).' -> 0<br/>';
}
 
?>
