\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report}[2025/03/21 Custom Thesis Class]

% Default: 12pt Times New Roman
\LoadClass[12pt]{article}

\RequirePackage{graphicx}  % For including images
\RequirePackage{fancyhdr}  % For custom headers/footers
\RequirePackage{geometry}  % For margins
\RequirePackage{titlesec}  % For section title customization
\RequirePackage{datetime}  % For date formatting
\RequirePackage{setspace}  % For line spacing
\RequirePackage[backend=biber,style=numeric,sorting=none]{biblatex}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{subcaption} 
\RequirePackage{amsmath}
\RequirePackage{xcolor}
\RequirePackage[acronym]{glossaries}
\RequirePackage{parskip}

\setstretch{1.25}  % Set line spacing to 1.25
\setlength{\parindent}{0pt}  % No paragraph indentation
\setlength{\parskip}{1em}    % 1em vertical space between paragraphs
\glsdisablehyper

\addbibresource{references.bib}

% Default Image Path
\graphicspath{{img/}}

% Set margins
\geometry{a4paper, left=2.5cm, right=2.5cm, top=3cm, bottom=3cm}
\setlist{noitemsep, topsep=1pt}

% Set date format to DD mmmm YYYY
\newdateformat{customdate}{\THEDAY~\monthname[\THEMONTH]~\THEYEAR}

% Define custom commands
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\subject}[1]{\gdef\@subject{#1}}
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand{\supervisorAffiliation}[1]{\gdef\@supervisorAffiliation{#1}}

% Default values for warnings
\def\@subtitle{\@latex@warning@no@line{No \noexpand\subtitle given}}
\def\@supervisor{\@latex@warning@no@line{No \noexpand\supervisor given}}
\def\@affiliation{\@latex@warning@no@line{No \noexpand\affiliation given}}

% Define the title page
\def\maketitle{
    \begin{titlepage}
        \vspace*{2ex}
        \begin{center}
            \hfill \includegraphics[clip=,scale=.35]{thi_AImotion.png}
        \end{center}
        \vspace*{6ex}
        \begin{center}
            {\LARGE \textsc{Technische Hochschule Ingolstadt}} \\[4ex]
            {\Large Faculty of Computer Science \\}
        \end{center}
        \vspace*{3ex}
        \begin{center}
            {\LARGE \textbf{~\\ \@title} \\}
        \end{center}
        \vspace*{8ex}
        \begin{center}
            {\huge \textsc{\@subtitle} \\[3ex] }
            {\Large \@author  \\}
        \end{center}
        \vspace*{15ex}
        \begin{center}
            {\large
            \begin{tabular}{ r l }
                Supervisor: & \@supervisor \\ 
                Date: & \customdate\today
            \end{tabular}
            }
        \end{center}	
    \end{titlepage}
}
% Header & Footer
\lhead{\@title}
\renewcommand{\footrulewidth}{0.4pt}
\rfoot{\thepage}
\lfoot{\@author}
\cfoot{\nouppercase{\rightmark}}


% Setup Header & Footer
\pagestyle{fancy}
\fancyhf{}  % Clear all default header/footer settings
\fancyhead[L]{\textbf{\@title}}  % Left header: Title
% \fancyhead[RO]{\includegraphics[width=1cm]{thi_AImotion_logo} }
\renewcommand{\headrulewidth}{0.4pt}  % Horizontal line under header

% Footer Configuration
\renewcommand{\footrulewidth}{0.4pt}
\fancyfoot[L]{\@author}  % Bottom left: Author Name
\fancyfoot[C]{\nouppercase{\rightmark}}  % Bottom center: Section title
\fancyfoot[R]{\thepage}  % Bottom right: Page number




\endinput
