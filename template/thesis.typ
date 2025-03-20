// #import "@preview/modern-xmu-thesis:0.0.1": documentclass, dual-heading // TODO: 上传至 Typst Universe 时取消本行注释
#import "../lib.typ": documentclass // TODO: 上传至 Typst Universe 时删除本行

#let (
  // 布局函数
  twoside,
  doc,
  preface,
  mainmatter,
  // 页面函数
  cover,
  integrity,
  abstract,
  abstract-en,
  outline-page,
  outline-page-en,
) = documentclass(
  twoside: true, // 双面模式，会加入空白页，便于打印
  info: (
    title: ("基于 Typst 的", "厦门大学本科毕业论文模板"),
    title-en: "An XMU Undergraduate Thesis Template\nPowered by Typst",
    grade: "20XX",
    student-id: "1234567890",
    author: "张三",
    author-en: "John Doe",
    department: "某学院",
    department-en: "School of XXX",
    major: "某专业",
    major-en: "XXX",
    supervisor: ("李四", "教授"),
    supervisor-en: "Professor My Supervisor",
    // supervisor-outside: ("王五", "副教授"),
    // supervisor-outside-en: "Professor My Supervisor",
    submit-date: datetime.today(),
  ),
)

#show: doc

// 封面页
#cover()

// 诚信承诺书
#integrity()

// ====== 前言 ======
#show: preface

// TODO: 致谢

// 中文摘要
#abstract(
  keywords: ("本科毕业论文", "厦门大学", "Typst"),
  outline-title: "中文摘要",
)[
  // 导入 LaTeX 图标
  #import "@preview/metalogo:1.2.0": LaTeX

  本模板参考#link("https://github.com/nju-lug/modern-nju-thesis")[南京大学学位论文模板 modern-nju-thesis]与#link("https://github.com/F5Soft/xmu-template")[厦门大学本科毕业论文 #LaTeX 模版]，并根据《厦门大学本科毕业论文（设计）规范》进行制作。

  本模版提供高清封面、诚信承诺书、中英文摘要环境、中英文目录自动生成、附录环境、参考文献环境、致谢环境等。本模板通过 Typst
  字体 fallback 功能，适配了 Windows 和 macOS 系统的字体，将以思源黑体/宋体、Windows 自带黑体/宋体、macOS
  自带黑体/宋体的优先级使用编译环境中存在的字体。

  建议使用前先完整浏览本模板中的所有内容，以完整地了解使用模板的方法与 Typst 的基础用法。
]

// 英文摘要

#abstract-en(
  twoside: false,
  keywords: ("Undergraduate Thesis", "Xiamen University", "Typst"),
  outline-title: "Abstract",
)[
  // 导入 LaTeX 图标
  #import "@preview/metalogo:1.2.0": LaTeX

  This template is based on #link("https://github.com/nju-lug/modern-nju-thesis")[modern-nju-thesis] template and #link("https://github.com/F5Soft/xmu-template")[Xiamen University Undergraduate Thesis #LaTeX Template], and is created according to the _Xiamen University Undergraduate Thesis (Design) Specification_.

  This template provides high-resolution cover, integrity commitment letter, Chinese and English abstract environments, automatic generation of Chinese and English tables of contents, appendix environment, reference environment, acknowledgment environment, etc. Through Typst's font fallback feature, this template adapts fonts for Windows and macOS systems, using Source Han Sans/Serif, Windows built-in Sans/Serif, and macOS built-in Sans/Serif fonts in order of priority based on what fonts are available in the compilation environment.

  It is recommended to fully browse all the content in this template before use to fully understand how to use the template and the basic usage of Typst.
]

// 中文目录页
#outline-page()

//  英文目录页
// 此处可以传入 `entry-numbering` 参数，用于设置英文版目录中，各级标题的前缀
#outline-page-en(twoside: false)

// ====== 正文部分 ======
#show: mainmatter

= 使用说明#metadata((en: "Introduction"))

== 环境配置#metadata((en: "Environment Setup"))

首先，需要配置好 Typst 环境，这里推荐使用 Web APP#footnote[https://typst.app/ ，中国大陆地区可以正常访问。] 在线编辑或 VSCode + Tinymist 插件本地编辑。

=== 在线编辑#metadata((en: "Editing Online"))

