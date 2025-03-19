// #import "@preview/modern-xmu-thesis:0.0.1": documentclass // TODO: 上传至 Typst Universe 时取消本行注释
#import "../lib.typ": documentclass // TODO: 上传至 Typst Universe 时删除本行

#let (
  // 布局函数
  twoside,
  doc,
  preface,
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

#show: preface