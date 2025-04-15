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
%######################################################################


%######################################################################
% identificacao
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uflamon}[2015/09/21]
%######################################################################


%######################################################################
% Compilacao preferencial em pdfLaTeX
\ifx\pdfoutput\undefined
\typeout{}
\typeout{*******************************************************************}
\typeout{* AVISO: Essa classe nao foi feita para ser usada com LaTeX puro! }
\typeout{* Use pdfLaTeX!                                                   }
\typeout{*                                                                 }
\typeout{* Se voce antes utilizava o comando                               }
\typeout{* latex arquivo; dvips arquivo                                    }
\typeout{* Entao basta agora digitar                                       }
\typeout{* pdflatex arquivo                                                }
\typeout{*                                                                 }
\typeout{* Dicas:                                                          }
\typeout{* - Ao usar imagens vetoriais, prefira exportar para pdf direto   }
\typeout{*   ou entao exporte para eps e utilize o comando                 }
\typeout{*   epstopdf arquivo.eps                                          }
\typeout{*   para gerar um pdf a partir de um eps                          }
\typeout{* - Ao usar imagens bitmaps, prefira o formato PNG, ou entao      }
\typeout{*   JPEG                                                          }
\typeout{*******************************************************************}
\typeout{}
\stop
\fi
%######################################################################


%######################################################################
% Codigo inicial e carregamento de pacotes
% código para suportar opcionalmente opções da classe book (ex: oneside)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass[11pt,letterpaper]{book} % classe base para a monografia
\RequirePackage{ifthen} % para testes
\RequirePackage{calc} % para calculos (margens, etc.)
\RequirePackage{lastpage} % para ficha catalografica
\RequirePackage{graphicx} % Logo da UFLA na capa.
%######################################################################


%######################################################################
% Dados da monografia (campos adicionais, etc.)
\def\tipo#1{\gdef\@tipo{\nh{#1}}} % tipo da monografia
\def\local#1{\gdef\@local{#1}} % local
\local{} %inicialmente vazio
\def\orientador#1{\gdef\@orientador{#1}} % orientador
\def\coorientador#1{\gdef\@coorientador{#1}} % coorientador
\def\orientadora#1{\gdef\@orientadora{#1}} % orientador
\def\coorientadora#1{\gdef\@coorientadora{#1}} % coorientador
\orientador{} %inicialmente vazio
\orientadora{} %inicialmente vazio
\coorientador{} %inicialmente vazio
\coorientadora{} %inicialmente vazio
\def\subtitle#1{\gdef\@subtitle{#1}} % subtitulo
\subtitle{} %inicialmente vazio
\def\engtitle#1{\gdef\@engtitle{#1}} % titulo em ingles
\engtitle{} %inicialmente vazio
\def\engsubtitle#1{\gdef\@engsubtitle{#1}} % subtitulo em ingles
\engsubtitle{} %inicialmente vazio
\def\edicao#1{\gdef\@edicao{#1}} % edicao
\edicao{}

