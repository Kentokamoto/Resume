\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Custom_CV}[2015/03/08 LastModified]
\LoadClass{article}
\RequirePackage{latexsym}
\RequirePackage{titlesec}  % Used to customize the commands found in a class
\RequirePackage[empty]{fullpage}
\RequirePackage[pdftex]{hyperref}
\RequirePackage{color}
\RequirePackage{verbatim}

%\RequirePackage{helvet}
\urlstyle{same}
\textheight=9.0in
\raggedbottom
\raggedright

\titleformat{\section}         % Customise the \section command 
{\bfseries\Large\scshape\raggedright} % Make the \section headers large (\Large),
    % small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading
\titleformat{\subsection}
{\large\raggedright}
{}{0em}
{}

\titleformat{\subsubsection}
{\raggedright}
{}{2em}
{}

\titlespacing*{\section}
{1pt}
{0pt}{7pt}


\titlespacing*{\subsection}
{1pt}
{0pt}{0pt}

\titlespacing*{\subsubsection}
{0pt}
{0pt}{0pt}


\newcommand{\datedsection}[2]{%
    \subsection{\textbf{#1} \hfill #2}%
}
\newcommand{\EducationGPA}[2]{%
    \subsubsection{Major: #1 \hfill #2}%
}


\newcommand{\header}[7]{
    \begin{tabular*}{7.5in}{l@{\extracolsep{\fill}}r}
    \textbf{\huge \href{#7}{#1}} & \href{mailto:#2}{#2}\\
        \small{#3} & #5 \\
        \small{#4} & \url{#6} \\
        \end{tabular*}
    \\
}
\newcommand{\resitem}[1]{\item #1}
