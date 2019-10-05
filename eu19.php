<?php

$months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

$res = [];
$day = 0;

function leapYear($year) {
    return ($year % 4 == 0 && $year % 100 !== 0) || $year % 400 == 0;
}

for ($year = 1900; $year < 2002; $year++)
    foreach ($months as $index => $month) {
        if ($index == 1 && leapYear($year))
            $month++;

        for ($i = 1; $i <= $month; $i++) {
            $date = sprintf('%s-%s-%s', $year, $index + 1, $i);
            $res[$date] = $day++ % 7;
        }
    } 

$res = array_filter($res, function($weekDay, $date) {
    $day = explode('-', $date)[2];
    return $date >= '1901-1-1' && $date <= '2000-12-31' && $day == 1 && $weekDay == 6; 
}, ARRAY_FILTER_USE_BOTH);

print_r(count($res));
