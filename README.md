## LaTeX-in-a-Minutes.tex
### Quick Start

**1. Clone the repository**

```bash
git clone https://github.com/mngugi/latex-in-minutes.git
cd latex-in-minutes

```
---

**2. Create your First Document**
+ Create a file named hello.tex

``` latex
\documentclass[12pt, letterpaper]{article}
\title{Hello World}
\author{Your Name}
\date{\today}

\begin{document}
\maketitle

Hello LaTeX! This is my first document.

\end{document}

```
## Quick Start Example

```latex
\documentclass[12pt, letterpaper]{article}
\usepackage{graphicx}
\usepackage{amsmath}

\title{My First Document}
\author{Your Name}
\date{\today}

\begin{document}

\maketitle

\section{Hello World}
This is my first \LaTeX\ document.

% Add an image
\includegraphics[width=0.5\textwidth]{example-image}
% Math equation
\[ E = mc^2 \]

---

**3. Compile to PDF**
+ Using command line:

```bash
pdflatex hello.tex

```
**Using Overleaf, Tex Studio, TeXMaker:***

+ Click the "Recompile" button

+ Download the PDF

---

## Project Structure

```text
latex-in-minutes/
│
├── README.md              # This file
├── LICENSE                # MIT License
│
├── examples/
│   ├── hello.tex         # Basic document
│   ├── formatting.tex    # Text formatting examples
│   ├── math.tex          # Mathematical equations
│   └── tables.tex        # Tables and arrays
│
├── templates/
│   ├── report.tex        # Report template
│   ├── letter.tex        # Business letter
│   └── resume.tex        # Resume/CV template
│
└── docs/
    ├── getting-started.md
    ├── commands-reference.md
    └── troubleshooting.md

```
---

### Basic Examples
### Text Formatting

```latex
\textbf{Bold text}
\textit{Italic text}
\underline{Underlined text}
\texttt{Monospace text}

```
### Lists

```latex
% Unordered list
\begin{itemize}
    \item First item
    \item Second item
\end{itemize}

% Ordered list
\begin{enumerate}
    \item First item
    \item Second item
\end{enumerate}
```
### Mathematical Equations

```latex
% Inline math
The formula $E = mc^2$ is famous.

% Displayed equation
\[
\int_0^1 x^2 dx = \frac{1}{3}
\]

% Numbered equation
\begin{equation}
    a^2 + b^2 = c^2
\end{equation}

```
---
### Tables

```latex
\begin{tabular}{|c|c|c|}
    \hline
    Name & Age & City \\
    \hline
    John & 25 & New York \\
    Jane & 30 & London \\
    \hline
\end{tabular}

```
### Including Images

```latex
\usepackage{graphicx}

\begin{figure}[h]
    \centering
    \includegraphics[width=0.5\textwidth]{image.jpg}
    \caption{Example image}
    \label{fig:example}
\end{figure}

```
### Common Commands
## Troubleshooting

### Common Issues and Solutions

| Issue | Solution | Code to Add |
|-------|----------|-------------|
| **Missing packages** | Install required package | `\usepackage{packagename}` |
| **Unicode characters** | Add input encoding | `\usepackage[utf8]{inputenc}` |
| **Images not showing** | Use correct compiler | Run `pdflatex` instead of `latex` |
| **Cross-references fail** | Compile twice | Run `pdflatex` two times |
| **Citations not working** | Run BibTeX | `pdflatex → bibtex → pdflatex → pdflatex` |

### Error Messages Reference

| Error | What It Means | How to Fix |
|-------|---------------|------------|
| `! Undefined control sequence` | You typed an unknown command | Check spelling or add required package |
| `! Missing $ inserted` | Math outside math mode | Wrap equations in `$...$` or `\[...\]` |
| `! LaTeX Error: Unknown float option` | Invalid figure placement | Use `h`, `t`, `b`, `p`, or `!` only |
| `! Paragraph ended before \usepackage` | Missing closing brace | Check for `}` or `]` in your code |
| `! File ended while scanning` | Unclosed environment | Add missing `\end{environment}` |

### Platform-Specific Solutions

#### Overleaf (Online)
- Click the "Recompile" button
- Check error logs in the bottom panel
- Use "Submit for review" for help

#### Local Installation (Linux)
```bash
# Install full LaTeX suite
sudo apt-get install texlive-full

# Fix common errors
sudo apt-get install --fix-broken

```
### Pictures and Images
## Pro Tips to Avoid This Next Time

**1.Use simple filenames**

```bash
# Good:
profile.jpg
image_01.png
my-figure.pdf

