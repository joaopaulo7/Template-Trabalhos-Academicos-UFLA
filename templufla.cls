%######################################################################
% Classe templUFLA - Template de trabalhos acadêmicos da UFLA
% 
% v6.10.0
%
%  Essa classe é parte de um template de trabalhos acadêmcios da UFLA
% seguindo o Manual de Normalização Ed. 6.
%
%  Repositório: https://github.com/joaopaulo7/Template-Trabalhos-Academicos-UFLA
%  Contato: joao.lima10@estudante.ufla.br
%            (pode ter expirado, cheque informações de contato no github joaopaulo7)
%
%  A atual versão é adaptada da classe UFLAMON
%   (mais informações abaixo e no repositório).
%
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
%######################################################################


%######################################################################
% identificacao
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{templufla}[2025/05/14]
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

\LoadClass[12pt, a4paper, oneside]{book} % classe base para a monografia
\RequirePackage{ifthen} % para testes
\RequirePackage{calc} % para calculos (margens, etc.)
\RequirePackage{lastpage} % para ficha catalografica
\RequirePackage{graphicx} % Logo da UFLA na capa.
\RequirePackage{alphalph} % Para número de apêndices/anexos acima de 26.

% para listas de siglas, símbolos e etc; glossário e índice.
\RequirePackage[nopostdot, abbreviations, acronym, symbols, nogroupskip]{glossaries-extra}
\RequirePackage{glossary-mcols}
\RequirePackage{imakeidx}
\RequirePackage[initsep=0pt]{idxlayout}

% para capitalização da primeira letra
\RequirePackage{mfirstuc}
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
\def\fcnpaginas#1{\gdef\@fcnpaginas{#1}} % número de páginas
\fcnpaginas{\pageref{LastPage}}
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
\preparofichacat{Ficha Catalográfica preparada pelo Sistema de Geração de 
        Ficha Catalográfica da Biblioteca Universitária da UFLA, 
        com dados informados pelo(a) próprio(a) autor(a).}
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
\setlength{\oddsidemargin}{3.0cm}  % margem esquerda
\setlength{\evensidemargin}{2.0cm} % margem direita
\setlength{\topmargin}{0.0cm}    % margem superior
\newlength{\bottommargin}        % margem inferior eh deduzida em LaTeX
\setlength{\bottommargin}{2.0cm} % margem inferior
\setlength{\headheight}{2.5cm}   % altura do cabecalho
\setlength{\headsep}{0.5cm}      % espaco entre cabecalho e texto
\setlength{\footskip}{7pt}     % espaco entre rodape e texto
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

% Redefinindo Large
\renewcommand{\Large}{\fontsize{14pt}{16pt}\selectfont}

% Redefinindo LARGE
\renewcommand{\LARGE}{\fontsize{16pt}{18pt}\selectfont}

% Redefinindo small
\renewcommand{\small}{\fontsize{11pt}{13pt}\selectfont}

% Redefinindo footnotesize
\renewcommand{\footnotesize}{\fontsize{11pt}{13pt}\selectfont}
%######################################################################


%######################################################################
% Criando o ambiente de alíneas e subalíneas
\RequirePackage{enumitem}

% Usamos o pacote alphalph para alíneas com letras dobradas
\def\enumalphalphcnt#1{\expandafter\@enumalphalphcnt\csname c@#1\endcsname}
\def\@enumalphalphcnt#1{\alphalph{#1})}
\AddEnumerateCounter{\enumalphalphcnt}{\@enumalphalphcnt)}{}

% Definimos o ambiente das alíneas e subalíneas.
% Não me pergunte sobre o alinhamento. Isso me assombra todas a noites.
\newlist{alineas}{enumerate}{2}
\setlist[alineas]{label={\enumalphalphcnt*}, labelindent=\parindent,%
	 align=left, leftmargin=!, labelsep=-1ex, noitemsep, nosep}
\setlist[alineas, 2]{label=\textbf{--}, left=0ex, align=right, labelsep=1ex}
%######################################################################


%######################################################################
% Cabecalho e rodape
\RequirePackage{fancyhdr}

\fancypagestyle{plain}{
\fancyhf{}
}

