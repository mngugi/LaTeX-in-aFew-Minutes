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

