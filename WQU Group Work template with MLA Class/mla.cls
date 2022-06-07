%%
%% This is file `mla.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% mla_a4.dtx  (with options: `mla')
%% 
%% This is a generated file.
%% 
%% Copyright 2019 Seth Price
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or any later version.
%% The latest version of this license is in:
%% 
%%   https://www.latex-project.org/lppl/lppl-1-3c/
%% 
%% and version 1.3c or later is part of all distributions
%% of LaTeX version 2008/05/04 or later.
%% 

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mla}
    [2021/09/14 v1.0 MLA Paper Class]

\LoadClass[a4paper,11pt]{article}
\newcommand{\mladate}{%
    \the\day\
    \ifcase\the\month
        \or January
        \or February
        \or March
        \or April
        \or May
        \or June
        \or July
        \or August
        \or September
        \or October
        \or November
        \or December
    \fi
    \the\year
}
\newif\ifMLA@seven
\newif\ifMLA@eight
\newif\ifMLA@eightalt
\newif\ifMLA@figures
\newif\ifMLA@notes
\newif\ifMLA@microtype
\newif\ifMLA@paperheader
\newif\ifMLA@pageheader
\newif\ifMLA@plainheadings
\newif\ifMLA@fullpage
\DeclareOption{mla7}{\MLA@seventrue\MLA@eightfalse\MLA@eightaltfalse}
\DeclareOption{mla8}{\MLA@sevenfalse\MLA@eighttrue\MLA@eightaltfalse}
\DeclareOption{mla8alt}{\MLA@sevenfalse\MLA@eightfalse\MLA@eightalttrue}
\MLA@figurestrue
\MLA@notestrue
\DeclareOption{nofigures}{\MLA@figuresfalse}
\DeclareOption{nonotes}{\MLA@notesfalse}
\DeclareOption{microtype}{\MLA@microtypetrue}
\MLA@paperheadertrue
\MLA@pageheadertrue
\DeclareOption{nopaperheader}{\MLA@paperheaderfalse}
\DeclareOption{nopageheader}{\MLA@pageheaderfalse}
\DeclareOption{noheaders}{\MLA@paperheaderfalse\MLA@pageheaderfalse}
\MLA@plainheadingsfalse
\DeclareOption{plainheadings}{\MLA@plainheadingstrue}
\MLA@fullpagefalse
\DeclareOption{fullpage}{\MLA@fullpagetrue}
\DeclareOption*{%
    \ClassWarning{mla}{Unknown option `\CurrentOption'; ignoring}
}
\ExecuteOptions{mla8}
\ProcessOptions\relax
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{fullpage}
\RequirePackage{ragged2e}
\RequirePackage{newtxtext}
\RequirePackage{titlesec}
\RequirePackage{xstring}
\RequirePackage[american]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{csquotes}
\RequirePackage{hanging}
\ifMLA@seven
    \RequirePackage[style=mla7,noremoteinfo=false,
                    backend=biber]{biblatex}
\fi
\ifMLA@eight
    \RequirePackage[style=mla-new,noremoteinfo=false,
                    backend=biber]{biblatex}
\fi
\ifMLA@eightalt
    \RequirePackage[style=mla,noremoteinfo=false,
                    backend=biber]{biblatex}
\fi
\ifMLA@figures
    \RequirePackage{caption}
    \RequirePackage{float}
    \RequirePackage{graphicx}
\fi
\ifMLA@notes
    \RequirePackage{enotez}
\fi
\ifMLA@microtype
    \RequirePackage{microtype}
\fi
\RequirePackage{hyperref}
\hypersetup{hidelinks}
\ifMLA@microtype
    \microtypesetup{activate=false}
\fi
\linespread{1.905}
\hyphenpenalty=10000
\pretolerance=10000
\setlength{\parindent}{0.5in}
\setlength{\RaggedRightParindent}{\parindent}
\setlength{\parskip}{0em}
\setlength{\topsep}{0em}
\setlength{\partopsep}{0em}
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue
\ifMLA@fullpage
    \widowpenalty=0
    \clubpenalty=0
    \interlinepenalty=0
\else
    \widowpenalty=10000
    \clubpenalty=10000
\fi
\RaggedRight
\renewenvironment{noindent}{%
    \edef\tmpind{\parindent}
    \setlength{\parindent}{0pt}
}{%
    \setlength{\parindent}{\tmpind}
    \undef{\tmpind}
}
\setlength{\textheight}{9in}
\setlength{\textwidth}{6.5in}
\fancypagestyle{norule}{%
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
\fancyhf{}
\pagestyle{headings}
\pagestyle{norule}
\ifMLA@pageheader
    \ifx\@author\@empty
        \fancyhead[RO]{\thepage}
    \else
        \fancyhead[RO]{{\StrBehind{\@author}{ }[\last]\last} page \thepage}
    \fi
\fi
\setlength{\headheight}{18pt}
\setlength{\headsep}{12pt}
\setlength{\voffset}{-34pt}
\newcommand*{\professor}[1]{\gdef\@professor{#1}}
\newcommand*{\course}[1]{\gdef\@course{#1}}
\title{}
\author{}
\professor{}
\course{}
\date{\mladate}
\newcommand{\makemlaheader}{%
    \begin{noindent}
\ifx\@author\@empty\else\@author\\\fi
\ifx\@professor\@empty\else\@professor\\\fi
\ifx\@course\@empty\else\@course\\\fi
\ifx\@date\@empty\else\@date\\\fi
        \ifx\@title\@empty\else\begin{center}\@title\end{center}\fi
    \end{noindent}
    % for some reason, this blank line is necessary
}
\renewcommand{\maketitle}{\makemlaheader}
\ifMLA@paperheader
    \AtBeginDocument{\maketitle}
\fi
\renewcommand{\thesection}{\@arabic\c@section}
\renewcommand{\thesubsection}{\thesection.\@arabic\c@subsection}
\renewcommand{\thesubsubsection}{\thesubsection.\@arabic\c@subsubsection}
\ifMLA@plainheadings
    \titleformat{\section}[block]{\normalsize}{}{0pt}{}[]
    \titleformat{\subsection}[block]{\normalsize}{}{0pt}{}[]
    \titleformat{\subsubsection}[block]{\normalsize}{}{0pt}{}[]
\else
    \titleformat{\section}[block]{\Large\sc}{\thetitle.\enspace}{0pt}{}[]
    \titleformat{\subsection}[block]{\large\sc}{\thetitle.\enspace}{0pt}{}[]
    \titleformat{\subsubsection}[block]{\normalsize\sc}{\thetitle.\enspace}{0pt}{}[]
\fi
\titlespacing*{\section}{0pt}{0pt}{0pt}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}
\titlelabel{}
\patchcmd{\ttl@select}{\strut}{}{}{}
\patchcmd{\ttlh@hang}{\strut}{}{}{}
\patchcmd{\ttlh@hang}{\strut}{}{}{}
\setlist[itemize]{%
    parsep=0pt,
    itemsep=0pt,
    topsep=0pt,
    leftmargin=\parindent
}
\setlist[enumerate]{%
    parsep=0pt,
    itemsep=0pt,
    topsep=0pt,
    leftmargin=\parindent
}
\renewenvironment{blockquote}{%
    \list{}{\leftmargin 0.5in}
    \item[]
    \setlength{\parindent}{0.5in}
    \vspace{-\topsep}
}{%
    \endlist
    \vspace{-\topsep}
}
\ifMLA@figures
    \setlength{\floatsep}{\baselineskip}
    \setlength{\intextsep}{\baselineskip}
    \setlength{\textfloatsep}{\baselineskip}
    \g@addto@macro\@floatboxreset\centering
\fi
\ifMLA@figures
    \renewcommand{\float@endH}{%
        \vspace{-12pt}
        \@endfloatbox\vskip\intextsep
        \if@flstyle\setbox\@currbox\float@makebox\columnwidth\fi
        \box\@currbox\vskip\intextsep\relax\@doendpe
    }
\fi
\ifMLA@figures
    \captionsetup{%
        font={footnotesize,it},
        labelfont={bf},
        labelformat=simple,
        labelsep=period,
        position=bottom,
        aboveskip=6pt,
        belowskip=-10pt
    }
\fi
\ifMLA@figures
    \captionsetup[figure]{name=Fig.}
\fi
\newenvironment{paper}{}{}
\newenvironment{notes}{%
    \newpage
    \begin{noindent}
        \pdfbookmark[0]{Notes}{notes}
        \section*{Endnotes}
    \end{noindent}
}{}
\ifMLA@notes
    \newlist{mlanotes}{description}{1}
    \setlist[mlanotes]{%
        parsep=0pt,
        itemsep=0pt,
        topsep=0pt,
        leftmargin=\parindent
    }
\fi
\ifMLA@notes
    \DeclareInstance{enotez-list}{mla}{list}{%
        heading = {},
        format = \small\normalfont,
        list-type = mlanotes
    }
    \setenotez{list-name={},list-style=mla,backref}
\fi
\newenvironment{workscited}{%
    \newpage
    \begin{noindent}
        \pdfbookmark[0]{Works Cited}{workscited}
        \section*{Works Cited}
    \end{noindent}
    %\vspace{-10pt} % XXX to counter unexplained space
}{}
\setlength{\bibhang}{\parindent}
\endinput
%%
%% End of file `mla.cls'.
