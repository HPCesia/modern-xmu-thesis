// 实现双语标题

// 清除 sequence 中的空元素\
// 如果元素非 content 或者没有 children 字段，则直接返回\
//
// - it (): 需要清除的元素，应为 sequence
// -> content, array
#let trim-sequence(it) = {
  if type(it) != content or not it.fields().keys().contains("children") {
    return it
  }
  it.children.filter(it => it.fields().keys().len() > 0)
}

// 双语标题，只会显示中文部分
//
// 英文部分仅用于 `#outline-en()` 元数据查询,
// `metadata` 将出现在 `heading.body` 末尾,
// 可使用 `heading.body.children.last()` 获取
//
// `metadata` 结构为 `metadata(("en": content))`
//
// 用法：
// ```typ
// // 可以集中于一行
// #dual-heading()[= 中文][= English]
// // 也可以分开，对长标题更加美观
// #dual-heading()[
//   = 很长很长的中文标题
// ][
//   = A Very Loooooooong English Heading
// ]
// ```
//
// - zh (content): 中文标题
// - en (content): 英文标题
// -> content
#let dual-heading(zh, en) = {
  let zh-heading = trim-sequence(zh)
  let en-heading = trim-sequence(en)

  zh-heading = if type(zh-heading) == array {
    zh-heading.at(0)
  } else { zh-heading }
  en-heading = if type(en-heading) == array {
    en-heading.at(0)
  } else { en-heading }

  assert.eq(type(zh-heading), content, message: "中文标题应为 heading")
  assert(repr(zh-heading).starts-with("heading"), message: "中文标题应为 heading")
  assert.eq(type(en-heading), content, message: "英文标题应为 heading")
  assert(repr(en-heading).starts-with("heading"), message: "英文标题应为 heading")

  heading([#zh-heading.body#metadata(("en": en-heading.body))], depth: zh-heading.depth)
}
