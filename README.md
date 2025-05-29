# Template para Trabalhos Acadêmicos da UFLA 🎓
Um template em LaTex para a criação de trabalhos acadêmicos seguindo o Manual de Normalização e Estrutura de Trabalhos Acadêmicos da UFLA.
Essa é uma versão atualizada para a 6ª edição do manual (2025).  

[PDF de exemplo](https://github.com/joaopaulo7/Template-Trabalhos-Academicos-UFLA/blob/main/tempufla_main.pdf)

&nbsp;

> [!TIP]
> Embora a versão atual esteja relativamente completa, ainda podem surgir pequenos ajustes e correções.  
> Caso encontre algum problema, cheque se você seguiu as intruções corretamente e que sua versão está atualizada.  
> Caso acredite que o projeto precisa de algum ajuste, sinta-se livre para criar issues, pull requests ou contatar o autor.

## Como usar esse template no Overleaf? 🍃

Infelizmente, para um template ser adicionado ao catálogo do Overleaf, ele precisa passar por um longo processo de avaliação.  
Enquanto isso, você pode adicionar o template ao site diretamente desse repositório, seguindo esses simples passos:


### 1. Faça o download do repositório como zip, clicando em "Code" e "Download ZIP":
   
![Screenshot from 2025-05-14 09-25-42](https://github.com/user-attachments/assets/f716332a-8417-43d0-af38-f92775fff28a)

&nbsp;

### 2. Com o arquivio zip baixado, vá ao site do Overleaf, entre na sua conta e então clique em "Novo Projeto" e "Carregar Projeto":
   
![Screenshot from 2025-05-14 09-30-15](https://github.com/user-attachments/assets/f779fd40-3a35-47d3-86f1-422159b95fd5)

&nbsp;

### 3. Isso abrirá um pop-up com o título "Subir Projeto Zipado". Suba o arquivo que você baixou no passo 1, clicando no botão verde ou arrastando-o para a janela:
   
![Screenshot from 2025-05-14 09-30-29](https://github.com/user-attachments/assets/8ca4a058-561f-47d2-9b5a-6e6477920285)

&nbsp;

### 4. Pronto! O template está no seu perfil do Overleaf, pronto para ser usado.
   
![Screenshot from 2025-05-14 09-39-32](https://github.com/user-attachments/assets/c43f0f6a-dcd2-497e-8f50-c9db7c43eb06)

&nbsp;


## Pincipais Novidades 🌟

Essa versão foi baseada no [template da 3ª edição disponível no site overleaf](https://pt.overleaf.com/latex/templates/template-para-monografias-da-ufla-uflamon/pxcnmxhsvpgx).
As principais mudanças com relação à 3ª edição são:
- Adição dos indicadores de impacto em português e inglês;
- Criação do ambiente de alíneas e subalíneas;
- Adição do glossário, lista de siglas, lista de abreviações, lista de símbolos e índice;
- Diversas correções de espaçamento;
- Reescrita do documento, descrevendo melhor como usar LaTeX e o formato em si;
- Reestruturação do preâmbulo para ser mais claro;
- Correção no espaçamento do sumário e listas de figuras/tabelas (não perdem formatação em trabalhos maiores);
- Atualização do logo da UFLA;
- Atualização do código (pacotes e convenções);
- Remoção de folhas duplas nos elementos pré-textuais;
- Remoção do número de página esquerda/direita;
- Ajustes no tamanho das margens;
- Ajustes no formato dos apêndices e anexos;
- Ajustes nas referências e citações para estarem em conformidade com as normas da ABNT;
- Reorganização dos arquivos;
- Adição de suporte para acentos e ç nos ambientes de código (listings);
- Adicionado suporte para 26+ anexos/apêndices (louvado seja quem conseguir usar isso).


&nbsp;


## Sobre o abntex2 🤷‍♀️

Algumas das mudanças no estilo das referências tiveram que ser hard-coded, já que não eram opções do pacote abntex2. Por isso dos arquivos de estilo (abntex2cite.sty e abntex2-alf.bst) "soltos" no diretório raiz.  
O projeto não tem sido atualizado há alguns anos, então, enquanto as issues [abntex2#233](https://github.com/abntex/abntex2/issues/233) e [abntex2#210](https://github.com/abntex/abntex2/issues/210) não forem solucionadas, ainda vamos precisar desses arquivios =/.

&nbsp;


## Contribuições anteriores 🙌

A maior parte desse template foi escrito antes da criação desse repositório.

Abaixo estão as generosas contribuições anteriores:

```
%######################################################################
% Classe UFLAMON - Monografia de Pos-Graduacao da UFLA
%
% Desenvolvida e mantido por Joaquim Quinteiro Uchoa (joukim@ginux.ufla.br),
% a partir do modelo da universidade.
%
% A primeira versao, em 2001, foi desenvolvida com o auxilio de 
% Jones Oliveira de Albuquerque. 
%
% A classe foi aperfeicoada a partir de
% contribuicoes de usuarios da mesma, entre eles:
% Mario Luiz Rodrigues
% Douglas Machado Tavares
% Samuel Pereira Dias
% Renato R. R. Oliveira
%
% Alterada em 25/11/2004 por Joaquim Q. Uchoa:
% -> remocao do uso da classe geometry para determinacao das margens,
%     classe agora define margens usando comandos LaTeX puros :-)
% Alterada em 05/01/2005 por Joaquim Q. Uchoa:
% -> adocao do pdfLaTeX para resolucao de problemas com fontes
%    e hyperref
% -> melhor uso dos comandos de definicao de margens
% Alterada em 12/09/2005 por Joaquim Q. Uchoa 
%  (com contribuicoes pontuais de Samuel P. Dias):
% -> melhoria do arquivo de exemplo, com uso de tabelas, figuras,
%    insecao de codigos, etc.
% Alterada em 03/07/2006 por Joaquim Q. Uchoa:
% -> inclusao da terceira banca
% Alterada em 11/09/2006 por Joaquim Q. Uchoa:
% -> migracao para utf8 e inclusao de palavras-chave
% Alterada em 07/07/2008 por Joaquim Q. Uchoa:
%-> modificada para atender parcialmente as novas normas da PRPG
% => contra as normas, numeramos o sumario!
% Alterada em 20/08/2012 por Joaquim Q. Uchoa
%  (com contribuicoes pontuais de Renato R. R. Oliveira):
% -> atendendo a pedidos, classe suporta latin1 e utf8
% -> modificada para atender novas normas da UFLA
% -> inclusao do logo da ufla
% -> possibilidade de inclusao de folha de aprovacao assinada
% -> suporte ate quarta banca
% => contra as normas, coloco primeiro o sumario, antes de
%    lista de figuras e de tabelas;
%    alem disso mantenho formatacao de titulos de figuras 
%    e de tabelas ja existentes no LaTeX;
%    tambem nao indento o primeiro paragrafo de cada capitulo ou secao
% Alterada em 21/08/2012 por Joaquim Q. Uchoa
% -> correção de problema com ausência de hifenização no texto
% Alterada em 06/06/2013 por Joaquim Q. Uchoa
% -> ajustes para possibilitar uso da classe para geração do projeto
%    (não precisa especificar defesa, local, banca, etc.)
% Alterada em 01/08/2013 por Joaquim Q. Uchoa
% -> ajustes para suportar abntex2
%    (sem mudancas na classe, apenas no arquivo de exemplo)
% Nova versão das normas em 2015
% Alterada em 10 e 14/04/2015 por Joaquim Q. Uchoa e Rodrigo Amador
% -> ajustes para suportar subsubsubsection (argh!)
% -> suporte à ficha catalográfica
% Alterada em 08/05/2015 por Joaquim Q. Uchoa e Rodrigo Amador
% -> novos ajustes para suportar subsubsubsection (argh!)
% -> suporte para ausência de ficha catalográfica 
% -> título em inglês na folha de aprovação
% -> suporte a listas diversas (exemplos, gráficos, quadros, ilustrações, etc.)
% Alterada em 18/05/2015 por Joaquim Q. Uchoa e Rodrigo Amador
% -> outras observações no texto corrigido pelo revisor técnico
% -> arrumada formatação do título de figuras e tabelas 
% -> quote com tamanho 10pt (citação direta grande)
% -> arrumado entrada de capítulo no sumário
% Alterada em 01/06/2015 por Joaquim Q. Uchoa e Rodrigo Amador
% -> arrumada formatação do resumo e do abstract
% -> arrumadas listas de ilustrações e tabelas (colocar título completo)
% -> arrumada formatação tipográfica de entradas do sumário
% -> arrumado alinhamento de título de figura quando passa de uma linha
% -> arrumado tamanho de fonte de nota de rodapé
% Alterada em 15/06/2015 por Joaquim Q. Uchoa e Rodrigo Amador
% -> arrumado tamanho de fonte do caption
% -> arrumada formatação de anexos e apêndices
% Alterada em 17/06/2015 por Joaquim Q. Uchoa 
% -> melhoria dos comentários
% Alterada em 22/06/2015 por Joaquim Q. Uchoa 
% -> arrumada formatação dos títulos (tamanho)
% -> arrumado espaçamento no sumário 
% -> arrumado espaçamento em listas de figuras, tabelas, etc.
% Alterada em 23/06/2015 por Joaquim Q. Uchoa 
% -> disponibilizado comandos para inserção de conteúdo antes e depois
%    da ficha catalográfica
% Alterada em 16/07/2015 por Joaquim Q. Uchoa 
% -> correção ortográfica
% -> arrumada identação do primeiro parágrafo de seções 
% Alterada em 10/08/2015 por Joaquim Q. Uchoa
% -> Ajustes menores para suportar a impressão do manual 
% -> (ausência de orientador, ficha com CDD, etc.)
% Alterada em 25/08/2015 por Joaquim Q. Uchoa
% -> Arrumação do posicionamento de página (frente e verso)
% -> Arrumação do título de apêndices e anexos
% Alterada em 26/08/2015 por Joaquim Q. Uchoa
% -> Remodelagem para anexos e apêndices
% Alterada em 22/09/2015 por Joaquim Q. Uchoa
% -> Arrumação da folha de aprovação assinada 
% -> Arrumação de páginas pré-textuais (não reiniciar numeração)
% -> Ajustes para impressão do manual
% Alterada em 11/11/2015 por Joaquim Q. Uchoa
% -> Arrumação da margem das alíneas
% Alterada em 23/11/2015 por Joaquim Q. Uchoa
% -> Arrumação da formatação das notas de rodapé
% Alterada em 06/04/2016 por Joaquim Q. Uchoa
% -> Arrumação da formatação de lista de figuras e lista de tabelas
% ******** Versão adotada a partir do primeiro semestre de 2016 ********
% Alterada em 14/06/2016 por Joaquim Q. Uchoa
% -> Melhorias na ficha catalográfica
% -> Ajustes menores na folha de rosto e de aprovação
```
