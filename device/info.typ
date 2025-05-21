// note taking libs for Typst
#import "@preview/xyznote:0.3.0": *
#import "@preview/drafting:0.2.1": *
#import "@preview/note-me:0.5.0": *

// package configurations

#set-page-properties(margin-left: 2cm)
/**
#show: xyznote.with(
  title: "xyznote",
  author: "wardenxyz",
  abstract: "A simple typst note template",
  createtime: "2024-11-27",
  lang: "zh",
  bibliography-style: "ieee",
  preface: [], //Annotate this line to delete the preface page.
//  bibliography-file: bibliography("refs.bib"), //Annotate this line to delete the bibliography page.
)
*/

// Miggle Light Physical Information

// 1. Size (kindle basic's size)
#set page(width: 135mm, height: 197mm)

// notebook sizes
#context {
  if (page.width == 135mm) {
      set page(width: 180mm, height: 257mm)
  } else if (page.width == 180mm) {
      set page(width: 215mm, height: 305mm)
  } else if (page.width == 215mm) {
      set page(width: 240mm, height: 320mm)
  } else if (page.width == 240mm) {
      set page(width: 270mm, height: 370mm)
  } else if (page.width == 270mm) {
      set page(width: 300mm, height: 400mm)
  }
}

// template pre-defined things
#context {
  set page(width: 135mm) // default size (can be changed by context)
  set page(height: 197mm)
//  set text(line-height: 1.5) // default line height
//  set text(font-family: "Times New Roman") // default font family
//  set text(color: "black") // default text color
//  set text(background-color: "white") // default background color
//  set text(border-color: "black") // default border color
//  set text(border-width: 1pt) // default border width
//  set text(font-size: 12pt) // default font size
}