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

### build master and section
- build master
```bash
$ make build
```

- build new section
```bash
# target=<Section Name> make build
$ target=new-section make build
```

## dir
- `@settings/common.tex`: 全てのtexに対して適応させる共通のpreamble
- `@settings/master.tex`: master.texに対してのみ適応させるpreamble
- `@settings/section.tex`: master以外のsection.texに対してのみ適応させるpreamble
- `@settings/commands.tex`: macroを定義する
- `@imgs`: 画像を置くところ。 `@settings/master.tex`, `@settings/section.tex` で定義されているように、pathの解決をするために作った。全ての画像はここに置こう。
