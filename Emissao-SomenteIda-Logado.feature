#language: pt

@api @emissao @all @logado
Funcionalidade: Emissao G3
  Como cliente da gol com login
  Quero fazer uma emissão somente ida
  Para validar as funcionalidades referentes a ela

  @REGOL-T5328 @testando
  Cenário: Emissao G3 - Efetuar emissão Somente Ida sem bagagem e sem assento confirmado - Tarifa Promo (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PO        |             | GRU    | SDU     | 92      |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5329 @passed
  Cenário: Emissao G3 - Efetuar emissão Somente Ida sem bagagem e sem assento confirmado - Tarifa Light (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | CGH    | SDU     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5338
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  1 bagagem e sem assento confirmado - Tarifa Promo  (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PO        |             | GRU    | BSB     | 92      |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 1          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5339
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  1 bagagem e sem assento confirmado - Tarifa Light  (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | SDU     | 2       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 1          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5341
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  1 bagagem e sem assento confirmado - Tarifa Plus  (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PL        |             | GRU    | POA     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 1          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5343
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida 2 bagagens e sem assento confirmado - Tarifa Promo (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PO        |             | GRU    | BSB     | 92      |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5344
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida 2 bagagens e sem assento confirmado - Tarifa Light (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | SDU     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5345
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida 2 bagagens e sem assento confirmado - Tarifa Max (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | POA     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5346
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida 2 bagagens e sem assento confirmado - Tarifa Plus (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PL        |             | GRU    | POA     | 4       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5347
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida 2 bagagens e sem assento confirmado - Tarifa Premium Economy (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo       | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PE        |             | GRU    | AEP     | 5       |           | internacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5348
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  5 bagagens e sem assento confirmado - Tarifa Promo (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PO        |             | GRU    | BSB     | 92      |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 5          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5349
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  5 bagagens e sem assento confirmado - Tarifa Light (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | SDU     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 5          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5350
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  5 bagagens e sem assento confirmado - Tarifa Max (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | POA     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 5          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5351
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  5 bagagens e sem assento confirmado - Tarifa Plus (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PL        |             | GRU    | POA     | 4       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 5          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5352
  Cenário: Emissao G3 - Efetuar emissão Somente  Ida  5 bagagens e sem assento confirmado - Tarifa Premium Economy (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo       | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PE        |             | GRU    | AEP     | 2       |           | internacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 5          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5383
  Cenário: Emissao G3 - Efetuar emissão Somente Ida sem bagagem com assento confirmado - Tarifa Promo (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | PO        |             | GRU    | BSB     | 92      |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E marco assento
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @REGOL-T5384
  Cenário: Emissao G3 - Efetuar emissão Somente Ida sem bagagem com assento confirmado - Tarifa Light (logado)
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | SDU     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passageiros
    E fazer login do usuario
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E marco assento
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  
# novos cenários qmiddle
  @teste1 @middle @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e sem assento com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2     +99999988888888888888888+98     | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste2 @middle @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e sem assento  com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e sem assento  com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e sem assento  com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @test6 @middle @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e sem assento  com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste7 @middle @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e sem assento com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste8 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e sem assento com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste9 @middle @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e sem assento  com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

 # assento gol comum

  @teste17 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento comum com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste18 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento comum com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste19 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento comum com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste20 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento comum com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste21 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento comum com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste22 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento comum com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste23 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento comum com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste24 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento comum com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

# gol conforto

  @teste25 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste26 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste27 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento conforto com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste28 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento conforto com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste29 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste30 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste31 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento conforto com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste32 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento conforto com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

  #gol conforto emergencial


  @teste33 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento emerg com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste34 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento emerg com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste35 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento emerg com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste36 @middle @assento @cpf @erro
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento emerg com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste37 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento emerg com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste38 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento emerg com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste39 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento emerg com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste40 @middle @assento @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento emerg com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


    #informar dados do passageiro com Rg sem assento

  @teste1 @middle @rg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e sem assento com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste2 @middle @rg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e sem assento  com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @rg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e sem assento  com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @rg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e sem assento  com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @test6 @middle @rg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e sem assento  com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste7 @middle @rg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e sem assento com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste8 @middle @rg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e sem assento com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste9 @middle @rg9
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e sem assento  com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

# emissao com RG e assento comum

  @teste17 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento comum com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste18 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento comum com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 5       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste19 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento comum com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste20 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento comum com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste21 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento comum com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste22 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento comum com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste23 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento comum com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste24 @middle @assentoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento comum com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    # emissao com RG e assento conforto

  @teste25 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento conforto com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste26 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste27 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste28 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste29 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento conforto com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste30 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento conforto com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste31 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste32 @middle @assentoRGConfort
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    # tarifa garantida

  @teste1 @middle @tarifaGarantida @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e sem assento com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantida @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e sem assento  com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantida @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e sem assento  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantida @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e sem assento  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    #tarifaGarantida + normal

  @teste1 @middle @tarifaGarantidaComum @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento comum com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaComum @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento comum com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaComum @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento comum  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaComum @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento comum  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

        #tarifaGarantida + conforto

  @teste1 @middle @tarifaGarantidaConforto @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 3       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaConforto @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 4       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaConforto @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaConforto @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de CPF e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    #tarifaGarantida + emerg

  @teste1 @middle @tarifaGarantidaEmerg @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaEmerg @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de CPF e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaEmerg @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaEmerg @cpf
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento cpf
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    # tarifa garantida + rg

  @teste1 @middle @tarifaGarantidaRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e sem assento com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e sem assento  com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e sem assento  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e sem assento  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

        #tarifaGarantida + normal

  @teste1 @middle @tarifaGarantidaComumRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento comum com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaComumRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento comum com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaComumRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento comum  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaComumRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento comum  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    #tarifaGarantida + conforto + rg

  @teste1 @middle @tarifaGarantidaConfortoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 3       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaConfortoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 8       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaConfortoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaConfortoRG
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    # rg + emerg

  @teste1 @middle @RgEmerg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento emerg com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | false           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @RgEmerg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento emerg  com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | false           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @RgEmerg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e sem assento  com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | false           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @RgEmerg
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento emerg  com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | false           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    # petCabine + RG

  @test6 @middle @rgPetcabine
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento emerg  com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste7 @middle @rgPetcabine
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento emerg com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste8 @middle @assento @rgPetcabine
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento emerg com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste9 @middle @rgPetcabine
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento emerg  com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"



    #  RG + emerg + tarifa garantida

  @test6 @middle @rgEmergTarifa
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento emerg  com tarifa MX e pagamento á vista no crédito e com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste7 @middle @rgEmergTarifa
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de RG e com assento emerg com tarifa MX e pagamento com dois cartão no crédito e com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste8 @middle @assento @rgEmergTarifa
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento emerg com tarifa LT e pagamento á vista no crédito e com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste9 @middle @rgEmergTarifa
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de RG e com assento emerg  com tarifa LT e pagamento com dois cartão no crédito e com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento rg
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    #passaporte
  @teste1 @middle @PassaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste2 @middle @passaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento  com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @passaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @passaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @test6 @middle @passaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento  com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste7 @middle @passaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste8 @middle @assento @passaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste9 @middle @passaporteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

     # assento gol comum

  @teste17 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste18 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste19 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste20 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste21 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste22 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste23 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste24 @middle @passaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    # gol conforto militar

  @teste25 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste26 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste27 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste28 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste29 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste30 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste31 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste32 @middle @passaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


     #gol conforto emergencial

  @teste33 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste34 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste35 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste36 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste37 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste38 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste39 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste40 @middle @passaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


       # tarifa garantida

  @teste1 @middle @passaporteTarifaGarantida @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @passaporteTarifaGarantida @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento  com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @passaporteTarifaGarantida @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @passaporteTarifaGarantida @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    #tarifaGarantida + normal

  @teste1 @middle @passaporteTarifaGarantidaComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @passaporteTarifaGarantidaComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @passaporteTarifaGarantidaComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @passaporteTarifaGarantidaComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

        #tarifaGarantida + conforto

  @teste1 @middle @passaporteTarifaGarantidaConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 3       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @passaporteTarifaGarantidaConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 4       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @passaporteTarifaGarantidaConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @passaporteTarifaGarantidaConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    #tarifaGarantida + emerg

  @teste1 @middle @passaporteTarifaGarantidaEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @passaporteTarifaGarantidaEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @passaporteTarifaGarantidaEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @passaporteTarifaGarantidaEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    #militar
  @teste1 @middle @militarSemAssento @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e sem assento com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste2 @middle @militarSemAssento @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e sem assento  com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @militarSemAssento @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e sem assento  com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @militarSemAssento @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e sem assento  com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @test6 @middle @militarSemAssento @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e sem assento  com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste7 @middle @militarSemAssento @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e sem assento com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste8 @middle @assento @militar @militarSemAssento
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e sem assento com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste9 @middle @militar @militarSemAssento
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e sem assento  com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

     # assento gol comum

  @teste17 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento comum com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste18 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento comum com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste19 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento comum com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste20 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento comum com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste21 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento comum com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste22 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento comum com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste23 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento comum com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste24 @middle @assentoComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento comum com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    # gol conforto militar

  @teste25 @middle @assentoConfortoMilitar  @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste26 @middle @assentoConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste27 @middle @assentoConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste28 @middle @assentoConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste29 @middle @assentoConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste30 @middle @assentoConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste31 @middle @assentoConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste32 @middle @assentoConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


     #gol conforto emergencial

  @teste33 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento emerg com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste34 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento emerg com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste35 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento emerg com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste36 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento emerg com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste37 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento emerg com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste38 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento emerg com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste39 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento emerg com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste40 @middle @assentoEmergencialMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento emerg com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


       # tarifa garantida

  @teste1 @middle @tarifaGarantidaMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e sem assento com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e sem assento  com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e sem assento  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e sem assento  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    #tarifaGarantida + normal

  @teste1 @middle @tarifaGarantidaComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento comum com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento comum com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento comum  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaComumMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento comum  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

        #tarifaGarantida + conforto

  @teste1 @middle @tarifaGarantidaConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 3       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 4       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaConfortoMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    #tarifaGarantida + emerg

  @teste1 @middle @tarifaGarantidaEmergMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaEmergMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de militar e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaEmergMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaEmergMilitar @militar
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de militar e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de militar
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"



        #passaporte
  @teste1 @middle @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste2 @middle @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento  com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @test6 @middle @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento  com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste7 @middle @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passageiro e sem assento com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste8 @middle @assento @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste9 @middle @passarpoteSemAssento @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

     # assento gol comum

  @teste17 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste18 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 370000000000002  | John Sabre | 2030-03    | 7373    | AX           | BRL   |
      | 6062828888666688 | John Sabre | 2030-03    | 737     | HC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste19 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste20 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste21 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste22 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 7       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste23 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste24 @middle @passarpoteComAssentoComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    # gol conforto militar

  @teste25 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste26 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste27 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste28 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste29 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste30 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste31 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste32 @middle @passarpoteComAssentoConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


     #gol conforto emergencial

  @teste33 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MAX e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste34 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MAX e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste35 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento á vista no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @teste36 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento com dois cartão no crédito
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste37 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MX e pagamento á vista no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste38 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento emerg com tarifa MX e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste39 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento á vista no crédito e  com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 1   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"


  @teste40 @middle @passarpoteComAssentoEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento emerg com tarifa LT e pagamento com dois cartão no crédito e com petCabine
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E adiciono dog cat
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


       # tarifa garantida

  @teste1 @middle @tarifaGarantidaPassaporte @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaPassaporte @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e sem assento  com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaPassaporte @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaPassaporte @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e sem assento  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

    #tarifaGarantida + normal

  @teste1 @middle @tarifaGarantidaPassaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaPassaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento comum com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaPassaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaPassaporteComum @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento comum  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | comum      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"

        #tarifaGarantida + conforto

  @teste1 @middle @tarifaGarantidaPassaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 3       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaPassaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passaporte e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 4       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaPassaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaPassaporteConforto @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | conforto   |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


    #tarifaGarantida + emerg

  @teste1 @middle @tarifaGarantidaPassaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passageiro e com assento conforto com tarifa MAX e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste2 @middle @tarifaGarantidaPassaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem sem pagar com voo nacional com conexao documento de passageiro e com assento conforto com tarifa MAX e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | MX        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"


  @teste3 @middle @tarifaGarantidaPassaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto  com tarifa LT e pagamento á vista no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista
    E valido o valor total
    Então realizo o pagamento
    E valido o retorno da api com status "200"

  @test4 @middle @tarifaGarantidaPassaporteEmerg @passaporte
  Cenario: Efetuar emissão Somente Ida com 2 bagagem pagante com voo nacional com conexao documento de passaporte e com assento conforto  com tarifa LT e pagamento com dois cartão no crédito com tarifa garantida
    Dado que conecto ao ambiente informando token x-aat válido
    Quando realizar a busca de voo informando as informações necessárias
      | ADT | CHD | INF | tarifaIda | tarifaVolta | origem | destino | dataIda | dataVolta | tipoVoo  | idaEVolta | numeroVoo | tarifaGarantida |
      | 2   | 0   | 0   | LT        |             | GRU    | BSB     | 1       |           | nacional | nao       |           | true            |
    E selecionar o voo
    E informar os dados dos passgeiros com documento de passaporte
    E mapeio assento
      | assentoIda | assentoVolta |
      | emerg      |              |
    E verifico os acessorios
    E escolho a quantidade de bagagem
      | bagagemIda | bagagemVolta |
      | 2          | 0            |
    E escolho o pagamento à vista com cartao
    E valido o valor total
    Quando realizo o pagamento com os dados de cartão
      | CARTAO           | NOME       | VENCIMENTO | COD_SEG | COD_BANDEIRA | MOEDA |
      | 4444333322221111 | John Sabre | 2030-03    | 737     | VI           | BRL   |
      | 36700102000000   | John Sabre | 2030-03    | 737     | DC           | BRL   |
    Entao valido o retorno da api com status "200"
