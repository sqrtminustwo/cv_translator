#import "src.typ": *

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

#custom-title("Over mij")[
Ik heb programmeren niet geleerd om gewoon een job te vinden — voor mij is het meer een vorm van kunst.
Daarom wil ik graag ervaring opdoen in echte softwareontwikkeling en leren van ervaren ontwikkelaars,
zodat ik geen programmeur word die technical debt produceert in plaats van echte functionaliteit, zeker in
een tijd waarin de codekwaliteit vaak achteruitgaat.
]

#custom-title("Vaardigheden")[
  #skill-heading("Java")[
    - GUI ontwikkelen met JavaFX, dynamisch opgebouwd via XML-configuratie ingelezen met JDOM (Project: https://github.com/sqrtminustwo/Minionwars)
    - Werken met databanken via JDBC, abstractie van databasecomponenten met OOP (Pet-project: https://github.com/sqrtminustwo/DatabaseGUI)
  ]

  #skill-heading("Python")[
 
    - Dynamisch werken met bestandssystemen (directories initialiseren, bestanden kopiëren, OS-onafhankelijk), werken met JSON-configuratiebestanden (Script: https://github.com/sqrtminustwo/Init)
    - Automatiseren van browser-gebaseerd crypto-spel met Selenium-bibliotheek (Script: https://github.com/sqrtminustwo/Cambria-duel-bot)
  ]

  #skill-heading("C/C++")[
    - Basisgebruik van threads en de FTXUI-bibliotheek voor terminalinterface-ontwikkeling (Project: https://github.com/sqrtminustwo/TerminalPlot)
    - Basiskennis van OpenGL en toepassing van OOP op game engine elementen (Project: https://github.com/sqrtminustwo/GLengine)
  ]

  #skill-heading("Databanken")[
    - Opzetten van databanken met PostgreSQL
    - Goede kennis van SQL voor DQL
    - Basiskennis van DDL en DCL
  ]

  #skill-heading("Bash")[
    - Werken met de Linux command line
    - Zeer goede kennis van RegEx, toegepast met `grep` en `sed`, evenals via ingebouwde regex-bibliotheken in Python, Java en JavaScript
    - Bash-scripting met bovengenoemde kennis, inclusief ingebouwde controlstructuren en argumentafhandeling
  ]

  #skill-heading("JavaScript")[
    - Gebruikt als scriptingtaal
  ]
]


#custom-title("Onderwijs")[
  #education-heading(
    "School", "",
    "Economie-wiskunde", "(7 uur wiskunde)",
    datetime(year: 2020, month: 1, day: 10),
    datetime(year: 2022, month: 6, day: 23)
  )[]
  #education-extra(
    "Wetenschappen-wiskunde (7 uur wiskunde)",
    datetime(year: 2022, month: 9, day: 1),
    datetime(year: 2024, month: 6, day: 24)
  )[]
  #education-heading(
    "Universiteit Gent", "",
    "Bachelor of", "Science in de informatica",
    datetime(year: 2024, month: 9, day: 24),
    "Nu"
  )[
    - 1ste jaar, gedelibereerd met grote onderscheiding
  ]
]

#custom-title("Aanvullende informatie")[
  #extra()[
    - *Talen:* Nederlands, Engels, Russisch en Oekraïens
    - *Persoonlijke eigenschappen:* Nauwkeurig en gedisciplineerd, eerlijk en doelgericht communicerend, teamspeler die betrouwbaarheid waardeert
    - *Hobby’s:* Game development, automatiseren van dagelijkse taken
  ]
]

