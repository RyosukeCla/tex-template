# tex-template
my tex templates(JP)

## getting started
### make new section
```bash
$ mkdir new-section
$ touch new-section/index.tex
```

- new-section/index.tex
```tex
\documentclass[12pt,fleqn,dvipdfmx]{jarticle}

  \input{../@settings/common}
  \input{../@settings/section}
  \input{../@settings/commands}

  \begin{document}
  \section{New Section}
    Hello, world!

  \end{document}
```

- ./master.tex
```tex
  % ....

  % Sections
  \include{./section-A/index}
  \include{./new-section/index}

  \end{document}
```

### build
- build master
```
make build
```

- build section
```
target=new-section make build
```