\fancypagestyle{ufla}{
\fancyhf{}
\fancyhead[R]{\small\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
%######################################################################


%######################################################################
% Redefinicao de titulos
\RequirePackage[noindentafter]{titlesec}
\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{6}


% Para o alinhamento do sumário
% widthsechold é pego do .aux (na segunda etapa da compilação)
\newlength{\widthsechold}
\newlength{\widthsec}
\setlength{\widthsec}{0pt}
\newlength{\auxwidthsec}
\setlength{\auxwidthsec}{1.5em}% recuo dos textos com relação aos índices

% encontra o maior índice, em pt, nas seções e salva em \widthsec
\newcommand{\testasecao}{%
    % calcula o tamanho do texto dos índices. Ignora zeros.
    \ifthenelse{\value{chapter}>0}%
        {\addtolength{\auxwidthsec}{\widthof{\arabic{chapter}}}}{}%
    \ifthenelse{\value{section}>0}%
        {\addtolength{\auxwidthsec}{\widthof{.\arabic{section}}}}{}%
    \ifthenelse{\value{subsection}>0}%
        {\addtolength{\auxwidthsec}{\widthof{.\arabic{subsection}}}}{}%
    \ifthenelse{\value{subsubsection}>0}%
        {\addtolength{\auxwidthsec}{\widthof{.\arabic{subsubsection}}}}{}%
    \ifthenelse{\value{subsubsubsection}>0}%
        {\addtolength{\auxwidthsec}{\widthof{.\arabic{subsubsubsection}}}}{}%
    %
    % define se é o maior
    \setlength{\auxwidthsec}{\maxof{\auxwidthsec}{\widthsec}}%
    \global\widthsec=\auxwidthsec%
}


% Redefinindo titulo de capitulo
\titleformat{\chapter}[hang]% redefinindo titulo de capitulo como de secao
{\normalsize\bf}% formato do titulo
{\normalsize\thechapter}% formato do label
{1ex}% separador
{\MakeUppercase}% codigo anterior
[\testasecao] % código após
\assignpagestyle{\chapter}{ufla} % pagestyle
\titlespacing{\chapter}{0pt}{-2em}{\baselineskip} % espacamento
\renewcommand{\chaptername}{Seção} % renomeia para referências

% fazemos o mesmo para as seções seguintes
\titlespacing*{\section}{\z@}{\baselineskip}{\baselineskip}
\titleformat{\section}{\normalfont\normalsize\bfseries}{\thesection}{1ex}{}[\testasecao]

\titlespacing*{\subsection}{\z@}{\baselineskip}{\baselineskip}
\titleformat{\subsection}{\normalfont\normalsize\bfseries}{\thesubsection}{1ex}{}[\testasecao]
\newcommand{\subsectionname}{Seção}

\titlespacing*{\subsubsection}{\z@}{\baselineskip}{\baselineskip}
\titleformat{\subsubsection}{\normalfont\normalsize\bfseries}{\thesubsubsection}{1ex}{}[\testasecao]
\newcommand{\subsubsectionname}{Seção}

% criamos a seção quinária
\titleclass{\subsubsubsection}{straight}[\section]
\titlespacing*{\subsubsubsection}{\z@}{\baselineskip}{\baselineskip}
\titleformat{\subsubsubsection}{\normalfont\normalsize\bfseries}{\thesubsubsubsection}{1ex}{}[\testasecao]
\newcounter{subsubsubsection}[subsubsection]
\renewcommand\thesubsubsubsection{\thesubsubsection.\arabic{subsubsubsection}}
\newcommand{\subsubsubsectionname}{Seção}

% corrigimos paragraph e sub paragraph
\renewcommand\paragraph{\@startsection{paragraph}{5}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\theparagraph{\thesubsubsubsection.\arabic{paragraph}}

\renewcommand\subparagraph{\@startsection{subparagraph}{6}{\parindent}
  {3.25ex \@plus1ex \@minus .2ex}%
  {-1em}%
  {\normalfont\normalsize\bfseries}}
\renewcommand\thesubparagraph{\theparagraph.\arabic{subparagraph}}

% adicionamos a seção entra no sumário
\def\toclevel@subsubsubsection{4}
\def\toclevel@paragraph{5}
\def\toclevel@paragraph{6}

% adiciona os contadores que resetam a seção quinária
\@addtoreset{subsubsubsection}{section}
\@addtoreset{subsubsubsection}{subsection}

\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{6}
%######################################################################


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
% "Os elementos da capa serão distribuídos uniformemente" p.35 da normalização.
% Não reclame comigo. Se os outros não estão assim é porque não seguiram as regras.
\newcommand\imprimeCapa{
    \begin{center}
    	\renewcommand{\baselinestretch}{1}\normalsize 
    	% fonte da imagem: https://ufla.br/comunicacao/identidade-visual
	    \includegraphics[width=7cm]{imgs/logoUFLA} 
	    
	    \vfill
	    
	    \Large\textbf{\MakeUppercase\@author} % autor da monografia
	
	    \vfill
	
	    \LARGE\textbf{\MakeUppercase\@title}%
	    \ifthenelse{\equal{\@subtitle}{\@empty}}% verifica se tem subtitulo
	    {}% se nao tiver, não faz nada
	    {\LARGE: {\MakeUppercase\@subtitle}} % subtitulo da monografia
	    
	    \ifthenelse{\equal{\@edicao}{\@empty}}% verifica se tem edicao
	    {}{\large\@edicao}                           % se tiver, imprime
	    
	    \vfill
	
	    \Large\textbf{\MakeUppercase\@local}\par
	    \textbf{\MakeUppercase\@date}
	    \renewcommand{\baselinestretch}{1.5}\normalsize 
	\end{center}
}
%######################################################################



%######################################################################
% Codigo para impressao da folha de rosto
\newcommand\imprimeFolhaRosto{
    \newpage
    \begin{center}       
        \textbf{\MakeUppercase\@author} % autor da monografia

        \vspace{\stretch{1}}

        \textbf{\MakeUppercase\@title}% titulo da monografia
        \ifthenelse{\equal{\@subtitle}{\@empty}}% verifica se tem subtitulo
        {}% se nao tiver, não faz nada
        {: {\MakeUppercase\@subtitle}} % subtitulo da monografia

         \ifthenelse{\equal{\@edicao}{\@empty}}% verifica se tem edicao
         {}{\@edicao}                                     % se tiver, imprime

        \vspace{\stretch{.10}}
		
		\renewcommand{\baselinestretch}{1}\normalsize%small
        % espaçamento simples
        %  a normalização diz que notas são tamanho 11, mas no docx é 12(?)
        %  mantive 12
        {
            \hfill%
            \begin{minipage}{8cm}
                \@tipo
            \end{minipage}
        }
        
        \vspace{\stretch{1}}


        \ifthenelse{\equal{\@orientador}{\@empty}} % % se orientador nao existir,
        {}%                                            % nao produza nada
        {\@orientador\par
         Orientador}

        \ifthenelse{\equal{\@orientadora}{\@empty}} % % se coorientadora nao existir,
        {}%                                            % nao produza nada
        {\@orientadora\par
         Orientadora}
        
        \vspace{\stretch{.25}}

        \ifthenelse{\equal{\@coorientador}{\@empty}} % % se coorientador nao existir,
        {}%                                            % nao produza nada
        {\@coorientador\par
          Coorientador}

        \ifthenelse{\equal{\@coorientadora}{\@empty}} % % se coorientadora nao existir,
        {}%                                            % nao produza nada
        {\@coorientadora\par
          Coorientadora}


        \vspace{\stretch{.86}} 

        \textbf{\MakeUppercase\@local}\par
        \textbf{\MakeUppercase\@date}
        
        \renewcommand{\baselinestretch}{1.5}\normalsize
    \end{center} 
}
%######################################################################


%######################################################################
% Codigo para impressao da ficha catalográfica (PESADELO)
\fichacat{% texto da ficha catalográfica
	% Antes verifica se tem os dados, senão, não imprime
	\ifthenelse{\equal{\@fcautor}{\@empty}}{}{%
		%\vspace{.5cm}
		% Espacamento entre linhas
		% O manual diz tamanho 11pt para a ficha, o template mostra 12pt.
		%  Escolhi 12pt pois provavelmente será o mais comum. 
		\renewcommand{\baselinestretch}{1}\normalsize%\small
		\@fcautor \\
		\tab 
		\ifthenelse{\equal{\@subtitle}{\@empty}}% verififica se tem título e subtítulo
		{% se não tem imprime só título
			\@title
		} {% se tiver, imprime os dois
			\@title\ : \@subtitle
		}  
		/ \@fcautores. 
		\ifthenelse{\equal{\@fcedicao}{\@empty}}{}{ \@fcedicao} 
		-- Lavras : UFLA, \@date.\\
		\tab \@fcnpaginas p. : \@fcilustrado
		\vfil
		\ifthenelse{\equal{\@fctipo}{\@empty}} % se tipo nao existir,
		{}%                                                      % nao produza nada
		{\tab \@fctipo--Universidade Federal de Lavras, \@fcdatadefesa. \\}
		\ifthenelse{\equal{\@orientador}{\@empty}} % se orientador nao existir,
		{}%                                                             % nao produza nada
		{\tab Orientador: \@orientador. \\}
		\ifthenelse{\equal{\@orientadora}{\@empty}} % se orientadora nao existir,
		{}%                                                               % nao produza nada
		{\tab Orientadora: \@orientadora. \\}
		\ifthenelse{\equal{\@coorientador}{\@empty}} % se coorientador nao existir,
		{}%                                                               % nao produza nada
		{\tab Coorientador: \@coorientador. \\}
		\ifthenelse{\equal{\@coorientadora}{\@empty}} % se coorientadora nao existir,
		{}%                                                               % nao produza nada
		{\tab Coorientadora: \@coorientadora. \\}
		\tab Bibliografia.
		\vfil
		{\tab \@fccatalogacao}
		\vfil
		\ifthenelse{\equal{\@fcclasi}{\@empty}}{}{
			\tab\hfill CDD \@fcclasi
		}
	}
}

% a ficha catalográfica foi feita seguindo o manual e o exemplo do manual.
%  a ficha do manual em si está fora do padrão. ¯\(°°)/¯
\newcommand\imprimeFichaCat{
  \ifthenelse{\equal{\@fcautor}{\@empty}}{}{%
      \ifthenelse{\equal{\@antesfichacat}{\@empty}} % verifica se não precisa imprimir nada 
      {}{\renewcommand{\baselinestretch}{1}\normalsize\@antesfichacat}   % antes da ficha catalográfica
      
      \vspace*{\stretch{1}}
  
      \begin{center}
        \bfseries
        \noindent\@preparofichacat
      \end{center}

      \newlength{\largura}%
      \setlength{\largura}{12.5cm}%
      \newlength{\larguraTexto}%
      \setlength{\larguraTexto}{10.8cm}%
      
      % deixa a linha da caixa mais grossa
	  \setlength{\fboxrule}{1.0pt}%
	  
      % alteração graças às diferenças de margem.
      % a4 = 21cm, margem direita = 2cm, margem esquerda = 3cm, caixa = 12.5cm
      % espaço à esquerda = (21-3-12.5)/2 = 1.75cm
      \noindent\hspace{1.75cm}%
      \fbox{\parbox[c][7.5cm][t]{\largura}{%
        \vspace{0.3cm}%
        \hspace{1.5cm} \parbox[c][7.4cm][t]{\larguraTexto}{%
          \@fichacat
          } \hfill
       }
      } \hfill

      \vspace*{0.5cm}

      \ifthenelse{\equal{\@depoisfichacat}{\@empty}} % verifica se não precisa imprimir nada 
      {}{\renewcommand{\baselinestretch}{1}\normalsize\@depoisfichacat}   % depois da ficha catalográfica
  }
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

% Data da defesa
\def\defesa#1{\gdef\@defesa{#1}} 
\defesa{} % inicialmente vazia


% Folha de aprovacao
\newcommand{\imprimeFolhaAprovacao}{
    \ifthenelse{\equal{\@arquivoFolhaAprovacao}{\@empty}} %
    % se não existir arquivo da folha de aprovação, então produza-a
    {\geraFolhaAprovacao} %
    % se existir arquivo, então insira-o
    {%\pagestyle{empty} %
     \vspace*{-4.5cm}\hspace*{-4.5cm} \includegraphics[scale=\@escalaFolhaAprovacao]{\@arquivoFolhaAprovacao}%
     \clearpage} %
}


% Codigo para impressao da folha de aprovacao
\def\geraFolhaAprovacao{
    \newpage
	% Espacamento simples entre linhas
    \renewcommand{\baselinestretch}{1}\normalsize 
    
    % Títulos
    \begin{center}
        \textbf{\MakeUppercase\@author}  
          
        \vspace{\stretch{0.6}}
        
        \textbf{\MakeUppercase\@title}% titulo da monografia
        \ifthenelse{\equal{\@subtitle}{\@empty}}% verifica se tem subtitulo
        	{}% se nao tiver, so pula a linha
        	{: {\MakeUppercase\@subtitle}} % subtitulo da monografia
        
        \vspace{\baselineskip}
        % escreve título e subtítulo em inglês, caso existam
        \ifthenelse{\equal{\@engtitle}{\@empty}}{}{%
        	\textbf{\MakeUppercase\@engtitle}% titulo da monografia
        	\ifthenelse{\equal{\@engsubtitle}{\@empty}}% verifica se tem subtitulo
        	{}% se nao tiver, so pula a linha
        	{\textbf{:} {\MakeUppercase\@engsubtitle}}} % subtitulo da monografia
    \end{center}

	\vspace{\baselineskip}
	
	% Nota sobre o trabalho
    \hfill%
    \begin{minipage}{8cm}
    	\@tipo
   	\end{minipage}

    \vspace{\stretch{.5}}
 
 	% Econtra o maior nome (necesário para o alinhamento)
 	\newlength{\@maiorBanca}%
 	\setlength{\@maiorBanca}{\maxof{\widthof{\@nomeBancaUm}}{\widthof{\@nomeBancaDois}}}%
 	\setlength{\@maiorBanca}{\maxof{\@maiorBanca}{\widthof{\@nomeBancaTres}}}%
 	\setlength{\@maiorBanca}{\maxof{\@maiorBanca}{\widthof{\@nomeBancaQuatro}}}%
	
    \ifthenelse{\equal{\@defesa}{\@empty}}% % se não existir data de defesa
    {}%                                     % não produza nada
    {\noindent APROVADA em \@defesa.}%   % caso contrario, escreva-a
    %
    % Escreve a banca
    \begin{itemize}[align=left, left=0cm, leftmargin=!, labelwidth=\@maiorBanca, labelsep=2ex, noitemsep, nosep]
		\item[\@nomeBancaUm] \@instBancaUm
	      
		\ifthenelse{\equal{\@nomeBancaDois}{\@empty}}{} % se 2. banca nao existir, nao produza nada
	    {\item[\@nomeBancaDois] \@instBancaDois} % caso contrario, escreva-a
	         
	    \ifthenelse{\equal{\@nomeBancaTres}{\@empty}}{} % se 3. banca nao existir, nao  produza nada
	    {\item[\@nomeBancaTres] \@instBancaTres}% caso contrario, escreva-a
	                  
	    \ifthenelse{\equal{\@nomeBancaQuatro}{\@empty}}{} % se 4. banca nao existir, nao produza nada
	    {\item[\@nomeBancaQuatro] \@instBancaQuatro}%   % caso contrario, escreva-a
    \end{itemize}
      
    \vspace{\stretch{.6}}
       
    \begin{center}
        \ifthenelse{\equal{\@orientadora}{\@empty}}
    	{\@orientador\par
    	 Orientador}
	    {\@orientadora\par
	    Orientadora}

        \ifthenelse{\equal{\@coorientador}{\@empty}}{}% se coorientador nao existir, nao produza nada
        {\vspace{\stretch{.5}}                        % caso contrario, escreva-o
            \@coorientador\par
            Co-Orientador}
        
        \ifthenelse{\equal{\@coorientadora}{\@empty}}{}% se coorientadora nao existir, nao produza nada
        {\vspace{\stretch{.5}}                        % caso contrario, escreva-a
            \@coorientadora\par
            Co-Orientadora}
        

        \vspace*{\stretch{.6}}
		
		
        {\bf\MakeUppercase\@local}\par
        {\bf\@date}
    \end{center}   
    
    % Volta o espaçamento para 1.5
    \renewcommand{\baselinestretch}{1.5}\normalsize 
    \clearpage
} 
%######################################################################


%######################################################################
% Páginas de Dedicatória, Agradecimentos e de Epígrafe
% Dedicatoria
\newcommand{\dedic}[1]{%   
    \null\vfill
    \begin{flushright}{\textit{#1}}\end{flushright}
    \vspace*{1cm}
    \clearpage
}


% Agradecimentos
\renewcommand{\thanks}[1]{%
    \begin{center}\textbf{AGRADECIMENTOS}\end{center}
    #1
    \clearpage
}


% Pagina de epigrafe
\newcommand{\epigrafe}[1]{           
    \null\vfill
    \begin{flushright}{\it #1}\end{flushright}
    \vspace*{1cm}
    \clearpage
}
%######################################################################


%######################################################################
% Resumo e palavras-chave
\def\palchaves#1{\gdef\@palchaves{\nh{#1}}} % palavras-chave da monografia
\palchaves{} %inicialmente vazio
\def\keywords#1{\gdef\@keywords{\nh{#1}}} % palavras-chave da monografia (em ingles)
\keywords{} %inicialmente vazio

\newcommand{\resumo}[1]{
    \newpage
                
    \begin{center}
        \textbf{RESUMO}
    \end{center}
    
    \noindent #1\par
    
    \vspace{\baselineskip}
    % evita texto escapando da margem
    {\sloppy\noindent Palavras-chave: \@palchaves\par}%
	
    \clearpage
}

\newcommand{\abstract}[1]{
    \newpage 
                          
    \begin{center}
        \textbf{ABSTRACT}
    \end{center}
    
    \noindent #1\par
    
    \vspace{\baselineskip}
    % evita texto escapando da margem
    {\sloppy\noindent  Keywords: \@keywords\par}%
       
    \clearpage
}
%######################################################################


%######################################################################
% Resumo e palavras-chave
\newcommand{\indicadoresdeimpacto}[1]{
    \newpage
                          
    \begin{center}
        \textbf{INDICADORES DE IMPACTO}
    \end{center}
    
    \noindent #1\par
    
    \clearpage
}

\newcommand{\impactindicators}[1]{
    \newpage
                          
    \begin{center}
        \textbf{IMPACT INDICATORS}
    \end{center}
    
    \noindent #1\par
    
    \clearpage
}
%######################################################################


%######################################################################
% Sumario, 
% adaptado do Renato
\renewcommand{\tableofcontents}{
    \newpage
    \begin{center}\textbf{\MakeUppercase{\contentsname}}\end{center}
    \normalfont\normalsize\@starttoc{toc}
    \clearpage
}
%######################################################################


%######################################################################
% Arrumando Lista de Figuras, Lista de Tabelas e
% Criando outras listas
\RequirePackage{float}
\floatstyle{plaintop}

%Criando comando da Fonte
\newcommand{\fontename}{Fonte}
\newcommand{\fonte}[1]{\par\small\fontename: #1\par}

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
   \clearpage%
}

% Lista de Figuras
%\newfloat{figure}{htb!}{lff}[chapter]
%\floatname{figure}{Figura}
\renewcommand{\listoffigures}{%
	{%
	\renewcommand{\numberline}{Figura~}
	\listof{figure}{Lista de Figuras}}}

% Lista de Tabelas
%\newfloat{table}{htb!}{ltt}[chapter]
%\floatname{table}{Tabela}
\renewcommand{\listoftables}{%
	{%
	\renewcommand{\numberline}{Tabela~}
	\listof{table}{Lista de Tabelas}}}

% Lista de Exemplos
\newcommand{\exemploname}{Exemplo}
\newfloat{exemplo}{htb!}{loe}[chapter]
\floatname{exemplo}{\exemploname}
\newcommand{\listofexemplos}{%
	{%
	\renewcommand{\numberline}{\exemploname~}
	\listof{exemplo}{Lista de Exemplos}}}

% Lista de Quadros
\newcommand{\quadroname}{Quadro}
\newfloat{quadro}{htb!}{loq}[chapter]
\floatname{quadro}{\quadroname}
\newcommand{\listofquadros}{%
	{%
	\renewcommand{\numberline}{\quadroname~}
	\listof{quadro}{Lista de Quadros}}}

% Lista de Gráficos
\newcommand{\graficoname}{Gráfico}
\newfloat{grafico}{htb!}{lgg}[chapter]
\floatname{grafico}{\graficoname}
\newcommand{\listofgraficos}{
	{%
	\renewcommand{\numberline}{\graficoname~}
	\listof{grafico}{Lista de Gráficos}}}

% Lista de Teoremas
\newcommand{\teoremaname}{Teorema}
\newfloat{teorema}{htb!}{ltt}[chapter]
\floatname{teorema}{\teoremaname}
\newcommand{\listofteoremas}{
	{%
	\renewcommand{\numberline}{\teoremaname~}
	\listof{teorema}{Lista de Teoremas}}}

% Lista de Ilustrações
\newcommand{\ilustracaoname}{Ilustração}
\newfloat{ilustracao}{htb!}{loi}[chapter]
\floatname{ilustracao}{\ilustracaoname}
\newcommand{\listofilustracoes}{
	{%
	\renewcommand{\numberline}{\ilustracaoname~}
	\listof{ilustracao}{Lista de Ilustrações}}}
%######################################################################


%######################################################################
% Imprimindo os glossários
%  comando para imprimir corretamente os títulos
\renewcommand{\glossarysection}[2][]{%
	{\centering\bfseries\MakeUppercase{#2}\par}
	\vspace{0.25cm}
	% somente glossário vai para o sumário
	\ifthenelse{\equal{#2}{Glossário}}{
		\phantomsection%
		\addcontentsline{toc}{chapter}{\numberline{} \MakeUppercase{#1}}}{}
}


% lista de abreviaturas
\newcommand{\listofabreviaturas}{%
	\newpage
	\renewcommand{\baselinestretch}{1.0}\normalsize%
	\printnoidxglossary[
		title={LISTA DE ABREVIATURAS},
		type={abbreviations},
		nonumberlist,
		style=long3col]
	\renewcommand{\baselinestretch}{1.5}\normalsize}

% lista de siglas
\newcommand{\listofsiglas}{%
	\newpage
	\renewcommand{\baselinestretch}{1.0}\normalsize%
	\printnoidxglossary[
		title={LISTA DE SIGLAS},
		type={\acronymtype},
		nonumberlist,
		style=long3col]
	\renewcommand{\baselinestretch}{1.5}\normalsize}
	
% lista de símbolos
\newcommand{\listofsimbolos}{%
	\newpage
	\renewcommand{\baselinestretch}{1.0}\normalsize%
	\printnoidxglossary[
		title={LISTA DE SÍMBOLOS},
		type={symbols},
		nonumberlist,
		sort=use,
		style=long3col]
	\renewcommand{\baselinestretch}{1.5}\normalsize}
	
% glossário
\newcommand{\glossario}{%
	\newpage
	\renewcommand{\glsnamefont}[1]{\textbf{\makefirstuc{##1}}:}%
	\printnoidxglossary[
		title={Glossário},
		nonumberlist,
		style=tree]}
%######################################################################


%######################################################################
% Imprimindo índice
%  corrigindo a altura do índice
%\indexprologue{\vspace{-1.0cm}}

\newcommand{\indice}{%
	\printindex
	\addcontentsline{toc}{chapter}{\numberline{} ÍNDICE REMISSIVO}}
%######################################################################


%######################################################################
% Remodelando o formato dos títulos de tabelas e figuras
\RequirePackage[labelsep=endash]{caption}  

\DeclareCaptionListFormat{ufla}{#1#2~\textendash~}

\captionsetup{listformat=ufla,format=hang}

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
% Redefininido notas de rodapé (não identadas e tamanho 11)
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
\renewcommand\theanexo{\AlphAlph{\value{anexo}}}
\newcommand{\anexoname}{Anexo}

\newcommand\anexos{%
	\appendix%
	\cleardoublepage%
	\phantomsection%
    {\centering\bf ANEXOS\par} 
    \vspace{0.3cm}
	\addcontentsline{toc}{chapter}{\numberline{} ANEXOS}
}


\newcommand\anexo[1]{
  \ifthenelse{\equal{\@primeiroanexo}{true}}{% se for primeiro anexo,
    \anexos                  % crie formatação dos anexos
    \primeiroanexo{false}    % marque que já passou do primeiro
  } {\par\vspace{\baselineskip}} % senão, crie espaço vertical 
  \refstepcounter{anexo}
  {
  	\noindent\bf ANEXO~\theanexo\ -- \MakeUppercase{#1}
  	\vspace{\baselineskip}}
}

% Apêndices
\def\primeiroapendice#1{\gdef\@primeiroapendice{#1}} % verificando se é primeiro apêndice
\primeiroapendice{true} %inicialmente sim (true)
\newcounter{apendice}[chapter] %contador para os apêndices (uso em referências)
\renewcommand\theapendice{\AlphAlph{\value{apendice}}}
\newcommand{\apendicename}{Apêndice}

\newcommand\apendices{%
	\appendix%
	\cleardoublepage%
	\phantomsection%
    {\centering\bf APÊNDICES\par} 
    \vspace{0.3cm}
	\addcontentsline{toc}{chapter}{\numberline{} APÊNDICES}
}


\newcommand\apendice[1]{
  \ifthenelse{\equal{\@primeiroapendice}{true}}{% se for primeiro apêndice,
    \apendices                  % crie cabeçalho dos apendices
    \primeiroapendice{false}    % marque que já passou do primeiro
  } {\par\vspace{\baselineskip}} % senão, crie espaço vertical
  \refstepcounter{apendice}
  {
  	\noindent\bf APÊNDICE~\theapendice\ -- \MakeUppercase{#1}%
    \vspace{\baselineskip}}}
%######################################################################

%######################################################################
% Comando auxiliar para formatação da seção de referências
\newcommand\referencias{%
   \phantomsection%
   \addcontentsline{toc}{chapter}{\numberline{} REFERÊNCIAS}%
   
   % vspaces para corrigir a margem superior.
   \renewcommand{\bibname}{%
   	\centering\vspace{1.8ex}%
   	\bf REFERÊNCIAS\par
   	\vspace{-1.8ex}}%
}
%######################################################################

%######################################################################
% Comando para linha à direita em tabelas
\newcommand{\linhadir}[1]{\multicolumn{1}{c|}{#1}}

%######################################################################

%######################################################################
% no início, redefinimos o comando de fazer títulos e as entradas do sumário
% e margens
\AtBeginDocument{
    \pagestyle{empty}
    
    
    \makenoidxglossaries % gera os glossários (gera, não imprime)
    
    \indexsetup{firstpagestyle=ufla}
    \makeindex[title={\hfill \bfseries{ÍNDICE REMISSIVO} \hfill},%
    	columnsep=15pt] % gera índices
    
    \def\maketitle{    %\maketitle
    	\setcounter{page}{0}
        \imprimeCapa
        
        \imprimeFolhaRosto
        
        \newpage
        \newcounter{oldPageNumber}
        \setcounter{oldPageNumber}{\value{page}}
        \setcounter{page}{-1}
        \imprimeFichaCat
        \clearpage
        \setcounter{page}{\value{oldPageNumber}}
     
        \ifthenelse{\equal{\@defesa}{\@empty}}% % se não existir data de defesa
        {}%                                     % não produza 
        {\imprimeFolhaAprovacao}%               % caso contrário produza folha de aprovação 
    }
    
    \newlength{\identation}
    \setlength{\identation}{0cm}
    \def\l@chapter{\bfseries\@dottedtocline{0}{\identation}{\widthsechold}}
    \def\l@section{\@dottedtocline{1}{\identation}{\widthsechold}}
    \def\l@subsection{\@dottedtocline{2}{\identation}{\widthsechold}}
    \def\l@subsubsection{\@dottedtocline{3}{\identation}{\widthsechold}}
    \def\l@subsubsubsection{\@dottedtocline{4}{\identation}{\widthsechold}}
    \def\l@paragraph{\@dottedtocline{5}{\identation}{\widthsechold}}
    \def\l@subparagraph{\@dottedtocline{6}{\identation}{\widthsechold}}
}


%######################################################################

%######################################################################
% salvando a maior profundidade utilizada para próxima execução
\AtEndDocument{
    \immediate\write\@mainaux{\string\global\widthsechold=\the\widthsec}%
}
%######################################################################
