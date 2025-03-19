// #import "@preview/modern-xmu-thesis:0.0.1": documentclass // TODO: 上传至 Typst Universe 时取消本行注释
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
  outlined: true,
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
  outlined: true,
  outline-title: "Abstract",
)[
  // 导入 LaTeX 图标
  #import "@preview/metalogo:1.2.0": LaTeX

  This template is based on #link("https://github.com/nju-lug/modern-nju-thesis")[modern-nju-thesis] template and #link("https://github.com/F5Soft/xmu-template")[Xiamen University Undergraduate Thesis #LaTeX Template], and is created according to the _Xiamen University Undergraduate Thesis (Design) Specification_.

  This template provides high-resolution cover, integrity commitment letter, Chinese and English abstract environments, automatic generation of Chinese and English tables of contents, appendix environment, reference environment, acknowledgment environment, etc. Through Typst's font fallback feature, this template adapts fonts for Windows and macOS systems, using Source Han Sans/Serif, Windows built-in Sans/Serif, and macOS built-in Sans/Serif fonts in order of priority based on what fonts are available in the compilation environment.

  It is recommended to fully browse all the content in this template before use to fully understand how to use the template and the basic usage of Typst.
]

// TODO: 中文目录页

// TODO: 英文目录页

// ====== 正文部分 ======
#show: mainmatter
