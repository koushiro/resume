# Koushiro's resume

This is my resume fork from [this template](https://github.com/ice1000/resume).

## Usage

### Install texlive (or other tex compiler that you like)

ArchLinux:

```bash
sudo pacman -S texlive-most texlive-lang
```

### Build

```bash
make zh
make en
```

### Recommended editor

Use `visual-studio-code` with `LaTex Workshop` plugin.

User settings:

```json
// Latex-workshop settings
"latex-workshop.latex.tools": [
    {
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "%DOC%"
        ]
    },
    {
        "name": "pdflatex",
        "command": "pdflatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOC%"
        ]
    },
    {
        "name": "bibtex",
        "command": "bibtex",
        "args": [
            "%DOCFILE%"
        ]
    }
],

"latex-workshop.latex.recipes": [
    {
        "name": "xelatex",
        "tools": [
            "xelatex"
        ]
    },
    {
        "name": "xelatex -> bibtex -> xelatex*2",
        "tools": [
            "xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
        ]
    }
],

"latex-workshop.view.pdf.viewer": "tab",
"latex-workshop.latex.clean.enabled": true,
"latex-workshop.chktex.interval": 500
```

## Download

- [English version (pdf)](./resume.pdf)
  - [LaTeX source](./resume.tex)
- [Chinese version (pdf)](./resume-cn.pdf)
  - [LaTeX source](./resume-cn.tex)
