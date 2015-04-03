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
startriff = { e,2. r8 g~ | g e~ e2 r8 a~ | a e~ e2 r8 d'~ | d e,~ e2. } % TODO: chop

scoreACelloI = \relative c {
  \global
  \repeat unfold 4 { R1 | R1 | R1 | R1 | }

}

scoreACelloII = \relative c {
  \global
  \repeat unfold 4 { \startriff }

}

scoreACelloIII = \relative c {
  \global
  \repeat unfold 4 { \startriff }

}

scoreACelloIV = \relative c {
  \global
  \relative e, { e8-> e-. e-> e-. e_\markup {\italic "sim."} e e e } | \bassbar | \bassbar | \bassbar |
  \repeat unfold 3 { \bassbar | \bassbar | \bassbar | \bassbar | }
}

scoreACelloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "cello"
} { \clef bass \scoreACelloI }

scoreACelloIIPart = \new Staff \with {
  instrumentName = "Cello II"
  midiInstrument = "overdriven guitar"
} { \clef bass \scoreACelloII }

scoreACelloIIIPart = \new Staff \with {
  instrumentName = "Cello III"
  midiInstrument = "overdriven guitar"
} { \clef bass \scoreACelloIII }

scoreACelloIVPart = \new Staff \with {
  instrumentName = "Cello IV"
  midiInstrument = "electric bass (finger)"
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
