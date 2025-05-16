#import emoji: face
#import emoji: sparkles
#import emoji: seedling
#import emoji: notebook
#import emoji: pen
#import emoji: magnet
#import "@preview/catppuccin:1.0.0": catppuccin, flavors
#import "@preview/ilm:1.4.1": *

#set text(lang: "en")

#show: catppuccin.with(flavors.mocha)
#show: ilm.with(
  title: [
    #text(size: 18pt)[Miggle Light User Manual]
  ],
  author: "Miguel V. Mesquita",
  date: datetime(year: 2025, month: 5, day: 16),
  figure-index: (enabled: true),
  table-index: (enabled: true),
  listing-index: (enabled: true),
)

#let title = [Miggle Light]
#let subtitle = [User Manual]
#let productname = [ #emph(text(blue)[Miggle Light]) ]

#set page(
  margin: (top: 2cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
)

#set document(
  title: title,
  author: "miguelhandcrafts",
)

#set text(18pt)

#let cover = block[
  #image("../assets/logo.png", width: auto)
  #text(weight: "bold", size: 36pt)[#title]
  #text(style: "italic", size: 22pt)[#subtitle]
]

// Cover Page
#cover

#pagebreak()


#text(weight: "bold", style: "italic", size: 22pt)[#title]
#text(style: "italic", size: 16pt)[#subtitle]

#emph(text(size: 14pt)[
  Welcome to your *Miggle Light* — the first ever smart-notebook-case.
])


#text(weight: "bold", size: 18pt)[#emoji.notebook What’s Inside?]
#list(
  [Miggle Light unit],
  [Middle Stylus],
  [Built-in magnetic clasp],
  [Nightpaper (fluorescent tape)]
)

#v(10pt)
#text(weight: "bold", size: 18pt)[Quick Start]
#list(
  [Insert your notebook into the case.],
  [Place your Middle Stylus in its holder.],
  [Charge your ideas — *not your device*.]
)

#v(10pt)
#text(weight: "bold", size: 18pt)[Features]
#list(
  [#emoji.sparkles Fluorescent nightpaper to guide night writing.],
  [#emoji.magnet Rear magnets for attachment and convenience.],
  [#emoji.pen Middle Stylus with felt tip for smooth writing.],
  [Fully recyclable, cardboard-made core.]
)

#v(10pt)
#text(weight: "bold", size: 18pt)[Care Tips]
#list(
  [Avoid exposure to water.],
  [Clean gently with a dry cloth.],
  [Recharge your creativity, not batteries.]
)

#v(10pt)
#text(weight: "bold", size: 18pt)[Warranty]
#text(size: 12pt)[
  Handmade with care. If something feels off, contact meee, make it right — like your favorite notebook corner.
]

#line(length: 100%)
#v(12pt)

#align(center)[
  #text(size: 12pt)[
    Designed with heart, by *miguelhandcrafts* #emoji.seedling
    \n
    "Who said digital notebook?"
  ]
]

#pagebreak()

// Productivity manual + a little note-taking framework


#let note1 = block[
  #text(weight: "bold", size: 18pt)[#emoji.notebook Note-taking Framework]
  #text(size: 12pt)[
    A simple framework to help you take notes and organize your thoughts.
  ]
]

#set heading(numbering: "1.1")

#context{
  counter(selector(heading).before(here())).get().first()
}

// Cover of the productivity manual
#let productivity = block[
  #v(1fr)
  #align(center)[
    #text(weight: "bold", size: 36pt)[The Productivity Manual for #productname Users]
  ]
  #v(1fr)
]

#productivity

#pagebreak()

= The definition of productivity
#quote[
 Is the ability to create, share, and grow. It’s not about doing more in less time, but about doing what matters most to you. Productivity is a mindset, a way of thinking that allows you to focus on what’s important and let go of the rest. It’s about being intentional with your time and energy, and making choices that align with your values and goals.
]

== The 3 pillars of productivity
#list(
  [#emoji.magnet Focus: The ability to concentrate on one task at a time, without distractions.],
  [#emoji.sparkles Clarity: The ability to see the big picture and understand how your tasks fit into it.],
  [#emoji.seedling Growth: The ability to learn from your experiences and adapt to new challenges.]
)
#v(10pt)

== Productivity tips with the #productname
#list(
  [#emoji.magnet Focus: Use the #productname to jot down your thoughts and ideas without distractions.],
  [#emoji.sparkles Clarity: Use the #productname to create mind maps and visual aids to help you see the big picture.],
  [#emoji.seedling Growth: Use the #productname to reflect on your experiences and learn from them.]
)
#v(10pt)

=== Pushes.
On your Miggle you probrably have noticed that there are some little pockets on the back of your Miggle, you can use them to store little pieces of paper or even sticky notes, but, its real pourporse is to store *Puchies*, those are paper-cards that can be used as many things to organize your life and your work or study workflow, you can print them or get them from the Miggle website, there are 3 variations:
#list(
  [CalenDear, a dear little calendar for your miggle],
  [ReUWW, a reminder noter],
  [ToDo, a simple to-do list for your miggle]
)


