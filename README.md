Projeto para o desafio da HypeFlame

Framework utilizado: Robot Famework / Estrutura de organização utilizada: App Actions

Cenários testados: 
  1. Pesquisar artigos com um título válido
  2. Pesquisar artigos com combinações inválidas

Suite de teste: Diretório tests; arquivo busca.robot -> Contém os cenários de testes e as keywords para execução
  1. Detalhes das keywords: Search By; Validation Search Result By estão no arquivo keywords_busca.robot

No diretório resources, existe:
  1. Diretório actions: contém o arquivo keywords_busca.robot -> Nele estão as keywords utilizadas na suite de teste busca.robot; e também variáveis criadas 
  para o mapeamento do elemento da página. Assim, se algum elemento mudar, basta mudar o mapeamento nas respectivas variáveis
  
  2. Diretório test_data: contém 2 arquivos json; com a massa de teste utilizada na suite busca.robot
  
  3. Arquivo base.robot: arquivo base do projeto, informações como Inicialização do Browser, Libraries, Keywords e outras que podem ser reusadas em múltiplas suites estão aqui
    3.1 - Para testar os cenários web; utilizei a Library Browser, gosto de utilizá-la pois não preciso me preocupar com drivers e versões. A própria library cuida disto;
    3.2 - Para fazer a leitura dos arquivos JSONs e utilizá-los na suite de testes; usei a Library OperatingSystem
    
No diretório logs: estão os screenshots dos testes executados e as métricas: report.html é o sumário da execução; log.html mostra o step-by-step da execução e o screenshot
no final de cada teste.

Data/Hora de Entrega: 25/09/21 às 20:42


  
  
