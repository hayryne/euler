<?php

// biggest pile of shit in this repo
// though to be fair the problem is shit too

$map = [
    ['', 'ten', ''],
    ['one', 'eleven', ''],
    ['two', 'twelve', 'twenty'],
    ['three', 'thirteen', 'thirty'],
    ['four', 'fourteen', 'forty'],
    ['five', 'fifteen', 'fifty'],
    ['six', 'sixteen', 'sixty'],
    ['seven', 'seventeen', 'seventy'],
    ['eight', 'eighteen', 'eighty'],
    ['nine', 'nineteen', 'ninety'],
];

$numbers = [];

for ($i = 1; $i < 1000; $i++)
    $numbers[] = $i;

$written = array_map(function($number) {
    return writeOut($number);
}, $numbers);

// lmao
$written[] = 'one thousand'; 

function writeOut($number) {
    global $map;

    $str = strval($number);
    $len = strlen($str);

    $written = '';

    for ($i = 0; $i < $len; $i++) {
        $currentChar = $str[$len-$i-1];
        $currentRow = $map[$currentChar];

        if ($i == 1) {
            $nextChar = $str[$len-$i];

            if ($currentChar == 1) {
                $nextRow = $map[$str[$len-$i]];
                $written = $nextRow[$currentChar];
            } else {
                $separator = $nextChar && $currentRow[2] ? '-' : '';
                $written = $currentRow[2] . $separator . $written;
            }
        } else {
            $x = $i == 2 ? ' hundred' : '';
            $x = $written ? $x . ' and ' : $x;

            $written = $map[$str[$len-1-$i]][0] . $x . $written;
        }
    }

    return $written;
}

function trimmedLength($x) {
    $length = 0;

    for ($i = 0; $i < strlen($x); $i++) {
        $length += $x[$i] != ' ' && $x[$i] != '-' ? 1 : 0;
    }

    return $length;
}

$totalLength = array_reduce($written, function($acc, $x) {
    return $acc + trimmedLength($x);
});

print($totalLength);