# Avoid:
My Profile Picture 2024.jpeg  # spaces
profilePicV2-FINAL(2).jpg     # special chars

```
**2. Copy-paste filenames**
```bash
# In terminal, get exact name:
ls -la

# Copy the exact output into your LaTeX code
```
**3. Add error handling**
```bash
% This will give better error messages
\usepackage{grffile}
```
**4. Use consistent naming**

```latex
% Define at top of document
\newcommand{\myimage}{profilePIc}

% Then use everywhere
\includegraphics[width=0.5\textwidth]{\myimage}

```
## Paragraph Spacing 
### Basic Paragraph Indentation

```latex
\documentclass[12pt, letterpaper]{article}
\usepackage{graphicx}
\title{Hello World}
\author{Peter Ngugi}
\date{June 2026}

\begin{document}
\maketitle

% Normal paragraph with indentation
This is a normal paragraph. LaTeX automatically indents the first line of each paragraph except after section headings. The indentation size is controlled by \texttt{\char`\\parindent}.

% Another paragraph - notice the indent
This is another paragraph. You can see the first line is indented automatically. To create a new paragraph, just leave a blank line in your source code.

% No blank line means no new paragraph
This is still the same paragraph. See how it continues without indentation?

\end{document}

```
## Removing Paragraph Indentation

```latex
\documentclass{article}

% Method 1: Remove indentation globally
\setlength{\parindent}{0pt}

% Method 2: Add space between paragraphs instead
\setlength{\parskip}{1em}  % Adds space between paragraphs
\setlength{\parindent}{0pt}

\begin{document}

\section{No Indentation}
This paragraph has no indentation because we set \texttt{\char`\\parindent} to 0pt.

\vspace{10pt}  % Manual vertical space
This paragraph also has no indent, but we added manual space between them.

% Method 3: Remove indent for a single paragraph
\noindent This paragraph starts at the very left margin with no indentation.

Regular paragraph after that - it will be indented again (unless globally disabled).

\end{document}
```
## Text Alignment
### Left Alignment (Default)
```latex
\documentclass{article}
\usepackage{lipsum}  % For dummy text

\begin{document}

\section{Left Aligned (Default)}
\begin{flushleft}
This text is aligned to the left margin.
\lipsum[1][1-3]  % Generates dummy text
This is the default alignment in LaTeX.
\end{flushleft}

% Or using environment
\begin{flushleft}
Left-aligned text in an environment.
\end{flushleft}

\end{document}

```

## Right Alignment

```latex
\section{Right Alignment}

\begin{flushright}
This text is aligned to the right margin.
Notice how it lines up on the right side.
\begin{verbatim}
    Author: Peter Ngugi
    Date: June 2026
\end{verbatim}
\end{flushright}

% Alternative using \raggedleft
{\raggedleft 
This text is also right-aligned.
But the scope is limited by the braces.
\par}  % Need \par to end the paragraph

```
## Center Alignment
```latex
\section{Center Alignment}

\begin{center}
This text is centered on the page.
It looks nice for titles and important statements.

\vspace{1em}
\textbf{Important Notice:}\\
All team members must attend the meeting.

\vspace{1em}
\emph{LaTeX makes centering easy!}
\end{center}

