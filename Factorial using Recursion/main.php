<?php

$x = 5; //Set a value.

function fact($a) {
    return $a<2?1:$a*fact($a-1);
}

echo fact($x);
?>
