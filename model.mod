# Problema da mochila - Modelo

# Capacidade da mochila em peso
param W >= 0;

# Conjunto de itens da mochila
set N;

# Valor do item
param v{i in N} >= 0;

# Peso do item 
param w{i in N} >= 0;

# Variavel de decisao - se o item vai ou nao
var x{i in N}, binary;

# Funcao objetivo - Maximizar o valor total da mochila
maximize ValorTotal:
    sum{i in N} x[i] * v[i];

# Resttricao de capacidade da mochila
s.t. MaxCapacidadeMochila:
    sum{i in N} w[i] * x[i] <= W;

solve;

# Exibição dos resultados
printf "\n--- RESULTADOS DO PROBLEMA DA MOCHILA ---\n";
printf "Valor Total Otimo = %.2f\n\n", ValorTotal;
printf "Itens na mochila:\n";

printf {i in N: x[i] > 0.5} "Item %d -> Peso %.2f | Valor %.2f\n", i, w[i], v[i];

end;
