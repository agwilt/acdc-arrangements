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
  \set Score.markFormatter = #format-mark-box-alphabet
}

scoreACelloI = \relative c'' {
  \global
  \repeat volta 4 { R1 | R1 | R1 | }
  \alternative { {R1} {r2 r8 a a4} }
  % verse 1
  r4 a8\downbow b a b a g | a a4 b8~ b2 | r8 g\upbow g e g g( e) g~ | g2. r4 |
  r8 a\upbow a g a g a g | a gis4 b8~ b2 | r8 g\upbow g e g e g4~ | g2. r4 |
  r8 a a g b4. a8~ | \times 2/3 {a4 a a}  b2 | r8 g4 g8 g16 e r8 g4~ | g2 r8 g g4 |
  r8 g4 g g g8~ | g g4 g e'4.-\bendAfter #-4.75 |
  r8 g, g g g4 e8 g~ | g2 r2 |
  % refrain
  a4 g8 a~ a4 r | a4 g a r | e4 d8 e~ e4 r | e4 d e r | a4 g8 a~ a4 r | a4 g a r |
  e4 d8 e4 e d8 | e4 d e r | e4 d8 e4 e d8 | e4 d e r |
  % verse 2
  r8 a a4 a8 g a g | a g4 b8~ b2 | r8 g g e g g( e) g~ | g2 r2 |
  r8 a a g a g a a~ | a a4 b8~ b2 | r8 g g e g4 e8 e~ | e4 d8( e) r2 |
  r8 a a g b4. a8~ | a a g b~ b2 | r8 g g e g g( e) g~ | g2 r2 |
  \times 2/3 {r4 a a} b4 r8 e,8 | g g4 g8~ g4 r4 | r8 g g g g4 e8 e~ | e2 e'4\bendAfter #-2 r4 |
  % refrain
  a,4 g8 a~ a4 r | a4 g a r | e4 d8 e~ e4 r | e4 d e r | a4 g8 a~ a4 r | a4 g a r |
  R1 | r2 r8 e'8~ e4 | R1 | R1 | % make bendy; it's more of a sort of squeak. gliss. up and down
  % solo
  \repeat unfold 8 { R1 }
  R1 | R1 | R1 | R1 | R1 | R1 | R1 | r2. a,4 |
  % verse 3
  r4 g8 g g g g g | g g4 g8~ g4 r4 | r8 g g g~ g g e g-.~| g4 r4 r2 |
  r8 a a4 a8 g a g | a a4 b8~ b4 r4 | r8 e, e d \times 2/3 {g2 e4} | e4 r r2 |
  r8 a a g b4. a8~ | a a g b~ b4 r4 | r8 g g g g4 e8 g~ | g2 r2 |
  r8 a g a~ a4 r8 g | a a g b~ b4 r4 | r8 g4 g8~ g g4 g8~ | g2 r |
  % refrain
  a4 g8 a~ a4 r | a4 g a r | e4 d8 e~ e4 r | e4 d e r | a4 g8 a~ a4 r | a4 g a r |
  e4 d8 e4 e d8 | e4 d e r | e4 d8 e4 e d8 | e4 d e r |
  % odd thingymagig
  R1_"Hier etwas geiles ausdenken!" | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  e4 e8 b~ b4 r4 | r4 r8 b' a g a g | a g b4 r2 | e,4 d e r4 |
  e4 e8 b~ b4 r8 a' | g b~ b4 r2 | r2 a8 g b4 | e, d e r4 |
  R1_"Schrei" | \bar "|."
}

scoreACelloIPart = \new Staff \with {
  instrumentName = "Cello I"
  midiInstrument = "violin"
} { \clef treble \scoreACelloI }

\score {
  <<
    \scoreACelloIPart
  >>
  \layout { }
  \midi { }
}
