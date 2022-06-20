# How to use this template
[Download the file](./examples/frontpage/front_page_gwp.zip), unzip it and compile it using your local LaTeX editor or, recommended, upload the zipped file and open it using [Overleaf](https://www.overleaf.com?r=049a7499&rm=d&rs=b).

Fill the variables with the required information (e.g.):
% Insert the required information 
\def\gwpmodule{MScFE 600 Financial Data} %Module Number and Name<br>
\def\gwptitle{Example title} % work title<br>
\def\gwpgroup{Group 25} % group number<br>
<br>

% Define authors<br>
\def\authone{Tea Toradze}% Insert Name and Surname<br>
\def\authtwo{Andrea Dalseno}<br>
\def\auththree{Author 3}<br>
<br>
% Define country<br>
\def\countryone{UK}<br>
\def\countrytwo{Malta}<br>
\def\countrythree{Country 3}<br>
<br>
% Define email<br>
\def\emailone{email1@example.com}<br>
\def\emailtwo{email2@example.com}<br>
\def\emailthree{email3@example.com}<br>
<br>
% Define non contributing members<br>
\newcounter{contone} % Do not modify this<br>
\newcounter{conttwo} % Do not modify this<br>
\newcounter{contthree} % Do not modify this<br>
<br>
\setcounter{contone}{1} % set to 0 for non contributing member -> \setcounter{contone}{0}<br>
\setcounter{conttwo}{1}<br>
\setcounter{contthree}{0}<br>

Will produce the following front page:<br>
<img src="./examples/frontpage/frontpage_gwp_MScFE_600.png">

The high resolution PDF is available [here](./examples/frontpage/frontpage_gwp_MScFE_600.pdf)
