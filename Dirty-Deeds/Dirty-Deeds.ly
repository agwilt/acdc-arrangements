\version "2.18.2"

\header {
  title = "Dirty Deeds"
  subtitle = "Done Dirt Cheap"
  composer = "AC/DC"
  arranger = "Arr. Andreas Gwilt"
  copyright = "CC BY-SA 4.0"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key e \minor
  \time 4/4
  \tempo 4=136
}

bassbar = { \relative e, { e8 e e e e e e e } }
startriff = { e,2. r8 g~ | g e~ e2 r8 a }

scoreACelloI = \relative c {
  \global
  % Music follows here.

}

scoreACelloII = \relative c {
  \global
  % Music follows here.

}

scoreACelloIII = \relative c {
  \global
  \startriff

}

scoreACelloIV = \relative c {
  \global
  \bassbar | \bassbar | \bassbar | \bassbar
}

scoreACelloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
} { \clef bass \scoreACelloI }

scoreACelloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "cello"
} { \clef bass \scoreACelloII }

scoreACelloIIIPart = \new Staff \with {
  instrumentName = "Cello III"
  midiInstrument = "cello"
} { \clef bass \scoreACelloIII }

scoreACelloIVPart = \new Staff \with {
  instrumentName = "Cello IV"
  midiInstrument = "cello"
} { \clef bass \scoreACelloIV }

\score {
  <<
    \scoreACelloIPart
    \scoreACelloIIPart
    \scoreACelloIIIPart
    \scoreACelloIVPart
  >>
  \layout { }
  \midi { }
}
