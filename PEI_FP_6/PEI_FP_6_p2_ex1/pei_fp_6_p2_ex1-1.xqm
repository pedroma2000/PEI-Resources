module namespace fp6 = 'fp6/ex1';

declare %rest:path("/sum/{$num1}/{$num2}")
        %rest:GET
        
function fp6:sum($num1, $num2){
  $num1 + $num2
};

declare %rest:path("/sumquery")
        %rest:query-param("num1", "{$num1}")
        %rest:query-param("num2", "{$num2}")

function fp6:sumQuery($num1, $num2){
  $num1 + $num2
};