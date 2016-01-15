\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ansjournal}[2012/09/21]
\LoadClass[11pt,twoside]{article}
\typeout{Loading ANS journal document class: includes [11pt,twoside]{article}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages needed
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{cite}        % texlive-latex-recommended
\RequirePackage{titlesec}    % texlive-latex-extra
\RequirePackage{setspace}    % texlive-latex-recommended
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}    % texlive-latex-base
\RequirePackage{times}       % texlive-fonts-recommended
\RequirePackage{lastpage}    % texlive-latex-extra
\RequirePackage{caption}     % texlive-latex-recommended
\RequirePackage{titling}     % texlive-latex-extra
\RequirePackage[noblocks]{authblk}     % texlive-latex-extra
\RequirePackage[t1,nosfdefault,semibold]{sourcesanspro}
\RequirePackage{newtxtext,newtxmath}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% page layout stuff

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9.0in}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\hoffset}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% headers and such (fancyhdr)
%
\setlength{\voffset}{-46.8pt}
\setlength{\hoffset}{0.0in}
\setlength{\topmargin}{12pt}
\setlength{\headsep}{16.8pt}
\setlength{\headheight}{18pt}
\setlength{\footskip}{0.4in}

%\setlength{\parindent}{0pt}
%\addtolength{\parskip}{1.0\baselineskip}

\newcommand{\abstractText}[1]{\gdef\@abstractText{#1}}
\newcommand{\keywordsText}[1]{\gdef\@keywordsText{#1}}
\newcommand{\authorHead}[1]{\gdef\@authorHead{#1}}
\newcommand{\shortTitle}[1]{\gdef\@shortTitle{#1}}
\newcommand{\confTitle}[1]{\gdef\@confTitle{#1}}
\newcommand{\confLocation}[1]{\gdef\@confLocation{#1}}
\newcommand{\confPublished}[1]{\gdef\@confPublished{#1}}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Header/footer for other pages
%\fancyhf{}
%\fancyhead[CE]{{\scriptsize \@authorHead}}
%\fancyhead[CO]{{\scriptsize \@shortTitle}}
%\lfoot{\scriptsize{\@confTitle, \\ \@confLocation.}}
%\rfoot{\thepage/\pageref{LastPage}}
%\pagestyle{fancy}

% Header/footer for first page
%\fancypagestyle{plain}{
%  \fancyhf{}
%  \lhead{\scriptsize{\emph{\@confTitle} \\ \@confLocation, \@confPublished}}
%  \lfoot{}
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Styles for \section, \subsection, \subsubsection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\Alph{subsection}}

\titlelabel{\thetitle.\enskip}  % Add period after section number

% Set format for headings
\titleformat*{\section}{\fontfamily{SourceSansPro-LF}\selectfont\normalsize\bfseries\MakeUppercase}
\titleformat{\subsection}{\fontfamily{SourceSansPro-LF}\selectfont\normalsize\bfseries}{\thesection.\thesubsection.\enskip}{0pt}{}
\titleformat*{\subsubsection}{\normalsize\bfseries}

% Set spacing for headings
\titlespacing{\section}{0pt}{1.0ex plus 1ex minus .2ex}{1.0\baselineskip}
\titlespacing{\subsection}{0pt}{1.0\baselineskip}{1.0\baselineskip}
\titlespacing{\subsubsection}{0pt}{1.0ex plus 1ex minus .2ex}{.2ex plus .2ex}


\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\renewcommand{\footnotesize}{\fontsize{9}{10.8pt}\selectfont}
\renewcommand{\small}{\fontsize{10}{12pt}\selectfont}
\renewcommand{\large}{\fontsize{14}{16.8pt}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Captions for figures and tables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareCaptionLabelSeparator{twonewline}{\\ \vspace{\baselineskip}}
\captionsetup{font=normalfont, labelsep=period}
\captionsetup[figure]{name=Fig.}
\captionsetup[table]{name=TABLE, skip=-10pt, labelsep=twonewline}
\renewcommand{\thetable}{\@Roman\c@table}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title/Author/Abstract block
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\droptitle}{-44.9pt}
\pretitle{\begin{flushleft}\LARGE\bfseries\fontfamily{SourceSansPro-LF}\selectfont}
\posttitle{\end{flushleft}}
%\renewcommand{\maketitlehookb}{
%  \vspace{10pt}
%  \let\oldparskip\parskip
%  \setlength{\parskip}{-7pt}
%}

\preauthor{\begin{flushleft}}
\postauthor{\end{flushleft}\par\vspace{-30pt}}
\renewcommand\Authfont{\large}
\renewcommand{\Affilfont}{\normalsize\itshape}
\setlength\affilsep{0pt}
\date{}

\renewcommand{\maketitlehookd}{
  \begin{abstract}
    \@abstractText

    \vspace{\baselineskip}
    \noindent\textup{\textbf{Keywords}} --- \@keywordsText
  \end{abstract}
}


\RequirePackage[runin]{abstract}
\renewcommand{\abstractnamefont}{\normalfont}
\renewcommand{\abstracttextfont}{\normalfont\itshape}
\renewcommand{\abstractname}{\textbf{Abstract} ---}
\setlength{\absleftindent}{2.0\parindent}
\setlength{\absparindent}{0pt}
\setlength{\abstitleskip}{-\parindent}

%\AtBeginDocument{\justify}