% Campos da ficha catalográfica
\def\fichacat#1{\gdef\@fichacat{#1}} % texto da ficha catalografica
\fichacat{}
\def\fcedicao#1{\gdef\@fcedicao{#1}} % edicao
\fcedicao{}
\def\fcautor#1{\gdef\@fcautor{#1}} % primeiro autor
\fcautor{}
\def\fcautores#1{\gdef\@fcautores{#1}} % autores
\fcautores{}
\def\fccatalogacao#1{\gdef\@fccatalogacao{#1}} % catalogacao
\fccatalogacao{}
\def\fctipo#1{\gdef\@fctipo{#1}} % catalogacao
\fctipo{}
\def\fcilustrado#1{\gdef\@fcilustrado{#1}} % catalogacao
\fcilustrado{}
\def\fcdatadefesa#1{\gdef\@fcdatadefesa{#1}} % catalogacao
\fcdatadefesa{\@date}
% Para o manual, precisa imprimir informações antes e depois
% da ficha catalográfica
\def\antesfichacat#1{\gdef\@antesfichacat{#1}} % antes da ficha 
\antesfichacat{}
\def\depoisfichacat#1{\gdef\@depoisfichacat{#1}} % depois da ficha
\depoisfichacat{}
\def\preparofichacat#1{\gdef\@preparofichacat{#1}} % depois da ficha
\preparofichacat{Ficha Catalogr\'{a}fica preparada pelo Sistema de Gera\c{c}\~{a}o de 
        Ficha Catalogr\'{a}fica da Biblioteca Universit\'{a}ria da UFLA, 
        com dados informados pelo(a) pr\'{o}prio(a) autor(a).}
% Classificação CDD
\def\fcclasi#1{\gdef\@fcclasi{#1}}% classicacao 1
\fcclasi{}
\def\fcclasii#1{\gdef\@fcclasii{#1}}% classicacao 2
\fcclasii{}
\def\fcclasiii#1{\gdef\@fcclasiii{#1}}% classicacao 3
\fcclasiii{}
%######################################################################


%######################################################################
% Definicao de margens
\setlength{\hoffset}{-1in} % remove padrao do LaTeX 
\setlength{\voffset}{-1in} % remove padrao do LaTeX 
\setlength{\oddsidemargin}{4.5cm}  % margem esquerda
\setlength{\evensidemargin}{4.5cm} % margem direita
\setlength{\topmargin}{3.3cm}    % margem superior
\newlength{\bottommargin}        % margem inferior eh deduzida em LaTeX
\setlength{\bottommargin}{3.3cm} % margem inferior
\setlength{\headheight}{0cm} % altura do cabecalho
\setlength{\headsep}{1cm}    % espaco entre cabecalho e texto
\setlength{\footskip}{0cm}  % espaco entre rodape e texto
\setlength\textheight{ % altura disponivel para texto
 \paperheight-\topmargin-\bottommargin-\headheight-\headsep-\footskip
} 
\setlength\textwidth{  % largura disponivel para texto
 \paperwidth-\oddsidemargin-\evensidemargin
}
%######################################################################


%######################################################################
% Espacamento entre linhas
\renewcommand{\baselinestretch}{1.5}\normalsize 

% Identacao do paragrafo
\setlength{\parindent}{1.25cm}

% código adaptado do identfirst: 
\let\@afterindenttemp\@afterindentfalse
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue

\newcommand{\noindentfirst}{
	\let\@afterindentfalse\@afterindenttemp
	\@afterindentfalse
}

% Para espaçamento na ficha catalográfica
\newcommand{\tab}{\hspace*{0.6cm}}

% Para controle de tamanho de itens
\newlength{\mylen}

% Redefinindo LARGE
 \def\@xvipt{16.0}
\renewcommand\LARGE{\@setfontsize\LARGE\@xvipt{20}}

% Definindo tamanho para exemplo
\newcommand\smallx{%
   \@setfontsize\smallx\@ixpt{11}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}



% Configurando margens de alíneas
\RequirePackage{enumitem}
\setlist[enumerate]{leftmargin=1.25cm}
%######################################################################


%######################################################################
% Cabecalho e rodape
\RequirePackage{fancyhdr}
\fancyhead{}
\fancyhead[R]{\nouppercase{\small\slshape\rightmark}}
\fancyhead[L]{\nouppercase{\small\slshape\leftmark}}
\fancyfoot{}
\fancyfoot[C]{\small\thepage}

\fancypagestyle{plain}{
\fancyhf{}
}

\fancypagestyle{ufla}{
\fancyhf{}
\fancyhead[RO]{\thepage}
\fancyhead[LE]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
%######################################################################


%######################################################################
% Redefinicao de titulos
%\RequirePackage[noindentafter]{titlesec}
\RequirePackage[noindentafter]{titlesec}
\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{6}

% máxima profundidade utilizada (necessário rodar duas vezes)
% maxuseddepthold é pego do .aux
\newcounter{maxuseddepthold}
\newcounter{maxuseddepth}
\setcounter{maxuseddepth}{0}

\newcommand{\testasecao}[1]{
    \setcounter{maxuseddepth}{\maxof{\value{maxuseddepth}}{#1}}
}

% Redefinindo titulo de capitulo
\titleformat{\chapter}[hang]% redefinindo titulo de capitulo como de secao
{\normalsize\bf}% formato do titulo
{\normalsize\thechapter}% formato do label
{10pt}% separador
{\MakeUppercase}% codigo anterior
[]% codigo posterior
\assignpagestyle{\chapter}{ufla} % pagestyle
\titlespacing{\chapter}{0pt}{-1cm}{0.5cm} % espacamento

% Criando subsubsubsection (argh!)
% copiado daqui
% http://tex.stackexchange.com/questions/164636/subsubsubsection-paragraph-and-subparagraph-count-not-reset-when-starting-a
\titleclass{\subsubsubsection}{straight}[\subsection]

\newcounter{subsubsubsection}[subsubsection]

\renewcommand\thesubsubsubsection{\thesubsubsection.\arabic{subsubsubsection}}
\renewcommand\theparagraph{\thesubsubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph{\theparagraph.\arabic{subparagraph}}

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\testasecao{1}\normalfont\normalsize\bfseries}}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\testasecao{2}\normalfont\normalsize\bfseries}}

\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                    {1.5ex \@plus .2ex}%
                                    {\testasecao{3}\normalfont\normalsize\bfseries}}

