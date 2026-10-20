# Problema da Mochila (Knapsack Problem)

Implementação do **Problema da Mochila 4**, desenvolvida como parte do Trabalho Prático IV da disciplina **EPD113 — Implementação Matemático-Computacional de Modelos de Pesquisa Operacional**.

## Sobre o projeto

O Problema da Mochila é um problema clássico de otimização combinatória que consiste em selecionar um subconjunto de itens, cada um com determinado peso e valor, de forma a maximizar o valor total transportado sem ultrapassar a capacidade disponível da mochila.

Neste projeto, o problema é formulado por meio de **Programação Linear Inteira Binária**

## Modelagem matemática

### Parâmetros

- `W`: capacidade máxima da mochila.
- `N`: conjunto de itens disponíveis.
- `v[i]`: valor de utilidade do item `i`.
- `w[i]`: peso do item `i`.

### Variáveis de decisão

Para cada item `i` em `N`, define-se uma variável binária `x[i]`:

- `x[i] = 1`: o item é selecionado.
- `x[i] = 0`: o item não é selecionado.

### Função objetivo

Maximizar o valor total dos itens selecionados:

**Maximizar:**

`ValorTotal = Σ v[i] * x[i]`

### Restrições

A soma dos pesos dos itens selecionados não pode ultrapassar a capacidade da mochila:

`Σ w[i] * x[i] ≤ W`

Além disso, todas as variáveis de decisão são binárias:

`x[i] ∈ {0, 1}`

## Estrutura do projeto

```text
problema-da-mochila/
├── model.mod
├── small.dat
├── big.dat
└── README.md
```

- **mochila.mod:** modelo matemático de otimização.
- **small.dat:** conjunto de dados pequeno e trivial para validação do modelo.
- **big.dat:** conjunto de dados mais complexo para testar a formulação.

## Como executar

1. Clone o repositório do projeto.
2. Garanta que tenha o GLPK intalado em seu sistema.
4. Execute o modelo utilizando uma das instâncias.
`glpsol -m model.mod -d small.dat`
`glpsol -m model.mod -d big.dat`
5. Analise a solução obtida, verificando os itens selecionados, o valor total e a capacidade utilizada.

## Tecnologias utilizadas

- **Modelagem matemática:** Programação Linear Inteira Binária.
- **Ambiente de execução:** GLPK.
- **Controle de versão:** Git e GitHub.

---

Projeto desenvolvido para fins acadêmicos e de estudo de técnicas de Pesquisa Operacional.