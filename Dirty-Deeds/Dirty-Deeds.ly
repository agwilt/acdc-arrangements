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

bassbar = { \relative e, { e8[ e] e[ e] e[ e] e[ e] } }
bassbartwo = { \relative e { e8 e e, e e e' e, e } }
startriff = { e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 d' | r8 e,~ e2. } % TODO: chop

scoreACelloI = \relative c {
  \global
  \repeat volta 4 { R1 | R1 | R1 | }
  \alternative { {R1} {R1} }
  r4 a'8\downbow b a b a g | a a4 b8~ b2 | r8 g\upbow g e g g( e) g~ | g2. r4 |
  r8 a\upbow a g a g a g | a g4 b8~ b2 | r8 g\upbow g e g e g4~ | g2. r4 |
  r8 a a g b4. a8~ | \times 2/3 {a4 a a}  b2 | r8 g4 g8 g8 e g4~ | g2. r4 |

}

scoreACelloII = \relative c {
  \global
  \repeat volta 4 { e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 d' }
  \alternative { {r8 e,~ e2.} {r8 e~ e4~ e8 d'8~ d4}}
  e,1~\mf | e~ | e~ | e2~ e8 d'~ d4 |
  e1~ | e~ | e~ | e2~ e8 d~ d4 |
  e1~ | e~ | e~ | e2~ e8 d~ d4 |
}

scoreACelloIII = \relative c {
  \global
  \repeat volta 4 { e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 d' }
  \alternative { {r8 e,~ e2.} {r8 e~ e4~ e8 d'8~ d4}}
  e,1~\mf | e~ | e~ | e2~ e8 d~ d4 |
  e1~ | e~ | e~ | e2~ e8 d~ d4 |
  e1~ | e~ | e~ | e2~ e8 d~ d4 |
}

scoreACelloIV = \relative c {
  \global
  \repeat volta 4 { e,8->[ e-.] e->[ e-.] e_\markup {\italic "sim."}[ e] e[ e] | \bassbar | \bassbar |}
  \alternative { {\bassbar} {\bassbar} }
  e'8-> e e,-> e e e'-> e,-> e | e'8 e e,_\markup {\italic "sim."} e e e' e, e | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
}

scoreACelloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "violin"
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