\titleformat{\subsubsubsection}
  {\testasecao{4}\normalfont\normalsize\bfseries}{\thesubsubsubsection}{1em}{}
\titlespacing*{\subsubsubsection}
{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\renewcommand\paragraph{\@startsection{paragraph}{5}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}}

\renewcommand\subparagraph{\@startsection{subparagraph}{6}{\parindent}
  {3.25ex \@plus1ex \@minus .2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}}

\def\toclevel@subsubsubsection{4}
\def\toclevel@paragraph{5}
\def\toclevel@paragraph{6}

\@addtoreset{subsubsubsection}{section}
\@addtoreset{subsubsubsection}{subsection}

\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{6}

% entradas no sumário
% esse é minha forma preferida e é aceito pela ABNT, entretanto, Biblioteca prefere
% o padrão com margem fixa - implementado no \AtBeginDocument
%\def\l@chapter{\bfseries\@dottedtocline{0}{1.5em}{1.7em}}
%\def\l@section{\@dottedtocline{1}{1.7em}{2.5em}}
%\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
%\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
%\def\l@subsubsubsection{\@dottedtocline{4}{7em}{5em}}
%\def\l@paragraph{\@dottedtocline{5}{10em}{6em}}
%\def\l@subparagraph{\@dottedtocline{6}{14em}{7em}}
%######################################################################

%ARRUMAR
% entradas no sumário
% figuras
% referencias cruzadas

%######################################################################
% Tipos de fontes
\RequirePackage{pslatex} % times, helvetica e courier
\RequirePackage{mathptmx} % fontes matematicas em ps

% Controle de linhas orfas e viuvas (desabilitar)
\widowpenalty10000 % 10000 significa virtualmente infinito. 
\clubpenalty10000

