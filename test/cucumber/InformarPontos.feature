Feature:Informar pontos a coletar
    As um coletor de res�duos
    So that eu possa saber onde ir fazer a coleta
    I want to ver e imprimir uma lista de pontos a coletar

  Scenario: Pontos dispon�veis
    Given Eu estou na p�gina de pontos a coletar
    And H� pontos com quantidade de res�duos acima do m�nimo para coleta
    Then Devo ver uma lista dos pontos de coleta por visitar, com as informa��es de contato e de quantidade por coletar deve ser mostrada

   Scenario: Nenhum ponto dispon�vel
     Given Eu estou na p�gina de pontos a coletar
     And N�o h� pontos com quantidade de res�duos acima do m�nimo para coleta
     Then Devo ver uma mensagem indicando que n�o h� pontos prontos para coleta

    Scenario: Ponto em estado cr�tico
      Given Eu estou vendo os Pontos dispon�veis
      And O ponto "Restaurante Universit�rio" est� com quantidade de res�duos pr�xima do limite m�ximo
      Then Devo ver uma mensagem indicando que h� pontos em estado cr�tico
      And O item de "Restaurante Univers�rio" da lista deve estar destacado indicando estado cr�tico

     Scenario: Imprimir Lista
      Given Eu estou vendo os Pontos dispon�veis
      And Eu Seleciono a op��o Imprimir
      Then A lista de pontos de coleta deve ser imprimida pelo computador