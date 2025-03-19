#let preface(
  // documentclass 传入的参数
  twoside: false,
  // 其他参数
  ..args,
  it,
) = {
  // 分页
  if twoside {
    pagebreak() + " "
  }
  counter(page).update(0)
  set page(numbering: "I")
  it
}
