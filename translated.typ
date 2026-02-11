#import "src.type": *

#let name = "bob"
#let email = "bob@gmail.com"
#let github = "sqrtminustwo"

#show: resume.with(
  top-margin: 0.45in,
  personal-info-font-size: 9.2pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  email: email,
  github-username: github
)

#custom-title("About me")[I didn't learn programming just to get a job — for me it's more of an art form.
That's why I would like to gain experience in real software development and learn from experienced developers,
so that I don't become a programmer who produces technical debt instead of real functionality, especially in
a time when code quality often deteriorates.]

#custom-title("Skills")[
  #skill-heading("Java")[- Develop GUI with JavaFX, dynamically built via XML configuration read with JDOM (Project: https://github.com/sqrtminustwo/Minionwars)
    - Working with databases via JDBC, abstraction of database components with OOP (Pet project: https://github.com/sqrtminustwo/DatabaseGUI)]

  #skill-heading("Python")[- Dynamically work with file systems (initialize directories, copy files, OS independent), work with JSON configuration files (Script: https://github.com/sqrtminustwo/Init)
    - Automate browser-based crypto gaming with Selenium library (Script: https://github.com/sqrtminustwo/Cambria-duel-bot)]

  #skill-heading("C/C++")[- Basic use of threads and the FTXUI library for terminal interface development (Project: https://github.com/sqrtminustwo/TerminalPlot)
    - Basic knowledge of OpenGL and application of OOP to game engine elements (Project: https://github.com/sqrtminustwo/GLengine)]

  #skill-heading("Databases")[- Setting up databases with PostgreSQL
    - Good knowledge of SQL for DQL
    - Basic knowledge of DDL and DCL]

  #skill-heading("Bash")[- Working with the Linux command line
    - Very good knowledge of RegEx, applied with `grep` and `sed`, as well as through built-in regex libraries in Python, Java and JavaScript
    - Bash scripting with the above knowledge, including built-in control structures and argument handling]

  #skill-heading("JavaScript")[- Used as a scripting language]
]


#custom-title("Education")[
  #education-heading(
    "School", "",
    "Economie-wiskunde", "(7 uur wiskunde)",
    datetime(year: 2020, month: 1, day: 10),
    datetime(year: 2022, month: 6, day: 23)
  )[]
  #education-extra(
    "Science-math (7 hours of math)",
    datetime(year: 2022, month: 9, day: 1),
    datetime(year: 2024, month: 6, day: 24)
  )[]
  #education-heading(
    "Ghent University", "",
    "Bachelor of", "Science in de informatica",
    datetime(year: 2024, month: 9, day: 24),
    "Nu"
  )[- 1st year, deliberated with great distinction]
]

#custom-title("Additional information")[
  #extra()[- *Languages:* Dutch, English, Russian and Ukrainian
    - *Personal qualities:* Accurate and disciplined, honest and goal-oriented communicator, team player who values reliability
    - *Hobbies:* Game development, automating daily tasks]
]