Web App 有些类似于 Overleaf，提供了在线编辑和编译的功能，适合不想在本地安装 VSCode 的用户。但是 Web App 并没有安装本地 Windows 或 MacOS 所拥有的字体，所以字体上可能存在差异，需要自行手动上传用到的字体。并且 Web App 是全英文页面，因此更推荐本地编辑。

只需在 Web App 中选择 「Start from template」，在弹出窗口中选择「modern-xmu-thesis」，即可在线创建模板并使用。

=== 本地编辑#metadata((en: "Editing Locally"))

VSCode + Tinymist 需要先在官网#footnote[https://code.visualstudio.com/download]上下载安装 VSCode，随后在右侧的「扩展/Extension」中搜索 Tinymist 进行安装。

在 VSCode 中按下「Ctrl + Shift + P」打开命令界面，输入「Typst: Show available Typst templates (gallery) for picking up a template」打开 Tinymist 提供的模板列表，然后从里面找到 modern-xmu-thesis，点击「+」号即可创建对应的论文模板。

最后用 VS Code 打开生成的目录，打开 thesis.typ 文件，并按下「Ctrl + K, V」进行实时编辑和预览。

== 编译#metadata((en: "Compiling"))

在 Web App 中，编辑完毕后，点击左上角的「File」按钮，选择「Export」中的「PDF」，即可下载编译得到的 PDF 文件。

在 VSCode 中，编辑完毕后，按下「Ctrl + Shift + P」打开命令界面，输入「Typst: Export the Opened File as PDF」，即可导出编译得到的 PDF 文件。

== 使用模板#metadata((en: "Using the Template"))

本模版根据《厦门大学本科毕业论文（设计）规范》封装了大量格式设置等内容，使用时无需考虑各种格式指令，只需设置好章节标题，填充摘要、附录、参考文献、致谢等内容即可。

如果需要自定义部分样式，目前需要阅读源码中的注释来对一些函数传入的参数进行修改。如果有一定 Typst 基础，也可以 Fork 本模板的仓库，进行本地修改和编译。

= 使用示例#metadata((en: "Usage Examples"))

== 二级标题#metadata((en: "Section (English Ver.)"))

一级标题（章）总会另起一页。

=== 三级标题#metadata((en: "Subsection (English Ver.)"))

#import "@preview/zebraw:0.4.8": zebraw // 导入代码块美化包

使用@lst:创建各级标题 来创建带英文元数据的各级标题。

#figure(
  zebraw(lang: false)[
    ```typst
    = 一级标题#metadata((en: "Chapter"))
    == 二级标题#metadata((en: "Section"))
    === 三级标题#metadata((en: "Subsection"))
    ```
  ],
  kind: raw,
  caption: [创建各级标题],
) <创建各级标题>

==== 四级标题#metadata((en: "Subsubsection (English Ver.)"))

《厦门大学本科毕业论文（设计）规范》中要求一般不使用四级标题，因此如果未设置 `outline-page` 中的 depth 参数，四级标题将不会显示在目录中。

== 列表#metadata((en: "List"))

=== 有序列表#metadata((en: "Ordered List"))

+ 有序列表项一
+ 有序列表项二
  + 有序子列表项一
  + 有序子列表项二

=== 无序列表#metadata((en: "Unordered List"))

- 无序列表项一
- 无序列表项二
  - 无序子列表项一
  - 无序子列表项二

=== 术语列表#metadata((en: "Glossary List"))

/ 术语一: 术语解释
/ 术语二: 术语解释

== 图表#metadata((en: "Figures and Tables"))

引用@tbl:timing，引用@tbl:timing-tlt，以及@fig:xmu-logo。引用图表时，表格和图片分别需要加上 `tbl:`和`fig:` 前缀才能正常显示编号。

#align(
  center,
  (
    stack(dir: ltr)[
      #figure(
        table(
          align: center + horizon,
          columns: 4,
          [t], [1], [2], [3],
          [y], [0.3s], [0.4s], [0.8s],
        ),
        caption: [常规表#footnote[《厦门大学本科毕业论文（设计）规范》中要求表格应优先采用三线表]],
      ) <timing>
    ][
      #h(50pt)
    ][
      #figure(
        table(
          columns: 4,
          stroke: none,
          table.hline(stroke: 1pt),
          [t], [1], [2], [3],
          table.hline(stroke: .75pt),
          [y], [0.3s], [0.4s], [0.8s],
          table.hline(stroke: 1pt),
        ),
        caption: [三线表],
      ) <timing-tlt>
    ]
  ),
)

