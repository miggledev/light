#let task(body, critical: false) = {
  set text(red) if critical
  [- #body]
}
#show heading: set text(navy)
#set heading(numbering: "(I)")
#show heading: it => [
  #set align(center)
  #set text(font: "Inria Serif")
  \~ #emph(it.body)
     #counter(heading).display(
       it.numbering
     ) \~
]

