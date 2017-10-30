
**ULA de 32 bits**

O problema baseia-se na implementação, usando a linguagem VHDL, de uma
ULA(Unidade Lógica e Aritmética) capaz de receber duas entradas de 32 bits (cujos valores
binários​ ​ estão​ ​ representados​ ​ em​ ​ complemento​ ​ de​ ​ 2)​ ​ e ​ ​ realizar​ ​ as​ ​ seguintes​ ​ instruções:
- Soma​ ​ ( ​ ​ saída​ ​ = ​ ​ entrada1​ ​ + ​ ​ entrada2​ ​ );
- Subtração​ ​ ( ​ ​ saída​ ​ = ​ ​ entrada1​ ​ - ​ ​ entrada2​ ​ );
- AND​ ​ ( ​ ​ saída​ ​ = ​ ​ entrada1​ ​ AND​ ​ entrada2);
- OR​ ​ ( ​ ​ saída​ ​ = ​ ​ entrada1​ ​ OR​ ​ entrada2);
- SLT​ ​ ( ​ ​ SE​ ​ entrada1​ ​ < ​ ​ entrada2​ ​ ENTÃO​ ​ saída​ ​ = ​ ​ 1;​ ​ SENÃO​ ​ saída​ ​ = ​ ​ 0 ​ ​ ).
A ULA tem como interface, duas entradas de dados de 32 bits(entrada 1 e entrada2),
uma saída de resultado de 32 bits(saída) e uma entrada de controle de 3 bits que define a
operação​ ​ a ​ ​ ser​ ​ realizada.

Para​ ​ as​ ​ operações​ ​ foram​ ​ escolhidas​ ​ as​ ​ seguintes​ ​ entradas​ ​ de​ ​ controle:
- 000​ ​ = ​ ​ Soma;
- 001​ ​ = ​ ​ Subtração;
- 010​ ​ = ​ ​ AND;
- 011​ ​ = ​ ​ OR;
- 100​ ​ = ​ ​ SLT;
- 101,​ ​ 110​ ​ e ​ ​ 111​ ​ = ​ ​ Foi​ ​ convencionado​ ​ fazer​ ​ a ​ ​ soma.

Existem 2 portas acrescentadas, slt1 e slt2, feitas somente para teste de saída sem o
complemento de 2 na operação slt, elas não influenciam a lógica proposta pelo problema
inicial, exceto no teste do slt para a verificação correta de qual número é menor ou maior,
posteriormente​ ​ a ​ ​ isto,​ ​ funciona​ ​ apenas​ ​ para​ ​ exibição.

A conclusão foi feita a partir das simulações de cada uma das operações do código
VHDL implementado, usando o programa ModelSim, simulando no Wave e imprimindo o
circuito​ ​ em​ ​ Dataflow.