#figure(
  image("images/xmu-logo.svg", width: 20%),
  caption: [厦门大学校徽],
) <xmu-logo>

=== 数学绘图#metadata((en: "Plotting"))

一般而言，建议将绘图部分放在 Python 或 MATLAB 或其他软件中进行，在论文中使用其导出的图像。Typst 也有一些合适的包用于绘图，例如较老的「cetz-plot#footnote[https://typst.app/universe/package/cetz-plot]」与较新的「lilaq#footnote[https://typst.app/universe/package/lilaq]」包。此处用 lilaq 包进行简单的绘图演示。

#figure(
  {
    import "@preview/lilaq:0.1.0" as lq
    // 修复 https://github.com/lilaq-project/lilaq/issues/7，该 issue 已关闭，但版本尚未更新
    set par(first-line-indent: 2em) // TODO: 当 lilaq 版本更新至 0.1.1 及以上时删除此行。
    let x = lq.linspace(0, 10)
    lq.diagram(
      title: [$sin x$ 的函数图像],
      xlabel: $x$,
      ylabel: $y$,

      lq.plot(x, x.map(x => calc.sin(x))),
    )
  },
  caption: [数学绘图示例],
)

=== 画图#metadata((en: "Drawing"))

对于复杂的图形，建议使用「所见即所得」式的绘图工具绘制图形并导入到论文中。Typst 有一些用于画图的包，最基础的是「cetz#footnote[https://typst.app/universe/package/cetz]」，类似于 LaTeX 中的 tikz 包；此外还有专注于流程图绘制的「fletcher#footnote[https://typst.app/universe/package/fletcher]」包。此处用 fletcher 包进行简单的画图演示。

#figure(
  {
    import "@preview/fletcher:0.5.7": diagram, node, edge
    diagram(
      cell-size: 15mm,
      $
        G edge(f, ->) edge("d", pi, ->>) & im(f) \
        G slash ker(f) edge("ur", tilde(f), "hook-->")
      $,
    )
  },
  caption: [流程图示例],
)

== 公式#metadata((en: "Formulas"))

可以像 Markdown 一样写行内公式 $x + y$，以及带编号的行间公式：

$ phi.alt := (1 + sqrt(5)) / 2 $ <ratio>

引用数学公式需要加上 `eqt:` 前缀，则由@eqt:ratio，我们有：

$ F_n = floor(1 / sqrt(5) phi.alt^n) $

我们也可以通过 `<->` 标签来标识该行间公式不需要编号

$ y = integral_1^2 x^2 dif x $ <->

而后续数学公式仍然能正常编号。

$ F_n = floor(1 / sqrt(5) phi.alt^n) $

== 代码与伪代码#metadata((en: "Codes and Pseudocodes"))

如果只是简单地展示代码，只需要使用 「\`\`\`」将代码进行包裹即可，这与 Markdown 的语法一致。Typst 的代码块支持语法高亮，就像@lst:code 一样。引用时需要加上 `lst:` 前缀。如果需要对代码块进行一定美化，就像@lst:创建各级标题 一样，则可以使用「zebraw#footnote[https://typst.app/universe/package/zebraw]」包进行美化。

#figure(
  ```py
  def add(x, y):
    return x + y
  ```,
  caption: [代码块示例],
) <code>

对于展示算法使用的伪代码，可以使用「lovelace#footnote[https://typst.app/universe/package/lovelace]」包绘制。

#figure(
  kind: "algorithm",
  supplement: [算法],
  {
    import "@preview/lovelace:0.3.0": *
    pseudocode-list(booktabs: true)[
      - *Function* DFS(G, $v$)
      - Input: 图 G = (V, E) 和起始顶点 $v$
      - Output: 图 G 的深度优先遍历序列
      + 标记顶点 $v$ 为已访问
      + 将 $v$ 加入遍历序列
      + *for* *each* 顶点 $w in$ Adj[$v$] *do*
        + *if* $w$ 未被访问 *then*
          + 递归调用 DFS(G, $w$)
        + *end* *if*
      + *end* *for*
    ]
  },
  caption: [伪代码示例]
)
