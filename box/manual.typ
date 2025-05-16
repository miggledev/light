#import emoji: face
#import emoji: sparkles
#import emoji: seedling
#import emoji: notebook
#import emoji: pen
#import emoji: magnet
#import "@preview/catppuccin:1.0.0": catppuccin, flavors
// #import "@preview/ilm:1.4.1": *

#set text(lang: "en")

#show: catppuccin.with(flavors.mocha)

#let title = [Miggle Light]
#let subtitle = [User Manual]
#let productname = [ #emph(text(rgb("#89b4fa"))[Miggle Light]) ]
/**
#set page(
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
  footer: align(center)[
    #text(size: 10pt, rgb("#a6adc8"))[Page #page]
  ]
)
*/

#set document(
  title: title,
  author: "miguelhandcrafts",
)

#set text(18pt, font: "Linux Libertine")

#let section_header(title, icon) = {
  block(
    fill: rgb("#313244"),
    radius: 8pt,
    inset: (x: 1em, y: 0.5em),
   // border: (rgb("#89b4fa"), "1.5pt")
  )[
    #text(weight: "bold", size: 18pt, rgb("#89b4fa"))[
      #icon #h(0.5em) #title
    ]
  ]
  v(8pt)
}

#let cover = block[
  #align(center)[
    #block(
      fill: rgb("#1e1e2e"),
      radius: 12pt,
      inset: (x: 2em, y: 2em)
    )[
      #image("../assets/logo.png", width: 80pt)
      #v(1em)
      #text(weight: "bold", size: 36pt,rgb("#89b4fa"))[#title]
      #text(style: "italic", size: 22pt,rgb("#b4befe"))[#subtitle]
      #v(1em)
      #text(size: 14pt,rgb("#a6e3a1"))[
        Designed by *Miguel HandCrafts* #emoji.seedling
      ]
    ]
  ]
]

#set page(numbering: "1")

#cover

#pagebreak()

#section_header("Welcome", emoji.face)
#text(style: "italic", size: 14pt, rgb("#cdd6f4"))[
  Welcome to your *Miggle Light* — the first ever smart-notebook-case.
]

#v(10pt)
#section_header("What’s Inside?", emoji.notebook)
#list(
  [Miggle Light unit],
  [Middle Stylus],
  [Built-in magnetic clasp],
  [Nightpaper (fluorescent tape)]
)

#v(10pt)
#section_header("Quick Start", emoji.sparkles)
#list(
  [Insert your notebook into the case.],
  [Place your Middle Stylus in its holder.],
  [Charge your ideas — *not your device*.]
)

#v(10pt)
#section_header("Features", emoji.sparkles)
#list(
  [#emoji.sparkles Fluorescent nightpaper to guide night writing.],
  [#emoji.magnet Rear magnets for attachment and convenience.],
  [#emoji.pen Middle Stylus with felt tip for smooth writing.],
  [Fully recyclable, cardboard-made core.]
)

#v(10pt)
#section_header("Care Tips", emoji.seedling)
#list(
  [Avoid exposure to water.],
  [Clean gently with a dry cloth.],
  [Recharge your creativity, not batteries.]
)

#v(10pt)
#section_header("Warranty", emoji.pen)
#text(size: 12pt, rgb("#cdd6f4"))[
  Handmade with care. If something feels off, contact meee, make it right — like your favorite notebook corner.
]

#v(12pt)

#align(center)[
  #text(size: 12pt,  rgb("#a6e3a1"))[
    Designed with heart, by *miguelhandcrafts* #emoji.seedling
    \n
    "Who said digital notebook?"
  ]
]

#pagebreak()

#let note1 = block[
  #section_header("Note-taking Framework", emoji.notebook)
  #text(size: 12pt,rgb("#cdd6f4"))[
    A simple framework to help you take notes and organize your thoughts.
  ]
]

#note1
#v(10pt)

= Documentation

This simple and analog systematic note-taking system is designed for use with Miggle Light. It provides a structured approach to capturing, organizing, and reviewing notes efficiently. The system emphasizes clarity, ease of use, and adaptability for various contexts such as meetings, study sessions, or personal reflections.

== Features

- **Structured Layout:** Notes are organized with clear headings, bullet points, and sections for quick reference.
- **Analog Friendly:** Optimized for handwritten notes, ensuring compatibility with Miggle Light's paper format.
- **Review Section:** Dedicated space for follow-up actions, summaries, or reflections.
- **Flexible Usage:** Suitable for daily logs, project tracking, or brainstorming sessions.

== Usage

1. **Date & Title:** Begin each note with the date and a descriptive title.
2. **Main Content:** Use bullet points or numbered lists to capture key ideas, tasks, or questions.
3. **Highlights:** Mark important items with symbols or color for emphasis.
4. **Review & Actions:** Reserve a section at the end for action items, decisions, or next steps.

== Benefits

- Enhances organization and recall of information.
- Facilitates systematic review and follow-up.
- Simple format reduces cognitive load and increases consistency.

For best results, use with Miggle Light's recommended templates and writing tools.


#set heading(numbering: "1.1")

#pagebreak()

#v(10pt)
#section_header("The Productivity Manual", emoji.sparkles)
#align(center)[
  #text(weight: "bold", size: 28pt, rgb("#89b4fa"))[
    The Productivity Manual for #productname Users
  ]
]

#pagebreak()

#section_header("The definition of productivity", emoji.sparkles)
#quote[
 Is the ability to create, share, and grow. It’s not about doing more in less time, but about doing what matters most to you. Productivity is a mindset, a way of thinking that allows you to focus on what’s important and let go of the rest. It’s about being intentional with your time and energy, and making choices that align with your values and goals.
]

#v(8pt)
#section_header("The 3 pillars of productivity", emoji.magnet)
#list(
  [#emoji.magnet Focus: The ability to concentrate on one task at a time, without distractions.],
  [#emoji.sparkles Clarity: The ability to see the big picture and understand how your tasks fit into it.],
  [#emoji.seedling Growth: The ability to learn from your experiences and adapt to new challenges.]
)
#v(10pt)

#section_header("Productivity tips with the Miggle Light", emoji.pen)
#list(
  [#emoji.magnet Focus: Use the #productname to jot down your thoughts and ideas without distractions.],
  [#emoji.sparkles Clarity: Use the #productname to create mind maps and visual aids to help you see the big picture.],
  [#emoji.seedling Growth: Use the #productname to reflect on your experiences and learn from them.]
)
#v(10pt)

#section_header("Pushes", emoji.notebook)
#text(size: 12pt, rgb("#cdd6f4"))[
  On your Miggle you probably have noticed that there are some little pockets on the back of your Miggle, you can use them to store little pieces of paper or even sticky notes, but, its real purpose is to store *Puchies*, those are paper-cards that can be used as many things to organize your life and your work or study workflow, you can print them or get them from the Miggle website, there are 3 variations:
]
#list(
  [CalenDear, a dear little calendar for your miggle],
  [ReUWW, a reminder noter],
  [ToDo, a simple to-do list for your miggle]
)
