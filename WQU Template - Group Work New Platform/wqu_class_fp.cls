% Class file for World Quant University Group Work Projects
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wqu_class_fp}[2022/06/20 WQU Group Work Front Page]
\LoadClass[a4paper,11pt]{article}

% Main packages for the template
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{geometry}
\geometry{
    a4paper,
    total={160mm,260mm},
    left=23mm,
    top=23mm,
    headheight=26pt, 
    includeheadfoot
}

% Classes and packages
\RequirePackage{titling}
\RequirePackage{indentfirst}
\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{comment}
\RequirePackage[american]{babel}
\RequirePackage{lastpage}
\RequirePackage{trimspaces}
\RequirePackage{lipsum}% for fake text
% Define custom gray colour (used in minted background)
\RequirePackage[dvipsnames, table]{xcolor}
\definecolor{Lgray}{gray}{0.9}
\definecolor{DarkBlue}{rgb}{0.07,0.17,0.5}

% Minted package to render code snippets
\RequirePackage{minted}

% Minted package to render code snippets
\usemintedstyle{borland}




\RequirePackage{csquotes}
\RequirePackage{import}
\RequirePackage{xifthen}
\RequirePackage{adjustbox}

\RequirePackage{multicol}
\setlength{\columnsep}{0.7cm}


\renewcommand{\thesection}{}% Remove section references...
\renewcommand{\thesubsection}{\arabic{subsection}}%... from subsections
% Used to manage authors
\newcommand{\ifcont}[3]{\ifnum#1=1 #2 \else #3\fi}

% Ornamental divider (optional)
\newcommand*\onramentaldivider{%
    \medskip
    \begin{center}
    -::- \ \ - = o = - \ \ -::- \ \ - = o = - \ \ -::- \ \ - = o = - \ \ -::- 
    \end{center}}
    
% Hyper-reference style (required for URL and footer citations)
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=blue,
}
\urlstyle{same}