% Alternative using \centering
{\centering
This text is also centered.
But remember to add \texttt{\char`\\par} at the end.
\par}

```
## Justified Alignment (Default)
```latex
\section{Justified Alignment}

\begin{justify}
This text is justified, meaning it stretches to align with both left and right margins. This is the default alignment in LaTeX documents. It looks professional but can create awkward spacing between words if lines are too short.
\end{justify}

% Default is already justified, so you usually don't need the environment
Regular paragraph text is automatically justified by default in LaTeX documents.

```
## Complete Example with All Alignments
```latex
\documentclass[12pt, letterpaper]{article}
\usepackage{graphicx}
\usepackage{lipsum}  % For dummy text

\title{Paragraph Spacing and Alignment}
\author{Peter Ngugi}
\date{June 2026}

\begin{document}

\maketitle

\section{Paragraph Spacing Options}

\subsection{Default LaTeX}
\lipsum[1][1-2]  % First paragraph with indent

\lipsum[2][1-2]  % Second paragraph with indent

\subsection{No Indent, Space Between Paragraphs}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}

\lipsum[3][1-2]  % No indent, space after

\lipsum[4][1-2]  % Another paragraph

\subsection{Manual Spacing}
\setlength{\parindent}{15pt}  % Restore indent
\setlength{\parskip}{0pt}     % Remove paragraph spacing

% Manual vertical spaces
First paragraph.\par
\vspace{2em}  % 2em vertical space
Second paragraph with manual space.\par
\vspace{1cm}  % 1cm vertical space
Third paragraph.\par

\section{Text Alignment Examples}

\subsection{Left Aligned}
\begin{flushleft}
\textbf{Left alignment:}
\lipsum[5][1-2]
\end{flushleft}

\subsection{Centered}
\begin{center}
\textbf{Center alignment:}\\
This is useful for titles, \\
poems, or short quotes. \\
\vspace{1em}
\rule{0.5\textwidth}{0.4pt}  % Horizontal line
\end{center}

\subsection{Right Aligned}
\begin{flushright}
\textbf{Right alignment:}\\
Often used for dates, \\
signatures, or addresses.\\
\vspace{1em}
Sincerely,\\
Peter Ngugi
\end{flushright}

\subsection{Justified (Default)}
\textbf{Justified alignment:}
\lipsum[6][1-3]

\section{Practical Examples}

\subsection{Creating a Letter Header}
\begin{flushright}
\textbf{Peter Ngugi}\\
123 Main Street\\
Nairobi, Kenya\\
peter@email.com\\
\today
\end{flushright}

\subsection{Centering a Quote}
\begin{center}
\emph{``The secret of getting ahead is getting started.''} \\
--- Mark Twain
\end{center}

\subsection{Mixed Alignment}
\begin{flushleft}
\textbf{Project Title:} LaTeX Documentation
\end{flushleft}
\begin{center}
\rule{0.7\textwidth}{0.4pt}
\end{center}
\begin{flushright}
\textbf{Status:} \textit{In Progress}
\end{flushright}

\end{document}

```
## Spacing Commands Reference

### Vertical Spacing

| Command | Size | Use Case |
|---------|------|----------|
| `\vspace{5mm}` | Manual space | Custom vertical spacing |
| `\vspace{1cm}` | 1 centimeter | Larger spaces |
| `\vspace{1em}` | Width of 'M' | Relative spacing |
| `\vspace{\fill}` | Stretches to fill | Push content to bottom of page |
| `\smallskip` | ~3pt | Small space |
| `\medskip` | ~6pt | Medium space |
| `\bigskip` | ~12pt | Large space |
| `\vfill` | Fills remaining space | Vertically center content |
| `\noindent` | N/A | Remove single paragraph indent |
| `\indent` | N/A | Force single paragraph indent |
| `\par` | N/A | Force paragraph break |

### Horizontal Spacing

| Command | Size | Use Case |
|---------|------|----------|
| `\hspace{5mm}` | Manual space | Custom horizontal spacing |
| `\hspace{1cm}` | 1 centimeter | Larger horizontal spaces |
| `\hspace{1em}` | Width of 'M' | Relative horizontal spacing |
| `\hfill` | Fills remaining space | Push text to right margin |
| `\hspace{\fill}` | Same as `\hfill` | Stretchable horizontal space |
| `\dotfill` | Fills with dots | Create dot leaders (TOC) |
| `\hrulefill` | Fills with line | Create horizontal line |
| `\quad` | 1em | Medium space |
| `\qquad` | 2em | Large space |
| `\,` | 3/18em | Small thin space |
| `\:` | 4/18em | Medium space |
| `\;` | 5/18em | Large thin space |
| `\!` | -3/18em | Negative space (pull closer) |

### Practical Examples

```latex
% Vertical spacing examples
Text before.\vspace{1cm}
Text after 1cm space.

Text before.\smallskip
Text after smallskip.

Text before.\bigskip
Text after bigskip.

% Horizontal spacing examples
Left \hfill Right
Left \hspace{2cm} Right
Left \dotfill Right

% Combined spacing
\noindent This paragraph has no indent.
\indent This paragraph has forced indent.




# LaTeX Quick Reference Guide

A comprehensive quick reference guide for LaTeX commands, formatting, and common use cases.

## Complete LaTeX Quick Reference Table

| Category | What You Type | What It Does / Looks For |
|----------|---------------|--------------------------|
| **Image Files** | `{profile.jpg}` | EXACTLY `profile.jpg` |
| **Image Files** | `{Profile.JPG}` | EXACTLY `Profile.JPG` |
| **Image Files** | `{profile}` | `profile.jpg`, `profile.jpeg`, `profile.png` (with `\DeclareGraphicsExtensions`) |
| **Text Formatting** | `\textbf{text}` | **Bold text** |
| **Text Formatting** | `\textit{text}` | *Italic text* |
| **Text Formatting** | `\underline{text}` | <u>Underlined text</u> |
| **Text Formatting** | `\emph{text}` | *Emphasized text* (adjusts to context) |
| **Text Formatting** | `\textsc{text}` | SMALL CAPS text |
| **Text Formatting** | `\texttt{text}` | `Monospace text` |
| **Paragraph Spacing** | `\noindent` | Remove indent from current paragraph |
| **Paragraph Spacing** | `\indent` | Force indent on current paragraph |
| **Paragraph Spacing** | `\par` | Force paragraph break |
| **Paragraph Spacing** | Blank line | Create new paragraph |
| **Paragraph Spacing** | `\vspace{1cm}` | Add 1cm vertical space |
| **Paragraph Spacing** | `\smallskip` | Add ~3pt vertical space |
| **Paragraph Spacing** | `\medskip` | Add ~6pt vertical space |
| **Paragraph Spacing** | `\bigskip` | Add ~12pt vertical space |
| **Text Alignment** | `\begin{flushleft}...\end{flushleft}` | Left aligned text |
| **Text Alignment** | `\begin{center}...\end{center}` | Centered text |
| **Text Alignment** | `\begin{flushright}...\end{flushright}` | Right aligned text |
| **Text Alignment** | (No environment) | Justified text (default) |
| **Text Alignment** | `\centering` | Center text within current scope |
| **Text Alignment** | `\raggedright` | Left align within current scope |
| **Text Alignment** | `\raggedleft` | Right align within current scope |
| **Horizontal Spacing** | `\hspace{1cm}` | Add 1cm horizontal space |
| **Horizontal Spacing** | `\hfill` | Fill remaining space (push to right) |
| **Horizontal Spacing** | `\hspace{\fill}` | Same as `\hfill` |
| **Horizontal Spacing** | `\dotfill` | Fill space with dots |
| **Horizontal Spacing** | `\hrulefill` | Fill space with horizontal line |
| **Horizontal Spacing** | `\hspace{\stretch{1}}` | Stretchable proportional space |
| **Page Breaks** | `\newpage` | Force page break |
| **Page Breaks** | `\pagebreak` | Page break with stretching |
| **Page Breaks** | `\nopagebreak` | Prevent page break at location |
| **Page Breaks** | `\clearpage` | Page break and flush all floats |
| **Lists** | `\begin{itemize}...\end{itemize}` | Bullet point list |
| **Lists** | `\begin{enumerate}...\end{enumerate}` | Numbered list |
| **Lists** | `\begin{description}...\end{description}` | Description/definition list |
| **Lists** | `\item` | Individual list item |
| **Document Structure** | `\section{Title}` | Level 1 heading |
| **Document Structure** | `\subsection{Title}` | Level 2 heading |
| **Document Structure** | `\subsubsection{Title}` | Level 3 heading |
| **Document Structure** | `\paragraph{Title}` | Level 4 heading (inline) |
| **Document Structure** | `\subparagraph{Title}` | Level 5 heading (inline) |
| **Document Structure** | `\tableofcontents` | Generate table of contents |
| **Document Structure** | `\appendix` | Start appendix section |
| **Document Structure** | `\part{Title}` | Part level heading |
| **Document Structure** | `\chapter{Title}` | Chapter level (book/report only) |
| **Common Packages** | `\usepackage{graphicx}` | Include images |
| **Common Packages** | `\usepackage{amsmath}` | Advanced math formatting |
| **Common Packages** | `\usepackage{hyperref}` | Clickable links and cross-references |
| **Common Packages** | `\usepackage{geometry}` | Adjust page margins |
| **Common Packages** | `\usepackage{parskip}` | Control paragraph spacing |
| **Common Packages** | `\usepackage{color}` | Add colored text |
| **Common Packages** | `\usepackage{tabularx}` | Advanced tables |
| **Common Packages** | `\usepackage{float}` | Better figure/table placement |
| **Special Characters** | `\{` | Curly brace { |
| **Special Characters** | `\}` | Curly brace } |
| **Special Characters** | `\%` | Percent sign % |
| **Special Characters** | `\$` | Dollar sign $ |
| **Special Characters** | `\&` | Ampersand & |
| **Special Characters** | `\#` | Hash symbol # |
| **Special Characters** | `\_` | Underscore _ |
| **Special Characters** | `\textbackslash` | Backslash \ |
| **Special Characters** | `\textbar` | Pipe symbol \| |
| **Special Characters** | `\textless` | Less than < |
| **Special Characters** | `\textgreater` | Greater than > |
| **Common Errors** | `! Undefined control sequence` | Check spelling or add `\usepackage{}` |
| **Common Errors** | `! File not found` | Verify file name and location |
| **Common Errors** | `! Missing $ inserted` | Put math inside `$...$` or `\[...\]` |
| **Common Errors** | `! LaTeX Error: Environment x undefined` | Add required package |
| **Common Errors** | `Overfull \hbox` | Text too wide; rephrase or use `\sloppy` |
| **Common Errors** | `! Package pdftex.def Error: File not found` | Wrong filename or wrong location |
| **Math Mode** | `$E = mc^2$` | Inline math: E = mc² |
| **Math Mode** | `\[E = mc^2\]` | Displayed equation on its own line |
| **Math Mode** | `\frac{a}{b}` | Fraction: a/b |
| **Math Mode** | `\sqrt{x}` | Square root: √x |
| **Math Mode** | `\sqrt[n]{x}` | Nth root: ⁿ√x |
| **Math Mode** | `\sum_{i=1}^{n}` | Summation: Σ from i=1 to n |
| **Math Mode** | `\int_{a}^{b}` | Definite integral: ∫ from a to b |
| **Math Mode** | `\prod_{i=1}^{n}` | Product: Π from i=1 to n |
| **Math Mode** | `\lim_{x \to 0}` | Limit as x approaches 0 |
| **Math Mode** | `\alpha, \beta, \gamma` | Greek letters: α, β, γ |
| **Math Mode** | `\infty` | Infinity symbol: ∞ |
| **Math Mode** | `\partial` | Partial derivative: ∂ |
| **Math Mode** | `\nabla` | Nabla/gradient: ∇ |
| **Math Shortcuts** | `\to` | → (rightarrow) |
| **Math Shortcuts** | `\ne` or `\neq` | ≠ (not equal) |
| **Math Shortcuts** | `\le` | ≤ (less than or equal) |
| **Math Shortcuts** | `\ge` | ≥ (greater than or equal) |
| **Math Shortcuts** | `\implies` | ⇒ (implies) |
| **Math Shortcuts** | `\iff` | ⇔ (if and only if) |
| **Math Shortcuts** | `\times` | × (multiplication) |
| **Math Shortcuts** | `\div` | ÷ (division) |
| **Math Shortcuts** | `\pm` | ± (plus/minus) |
| **Math Shortcuts** | `\cdot` | · (centered dot) |
| **Math Shortcuts** | `\approx` | ≈ (approximately) |
| **Math Shortcuts** | `\propto` | ∝ (proportional to) |
| **Document Classes** | `\documentclass{article}` | Standard article format |
| **Document Classes** | `\documentclass{report}` | Report format (with chapters) |
| **Document Classes** | `\documentclass{book}` | Book format (chapters+parts) |
| **Document Classes** | `\documentclass{letter}` | Letter format |
| **Document Classes** | `\documentclass{beamer}` | Presentation/slides format |
| **Font Sizes** | `\tiny` | Tiny text |
| **Font Sizes** | `\scriptsize` | Very small text |
| **Font Sizes** | `\footnotesize` | Footnote-sized text |
| **Font Sizes** | `\small` | Small text |
| **Font Sizes** | `\normalsize` | Normal text (default) |
| **Font Sizes** | `\large` | Large text |
| **Font Sizes** | `\Large` | Larger text |
| **Font Sizes** | `\LARGE` | Very large text |
| **Font Sizes** | `\huge` | Huge text |
| **Font Sizes** | `\Huge` | Largest text |
| **Floats** | `\begin{figure}[h]...\end{figure}` | Figure with placement here |
| **Floats** | `\begin{figure}[t]...\end{figure}` | Figure at top of page |
| **Floats** | `\begin{figure}[b]...\end{figure}` | Figure at bottom of page |
| **Floats** | `\begin{figure}[p]...\end{figure}` | Figure on separate page |
| **Floats** | `\begin{figure}[H]...\end{figure}` | Figure EXACTLY here (requires float package) |
| **Floats** | `\caption{text}` | Add caption to figure/table |
| **Floats** | `\label{fig:name}` | Add label for cross-reference |
| **Floats** | `\ref{fig:name}` | Reference figure by number |
| **Tables** | `\begin{tabular}{ccc}...\end{tabular}` | Table with 3 centered columns |
| **Tables** | `\begin{tabular}{\|c\|c\|c\|}` | Table with vertical lines |
| **Tables** | `\hline` | Horizontal line in table |
| **Tables** | `&` | Column separator in table |
| **Tables** | `\\` | Row separator in table |
| **Tables** | `\cline{2-3}` | Partial horizontal line (columns 2-3) |

---




\end{document}