% Para trechos que nao podem ser hifenizados
\newlanguage\nohyphen
\newcommand\nh[1]{{\language\nohyphen #1}}
%######################################################################


%######################################################################
% Codigo para impressao da capa
\newcommand\imprimeCapa{
    \begin{titlepage}
    %\pagestyle{empty}
    \centering
    
    \includegraphics[scale=0.45]{logoufla}
    
    \vspace{1cm}
    
    \Large\textbf{\MakeUppercase\@author} % autor da monografia

    \vspace{\stretch{1}}

    \LARGE\textbf{\MakeUppercase\@title}%
    \ifthenelse{\equal{\@subtitle}{\@empty}}% verifica se tem subtitulo
    {\\}% se nao tiver, so pula a linha
    {\LARGE:\\{\MakeUppercase\@subtitle}} % subtitulo da monografia
    
     \ifthenelse{\equal{\@edicao}{\@empty}}% verifica se tem edicao
    {}{\large\@edicao}                                     % se tiver, imprime
    
    \vspace{\stretch{1}}

    \Large\textbf{\MakeUppercase\@local}\\ 
    \textbf{\MakeUppercase\@date}
    \null
    \cleardoublepage
    \end{titlepage}
}
%######################################################################


%######################################################################
\fichacat{% texto da ficha catalográfica
  % Antes verifica se tem os dados, senão, não imprime
  \ifthenelse{\equal{\@fcautor}{\@empty}}{}{%
  % Espacamento entre linhas
  \renewcommand{\baselinestretch}{1}\normalsize 
  \@fcautor \\
  \tab 
  \ifthenelse{\equal{\@subtitle}{\@empty}}% verififica se tem título e subtítulo
  {% se não tem imprime só título
    \@title
  } {% se tiver, imprime os dois
    \@title\ : \@subtitle
  }  
  / \@fcautores. 
  \ifthenelse{\equal{\@fcedicao}{\@empty}}{}{\@fcedicao} 
  -- Lavras : UFLA, \@date.\\
  \tab \pageref{LastPage} p. : \@fcilustrado\\
  \vfill
  \ifthenelse{\equal{\@fctipo}{\@empty}} % se tipo nao existir,
        {}%                                                      % nao produza nada
        {\tab \@fctipo--Universidade Federal de Lavras, \@fcdatadefesa. \\}
  \ifthenelse{\equal{\@orientador}{\@empty}} % se orientador nao existir,
        {}%                                                             % nao produza nada
         {\tab Orientador: \@orientador. \\}
  \ifthenelse{\equal{\@orientadora}{\@empty}} % se coorientadora nao existir,
        {}%                                                               % nao produza nada
        {\tab Orientadora: \@orientadora. \\}
   \tab Bibliografia.\\
   \vfill
   \tab \@fccatalogacao\\
   \ifthenelse{\equal{\@fcclasi}{\@empty}}{}{
         \vfill
         \tab \hfill 
 	 \begin{tabular}{r@{-}l} 
         CDD & \@fcclasi 
         \ifthenelse{\equal{\@fcclasii}{\@empty}}{}{
         \\ & \@fcclasii \\
         }
          \ifthenelse{\equal{\@fcclasiii}{\@empty}}{}{
          \\ & \@fcclasiii 
          }
          \end{tabular}
  }
 }
}
%######################################################################


%######################################################################
% Codigo para impressao da folha de rosto
\newcommand\imprimeFolhaRosto{
    \begin{titlepage}
    \newpage    
    %\pagestyle{empty}
    %\vspace*{\stretch{.08}}
    
    \begin{center}       
        \textbf{\MakeUppercase\@author} % autor da monografia

        \vspace{\stretch{1}}

        \textbf{\MakeUppercase\@title}% titulo da monografia
        \ifthenelse{\equal{\@subtitle}{\@empty}}% verifica se tem subtitulo
        {\\}% se nao tiver, so pula a linha
        {:\\{\MakeUppercase\@subtitle}} % subtitulo da monografia

         \ifthenelse{\equal{\@edicao}{\@empty}}% verifica se tem edicao
         {}{\large\@edicao}                                     % se tiver, imprime

        \vspace{\stretch{1}}

        \hfill\begin{minipage}{8cm}{\@tipo}\end{minipage} % tipo da monografia

        \vspace{\stretch{.58}}


        \ifthenelse{\equal{\@orientador}{\@empty}} % % se orientador nao existir,
        {}%                                            % nao produza nada
        {\@orientador\\
         Orientador
        }

        \ifthenelse{\equal{\@orientadora}{\@empty}} % % se coorientadora nao existir,
        {}%                                            % nao produza nada
        {\@orientadora\\
         Orientadora
        }
        
        \hspace{\stretch{.05}}

        \ifthenelse{\equal{\@coorientador}{\@empty}} % % se coorientador nao existir,
        {}%                                            % nao produza nada
        {\@coorientador\\
          Coorientador
        }

        \ifthenelse{\equal{\@coorientadora}{\@empty}} % % se coorientadora nao existir,
        {}%                                            % nao produza nada
        {\@coorientadora\\
          Coorientadora
        }


        \vspace{\stretch{.86}} 

        \textbf{\MakeUppercase\@local}\\ 
        \textbf{\MakeUppercase\@date}
    \end{center}    
    
     \newpage
     %\thispagestyle{empty}
  \ifthenelse{\equal{\@fcautor}{\@empty}}{}{%
      \ifthenelse{\equal{\@antesfichacat}{\@empty}} % verifica se não precisa imprimir nada 
      {}{\renewcommand{\baselinestretch}{1}\normalsize\@antesfichacat}   % antes da ficha catalográfica
      
      \vspace*{\stretch{1}}
  
     \begin{center}
        \bfseries\footnotesize
        \@preparofichacat
      \end{center}

      \setlength{\mylen}{12.5cm}
      \newlength{\mylenn}
      \addtolength{\mylenn}{\mylen}
      \addtolength{\mylenn}{-1.9cm}

      \noindent \hfill  
      \fbox{\parbox[c][7.5cm][t]{\mylen}{
        \vspace{0.3cm}
        \hspace{1.5cm} \parbox[c][7.2cm][t]{\mylenn}{
          \@fichacat
          } \hfill
       }
      } \hfill

      \vspace*{0.5cm}

      \ifthenelse{\equal{\@depoisfichacat}{\@empty}} % verifica se não precisa imprimir nada 
      {}{\renewcommand{\baselinestretch}{1}\normalsize\@depoisfichacat}   % depois da ficha catalográfica
  }
  \end{titlepage}
}
%######################################################################


%######################################################################
% Impressão da folha de aprovação
% Comando para insercao de arquivo com folha de aprovacao assinada
\newcommand\folhaAprovacaoAssinada[2][1.0]{
    \gdef\@arquivoFolhaAprovacao{#2}
    \gdef\@escalaFolhaAprovacao{#1}
}
\folhaAprovacaoAssinada{} % inicialmente não tem folha assinada

% Comandos para as bancas de defesa
% 1a. banca
\newcommand\bancaum[2]{   
    \gdef\@nomeBancaUm{#1}
    \gdef\@instBancaUm{#2}        
}
\bancaum{}{} % inicialmente vazia

% 2a. banca
\newcommand\bancadois[2]{
    \gdef\@nomeBancaDois{#1}
    \gdef\@instBancaDois{#2}
}
\bancadois{}{} % inicialmente vazia
% 3a. banca
\newcommand\bancatres[2]{
    \gdef\@nomeBancaTres{#1}
    \gdef\@instBancaTres{#2}
}
\bancatres{}{}
% 4a. banca
\newcommand\bancaquatro[2]{
    \gdef\@nomeBancaQuatro{#1}
    \gdef\@instBancaQuatro{#2}
}
\bancaquatro{}{}
\newlength{\mylenbancaum}
\newlength{\mylenbancadois}
\newlength{\mylenbancatres}
\newlength{\mylenbancaquatro}

% Data da defesa
\def\defesa#1{\gdef\@defesa{#1}} 
\defesa{} % inicialmente vazia


% Folha de aprovacao
\newcommand{\imprimeFolhaAprovacao}{
    \ifthenelse{\equal{\@arquivoFolhaAprovacao}{\@empty}} %
    %se não existir arquivo da folha de rosto, então produza-a
    {\geraFolhaAprovacao} %
    %se existir arquivo, então insira-o
    {%\pagestyle{empty} %
     \vspace*{-4.5cm}\hspace*{-4.5cm} \includegraphics[scale=\@escalaFolhaAprovacao]{\@arquivoFolhaAprovacao}%
     \cleardoublepage} %
}

% Codigo para impressao da folha de aprovacao
\def\geraFolhaAprovacao{
    %\begin{titlepage}
    %\pagestyle{empty}
    %\centering
    
	 % Espacamento entre linhas
   \renewcommand{\baselinestretch}{1}\normalsize 
    \begin{center}
        \textbf{\MakeUppercase\@author}  
          
        \vspace{\stretch{0.6}}
        
        \textbf{\MakeUppercase\@title}% titulo da monografia
        \ifthenelse{\equal{\@subtitle}{\@empty}}% verifica se tem subtitulo
        {\\}% se nao tiver, so pula a linha
        {: {\MakeUppercase\@subtitle}} % subtitulo da monografia
        % escreve título e subtítulo em inglês, caso existam
        \ifthenelse{\equal{\@engtitle}{\@empty}}{}{\\%
        \textbf{\MakeUppercase\@engtitle}% titulo da monografia
        \ifthenelse{\equal{\@engsubtitle}{\@empty}}% verifica se tem subtitulo
        {\\}% se nao tiver, so pula a linha
        {\textbf{:} {\MakeUppercase\@engsubtitle}} % subtitulo da monografia
        }
    \end{center}

    \vspace{\stretch{0.4}}

    \hfill%
    \begin{minipage}{8cm}{%
        \@tipo}%
    \end{minipage}    

    \vspace{\stretch{.5}}
        
    \settowidth{\mylenbancaum}{\@nomeBancaUm}
    \settowidth{\mylenbancadois}{\@nomeBancaDois}
    \settowidth{\mylenbancatres}{\@nomeBancaTres}  
    \settowidth{\mylenbancaquatro}{\@nomeBancaQuatro}        

    % Descobre o maior dos comprimentos
    \ifthenelse{\lengthtest{\mylenbancaum > \mylenbancadois}}%  checa qual o maior
    {\setlength{\mylen}{\mylenbancaum}}% bancaum maior
    {\setlength{\mylen}{\mylenbancadois}}% bancadois maior
    
    \ifthenelse{\lengthtest{\mylen > \mylenbancatres}}% checa qual o maior
     {}% mylen maior
     {\setlength{\mylen}{\mylenbancatres}}% bancatres maior

    \ifthenelse{\lengthtest{\mylen > \mylenbancaquatro}}% checa qual o maior
     {}% mylen maior
     {\setlength{\mylen}{\mylenbancaquatro}}% bancatres maior
 

    {\flushleft
        \ifthenelse{\equal{\@defesa}{\@empty}}% % se não existir data de defesa
        {}%                                     % não produza nada
        {APROVADA em \@defesa. \\}%   % caso contrario, escreva-a
        
        \vspace{1.2cm}
        
        {\setlength{\tabcolsep}{3pt} 
        \begin{tabular}{p{\mylen} l}
        \@nomeBancaUm & \@instBancaUm \\ %\\ - tirou espaço de assinatura
      
         \ifthenelse{\equal{\@nomeBancaDois}{\@empty}}% % se 2. banca nao existir, nao
         {}%                                            % produza nada
         {\@nomeBancaDois &\@instBancaDois\\}%   % caso contrario, escreva-a
         
         \ifthenelse{\equal{\@nomeBancaTres}{\@empty}}% % se 3. banca nao existir, nao
         {}%                                            % produza nada
         {\@nomeBancaTres & \@instBancaTres\\}%   % caso contrario, escreva-a
                  
         \ifthenelse{\equal{\@nomeBancaQuatro}{\@empty}}% % se 4. banca nao existir, nao
         {}%                                            % produza nada
         {\@nomeBancaQuatro & \@instBancaQuatro\\}%   % caso contrario, escreva-a
         \end{tabular}}\hfill        
    }      
      
    \vspace{\stretch{.7}}
       
    \begin{center}
        \ifthenelse{\equal{\@orientadora}{\@empty}}
    	{\@orientador\\
    	 Orientador}
	    {\@orientadora\\
	    Orientadora}

        \ifthenelse{\equal{\@coorientador}{\@empty}}{}% se coorientador nao existir, 
                                                      % nao produza nada
        {\vspace{\stretch{.4}}                        % caso contrario, escreva-o
            \@coorientador \\
            Co-Orientador
        }
        
        \ifthenelse{\equal{\@coorientadora}{\@empty}}{}% se coorientadora nao existir, 
                                                      % nao produza nada
        {\vspace{\stretch{.4}}                        % caso contrario, escreva-a
            \@coorientadora \\
            Co-Orientadora
        }
        

        \vspace{\stretch{.5}} 

        {\bf\MakeUppercase\@local}\\
        {\bf\@date}
    \end{center}   
    
    \cleardoublepage
    %\end{titlepage}
} % \def\folhaaprovacao
%######################################################################


%######################################################################
% Páginas de Dedicatória, Agradecimentos e de Epígrafe
% Dedicatoria
\newcommand{\dedic}[1]{
    %\begin{titlepage}
    %\pagestyle{empty}                       
                          
    \null\vfill
    \begin{flushright}{\textit{#1}}\end{flushright}
    \vspace*{1cm}
        
    \cleardoublepage
    %\end{titlepage}
} % \dedic


% Agradecimentos
\renewcommand{\thanks}[1]{
    %\begin{titlepage}
    %\pagestyle{empty}                       
                          
    \null\vfill
    \begin{center}\textbf{AGRADECIMENTOS}\end{center}
    \noindent #1
    \vspace*{1cm}    
    \vfill\null
    
    \cleardoublepage
    %\end{titlepage}
} % \thanks


% Pagina de epigrafe
\newcommand{\epigrafe}[1]{
    %\begin{titlepage}
    %\pagestyle{empty}                       
                          
    \null\vfill
    \begin{flushright}{\textit{#1}}\end{flushright}
    \vspace*{1cm}
        
    \cleardoublepage
    %\end{titlepage}
} % epigrafe
%######################################################################


%######################################################################
% Resumo e palavras-chave
\def\palchaves#1{\gdef\@palchaves{\nh{#1}}} % palavras-chave da monografia
\palchaves{} %inicialmente vazio
\def\keywords#1{\gdef\@keywords{\nh{#1}}} % palavras-chave da monografia (em ingles)
\keywords{} %inicialmente vazio

\newcommand{\resumo}[1]{
    \newpage
    %\pagestyle{empty}    
    %\null\vfill
                          
    \begin{center}
        \large{\textbf{RESUMO}}
    \end{center}
    
    % espaçamento simples no resumo
    \renewcommand{\baselinestretch}{1}\normalsize 
    
    \noindent #1
    \vspace*{0.3cm}
    
    \noindent {\bfseries Palavras-chave:} \@palchaves
    %\vspace*{1cm}
    
    %\vfill\null 
    
    % Retoma espaçamento normal entre linhas
	\renewcommand{\baselinestretch}{1.5}\normalsize        
    \cleardoublepage
}

\newcommand{\abstract}[1]{
    \newpage 
    %\pagestyle{empty}    
    %\null\vfill
                          
    \begin{center}
        \large{\textbf{ABSTRACT}}
    \end{center}
    
        
    % espaçamento simples no resumo
    \renewcommand{\baselinestretch}{1}\normalsize
    
    \noindent #1
    \vspace*{0.3cm}
    
    \noindent {\bfseries Keywords:} \@keywords
                       
    %\vspace*{1cm}
    
    %\vfill\null 
    
    % Retoma espaçamento normal entre linhas
	\renewcommand{\baselinestretch}{1.5}\normalsize        
    \cleardoublepage
}
%######################################################################


%######################################################################
% Sumario, 
% adaptado do Renato
\renewcommand{\tableofcontents}{
    %\pagestyle{empty}
    \begin{center}\textbf{\MakeUppercase{\contentsname}}\end{center}
    \normalfont\normalsize\@starttoc{toc}
    \cleardoublepage
}
%######################################################################


%######################################################################
% Arrumando Lista de Figuras, Lista de Tabelas e
% Criando outras listas
\RequirePackage{float}
\floatstyle{plaintop}

% Redefinindo formatação do título e da página
\renewcommand*{\listof}[2]{%
  %\pagestyle{empty}
  \@ifundefined{ext@#1}{\float@error{#1}}{%
    \@namedef{l@#1}{\@dottedtocline{1}{3em}{2.6em}}%
    %\float@listhead{#2}%
    \begin{center}\textbf{\MakeUppercase{#2}}\end{center}
    \begingroup\setlength{\parskip}{\z@}%
       \@starttoc{\@nameuse{ext@#1}}%
    \endgroup}%
   \cleardoublepage%
}

% Lista de Figuras
\newfloat{figure}{htb!}{lff}[chapter]
\floatname{figure}{Figura}
\renewcommand{\listoffigures}{%
	{\let\oldnumberline\numberline%
	\renewcommand{\numberline}{Figura~\oldnumberline}
	\listof{figure}{Lista de Figuras}}}

% Lista de Tabelas
\newfloat{table}{htb!}{ltt}[chapter]
\floatname{table}{Tabela}
\renewcommand{\listoftables}{%
	{\let\oldnumberline\numberline%
	\renewcommand{\numberline}{Tabela~\oldnumberline}
	\listof{table}{Lista de Tabelas}}}


% Lista de Exemplos
\newfloat{exemplo}{htb!}{loe}[chapter]
\floatname{exemplo}{Exemplo}
\newcommand{\listofexemplos}{%
	{\let\oldnumberline\numberline%
	\renewcommand{\numberline}{Exemplo~\oldnumberline}
	\listof{exemplo}{Lista de Exemplos}}}

% Lista de Quadros
\newfloat{quadro}{htb!}{loq}[chapter]
\floatname{quadro}{Quadro}
\newcommand{\listofquadros}{%
	{\let\oldnumberline\numberline%
	\renewcommand{\numberline}{Quadro~\oldnumberline}
	\listof{quadro}{Lista de Quadros}}}

% Lista de Gráficos
\newfloat{grafico}{htb!}{lgg}[chapter]
\floatname{grafico}{Gr\'afico}
\newcommand{\listofgraficos}{
	{\let\oldnumberline\numberline%
	\renewcommand{\numberline}{Gr\'afico~\oldnumberline}
	\listof{grafico}{Lista de Gr\'aficos}}}

% Lista de Teoremas
\newfloat{teorema}{htb!}{ltt}[chapter]
\floatname{teorema}{Teorema}
\newcommand{\listofteoremas}{
	{\let\oldnumberline\numberline%
	\renewcommand{\numberline}{Teorema~\oldnumberline}
	\listof{teorema}{Lista de Teoremas}}}

% Lista de Ilustrações
\newfloat{ilustracao}{htb!}{loi}[chapter]
\floatname{ilustracao}{Ilustra\c{c}\~ao}
\newcommand{\listofilustracoes}{
	{\let\oldnumberline\numberline%
	\renewcommand{\numberline}{Ilustra\c{c}\~ao~\oldnumberline}
	\listof{ilustracao}{Lista de Ilustra\c{c}\~oes}}}
%######################################################################


%######################################################################
% Remodelando o formato dos títulos de tabelas e figuras
\RequirePackage[labelsep=endash,font=small]{caption}  

\DeclareCaptionListFormat{ufla}{#1#2~\textendash~}

\captionsetup{listformat=ufla,format=hang,font=small}

% alinhar à esquerda                          
%\captionsetup{justification=justified,singlelinecheck=false}

% colocando identificador em negrito
%\renewcommand{\captionlabelfont}{\bfseries}
%######################################################################


%######################################################################
% usando small em quote
\renewenvironment{quote}%
{\list{}{\rightmargin=0cm \leftmargin=4cm} \linespread{1} \small\item\relax}%
{\endlist}
%######################################################################


%######################################################################
% Redefininido notas de rodapé (não identadas e tamanho 10)
\RequirePackage[hang]{footmisc}
\setlength\footnotemargin{10pt}
\let\footnotesize\small
%\renewcommand\@makefntext[1]{\leftskip=2em\hskip0em\small\@makefnmark#1 }
%######################################################################


%######################################################################
% Arrumando formatação de anexos e apêndices
% Anexos
\def\primeiroanexo#1{\gdef\@primeiroanexo{#1}} % verificando se é primeiro anexo
\primeiroanexo{true} %inicialmente sim (true)
\newcounter{anexo} %contador para os anexos (uso em referências)
\renewcommand\theanexo{\Alph{anexo}}

%\newcommand\anexos{%
%	\appendix%
%	\cleardoublepage%
%	\phantomsection%
%    {\hfill\normalfont\selectfont\normalsize\bf ANEXOS \hfill} 
%    \vspace{0.3cm}
%	\addcontentsline{toc}{chapter}{\numberline{} ANEXOS}
%}

\newcommand\anexos{%
	\appendix%
	\cleardoublepage%
	\phantomsection%
}

%\newcommand\anexo[1]{
%  \refstepcounter{anexo}
%  \ifthenelse{\equal{\@primeiroanexo}{true}}{% se for primeiro anexo,
%    \anexos                  % crie cabeçalho dos anexos
%    \primeiroanexo{false}    % marque que já passou do primeiro
%  } {% se não for, pule a página 
%    \cleardoublepage          
%  }
%  {\flushright \bf ANEXO~\theanexo\ -- #1}
%}

\newcommand\anexo[1]{
  \refstepcounter{anexo}
  \ifthenelse{\equal{\@primeiroanexo}{true}}{% se for primeiro anexo,
    \anexos                  % crie formatação dos anexos
    \primeiroanexo{false}    % marque que já passou do primeiro
  } {% se não for, pule a página 
    \cleardoublepage          
  }
  {\centering \bf ANEXO~\theanexo\ -- #1\\}
  \addcontentsline{toc}{chapter}{\numberline{} ANEXO~\theanexo\ -- #1}
}

% Apêndices
\def\primeiroapendice#1{\gdef\@primeiroapendice{#1}} % verificando se é primeiro apêndice
\primeiroapendice{true} %inicialmente sim (true)
\newcounter{apendice} %contador para os apêndices (uso em referências)
\renewcommand\theapendice{\Alph{apendice}}

%\newcommand\apendices{%
%	\appendix%
%	\cleardoublepage%
%	\phantomsection%
%    {\hfill\normalfont\selectfont\normalsize\bf AP\^{E}NDICES \hfill} 
%    \vspace{0.3cm}
%	\addcontentsline{toc}{chapter}{\numberline{} AP\^{E}NDICES}
%}

\newcommand\apendices{%
	\appendix%
	\cleardoublepage%
	\phantomsection%
}

\newcommand\apendice[1]{
  \refstepcounter{apendice}
  \ifthenelse{\equal{\@primeiroapendice}{true}}{% se for primeiro apêndice,
    \apendices                  % crie cabeçalho dos apendices
    \primeiroapendice{false}    % marque que já passou do primeiro
  } {% se não for, pule a página 
    \cleardoublepage          
  }
  {\centering \bf  AP\^{E}NDICE~\theapendice\ -- #1\\}
  \addcontentsline{toc}{chapter}{\numberline{} APENDICE~\theapendice\ -- #1}
}
%######################################################################

%######################################################################
% Comando auxiliar para formatação da seção de referências
\newcommand\referencias{%
   \cleardoublepage%
   \phantomsection%
   \addcontentsline{toc}{chapter}{\numberline{} REFER\^ENCIAS}
   %\renewcommand\bibname{Referências}
   \renewcommand{\bibname}{\hfill\normalfont\selectfont\normalsize\bf REFER\^ENCIAS \hfill}%
}
%######################################################################


%######################################################################
% no início, redefinimos o comando de fazer títulos e as entradas do sumário
% e margens
\AtBeginDocument{
    \pagestyle{empty}

    \def\maketitle{    %\maketitle
		
        \imprimeCapa

        \imprimeFolhaRosto

        \ifthenelse{\equal{\@defesa}{\@empty}}% % se não existir data de defesa
        {}%                                     % não produza 
        {\imprimeFolhaAprovacao}%               % caso contrário produza folha de aprovação 
   }

\newlength{\identation}
\newlength{\widthsec}
%\addtolength{\identation}{\arabic{maxuseddepthold}em}
\addtolength{\widthsec}{\arabic{maxuseddepthold}em}
%\addtolength{\identation}{3em}
\addtolength{\widthsec}{1em}

\setlength{\identation}{0cm}

\def\l@chapter{\bfseries\@dottedtocline{0}{\identation}{\widthsec}}
\def\l@section{\@dottedtocline{1}{\identation}{\widthsec}}
\def\l@subsection{\@dottedtocline{2}{\identation}{\widthsec}}
\def\l@subsubsection{\@dottedtocline{3}{\identation}{\widthsec}}
\def\l@subsubsubsection{\@dottedtocline{4}{\identation}{\widthsec}}
\def\l@paragraph{\@dottedtocline{5}{\identation}{\widthsec}}
\def\l@subparagraph{\@dottedtocline{6}{\identation}{\widthsec}}
}
%######################################################################

%######################################################################
% salvando a maior profundidade utilizada para próxima execução
\AtEndDocument{
    %\immediate\write\@mainaux{\string\newcounter{maxuseddepthold}}%
    \immediate\write\@mainaux{\string\setcounter{maxuseddepthold}{\arabic{maxuseddepth}}}%
}
%######################################################################
