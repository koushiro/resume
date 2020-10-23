% tells the compiler the current version of LaTeX.
\NeedsTeXFormat{LaTeX2e}
% gives the compiler some information about the package.
% The first argument should match the filename of the class file;
% The second argument is optional and provides a description of the class.
\ProvidesClass{resume}[2018/07/30 My customized resume class]

% include article.cls and load all of the commands and styles defined in it.
\LoadClass{article}

%-------------------------------------------------------------------------------
%                           Required Package
%-------------------------------------------------------------------------------
% \RequirePackage command makes sure that each package is only loaded once, 
% even if called multiple times from different style and class files.

% package 'titlesec' provides an easy way to to customise header styles.
\RequirePackage{titlesec}

% \bf, \it - make the heading bold or italic.
% \scshape - small capitals.
% \small, \normalsize, \large, \Large, \LARGE, \huge, \Huge - set the font size.
% \rmfamily, \sffamily, \ttfamily - set the font type.
\titleformat{\section}              % Customise the \section command 
    {\Large\scshape\raggedright}    % large, small capitals and left aligned
    {}{0em}                         % Can be used to give a prefix to all sections
    {}                              % Can be used to insert code before the heading
    [\titlerule]                    % Inserts a horizontal line after the heading

\titleformat{\subsection}
    {\large\raggedright}
    {}{0em}
    {}

% https://ctan.org/pkg/hyperref
% Extensive support for hypertext in LATEX, use \href
\RequirePackage{hyperref}
% Extension option: Hide links (removing color and border).
\hypersetup{hidelinks}

% use fontawesome.sty.
\RequirePackage{fontawesome}

% https://ctan.org/pkg/xifthen
% Extended conditional commands, use \ifthenelse, \isempty.
\RequirePackage{xifthen}

% https://ctan.org/pkg/geometry
% Flex­i­ble and com­plete in­ter­face to doc­u­ment di­men­sions.
\RequirePackage[
	a4paper,
    margin=0.5in
]{geometry}

%-------------------------------------------------------------------------------
%                               New Command
%-------------------------------------------------------------------------------
% The #number refer to the numberth parameter that are being passed into the command.
% The [number] refers to the number of parameters being passed in to the function.

\newcommand{\name}[1]{
    \centerline{\Huge{#1}}
    \vspace{3ex}
}

\newcommand{\phone}[1]{
    \faPhone\ %
    {#1}
}

\newcommand{\email}[1]{
    \faEnvelope\ %
    \href{mailto:#1}{#1}
}

\newcommand{\github}[2][]{
    \faGithub\ %
    \ifthenelse{\isempty{#1}}
    {\href{#2}{#2}}
    {\href{#2}{#1}}
}

\newcommand{\link}[2][]{
    \faLink\ %
    \ifthenelse{\isempty{#1}}
    {\href{#2}{#2}}
    {\href{#2}{#1}}
}

\newcommand{\contact}[1]{
    \centerline{\sffamily\large{#1}}
    \vspace{1.5ex}
}

\newcommand{\fillsection}[2]{
    \section[#1]{#1 \hfill #2}
}
  
\newcommand{\fillsubsection}[2]{
    \subsection[#1]{#1 \hfill #2}
}

\newcommand{\fillline}[2]{
  {\par #1 \hfill #2 \par}
}