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

bassbar = { \relative e, { e8[ e] e[ e] e[ e] e[ e] } }
bassbartwo = { \relative e { e8 e e, e e e' e, e } }
bassbarendalt = { \relative e, { e8[ e] d[ d] e[ e] e[ e] } }
startriff = { e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 d' | r8 e,~ e2. } % TODO: chop
VcTwoVerseAccomp = { <b e>1~ | <b e>~ | <b e>1~ | <b e>2~ <b e>8 d~ d4 }
VcThreeVerseAccomp = { e1~ | e~ | e~ | e2~ e8 d~ d4 | }
SingleAccompOne = { \relative b, { b1~ | b4~ b8 a8 r a r a8 | } }
SoloAccompOne = { \relative b, { <b fis'>1~ | <b fis'>4~ <b fis'>8 <a e'>8 r <a e'> r <a e'>8 | } }
SoloAccompTwo = { e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 <a d> r8 e~ e2. }
SoloBassOne = { b8 b b b b b b b | b b b b a a a a | }
EndRiffVcThree = { e2. r8 g | r8 e~ e2 r8 a | r8 e~ e2. | e4 d' e, r4 | }
EndRiffVcTwo = { \relative e, { <e b'>2. r8 g | r8 <e b'>~ <e b'>2 r8 a | r8 <e b'>~ <e b'>2. | <e b'>4 <d a'> <e b'> r4 | } }
EndRiffVcTwoAlt = { \relative e, { <e b'>4 <e b'>4 <e b'>8 <e b'>8 <e b'>8 g | r8 <e b'>~ <e b'>4 <e b'>8 <e b'>8 <e b'>8 a | r8 <e b'>~ <e b'>4 <e b'>8 <e b'>8 <e b'>8 <e b'>8 | <e b'>4 <d a'> <e b'> r4 | } }

scoreACelloI = \relative c {
  \global
  \repeat volta 4 { R1 | R1 | R1 | }
  \alternative { {R1} {r2 r8 a' a4} }
  % verse 1
  r4 a8\downbow b a b a g | a a4 b8~ b2 | r8 g\upbow g e g g( e) g~ | g2. r4 |
  r8 a\upbow a g a g a g | a gis4 b8~ b2 | r8 g\upbow g e g e g4~ | g2. r4 |
  r8 a a g b4. a8~ | \times 2/3 {a4 a a}  b2 | r8 g4 g8 g16 e r8 g4~ | g2 r8 g g4 |
  r8 g4 g g g8~ | g g4 g e'4.-\bendAfter #-4.75 |
  r8 g, g g g4 e8 g~ | g2 r2 |
  % refrain
  a4 g8 a~ a4 r | a4 g a r | e4 d8 e~ e4 r | e4 d e r | a4 g8 a~ a4 r | a4 g a r |
  e,4 d8 e4 e d8 | e4 d e r | e4 d8 e4 e d8 | e4 d e r |
  % verse 2
  r8 a' a4 a8 g a g | a g4 b8~ b2 | r8 g g e g g( e) g~ | g2 r2 |
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
  e,4 d8 e4 e d8 | e4 d e r | e4 d8 e4 e d8 | e4 d e r |
  % odd thingymagig
  R1_"Hier etwas geiles ausdenken!" | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  e'4 e8 b~ b4 r4 | r4 r8 b' a g a g | a g b4 r2 | e,4 d e r4 |
  e4 e8 b~ b4 r8 a' | g b~ b4 r2 | r2 a8 g b4 | e, d e r4 |
  R1_"Schrei" | \bar "|."
}

scoreACelloII = \relative c {
  \global
  \repeat volta 4 { e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 d' }
  \alternative { {r8 e,~ e2.} {r8 e~ e4~ e8 d'8~ d4}}
  e1~\mf | e~ | e~ | e2~ e8 d~ d4 |
  \VcThreeVerseAccomp
  \VcThreeVerseAccomp
  e2~ e8 d~ d4 | e2~ e8 d~ d4 | e2~ e8 d~ d4 | e8 e e e e r8 r4 |
  % refrain
  a,1 | a4 g a r | e1 | e4 d e r | a1 | a4 g a r |
  \VcTwoVerseAccomp
  % verse 2
  \VcTwoVerseAccomp
  \VcTwoVerseAccomp
  \VcTwoVerseAccomp
  <e b>2~ <e b>8 d~ d4 | <e b>2~ <e b>8 d~ d4 |
  <e b>2~ <e b>8 d~ d4 | <e b>8 <e b> <e b> <e b> <e b> r8 r4 | %chop here
  % refrain
  a,1 | a4 g a r | e1 | e4 d e r | a1 | a4 g a r |
  e4 d8 e4 e d8 | e4 d e r | e4 d8 e4 e d8 | e4 d e r |
  % solo
  \SingleAccompOne \SingleAccompOne \SingleAccompOne | b'1~ | b8 d8 r d r d r d8 |
  e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 <a d> r8 e~ e2. |
  e2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 <a d> r8 e~ e4~ e8 d'8~ <a d>4 |
  % verse 3
  b''1 | R1 | R1 | r2 r8 d,,~ d4 |
  \VcTwoVerseAccomp
  \VcTwoVerseAccomp
  <e b>2~ <e b>8 d~ d4 | <e b>2~ <e b>8 d~ d4 |
  <e b>2~ <e b>8 d~ d4 | <e b>8 <e b> <e b> <e b> <e b> r8 r4 | %chop here
  % refrain
  a,1 | a4 g a r | e1 | e4 d e r | a1 | a4 g a r |
  <b e>1~ | <b e>1~ | <b e>1~ | <b e>1 |
  % odd thingymagig
  \EndRiffVcTwo \EndRiffVcTwo \EndRiffVcTwoAlt \EndRiffVcTwoAlt
  R1_"Schrei" | \bar "|."
}

scoreACelloIII = \relative c {
  \global
  \repeat volta 4 { e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 <a d> }
  \alternative { {r8 e~ e2.} {r8 e~ e4~ e8 d'8~ <a d>4}}
  e1~\mf | e~ | e~ | e2~ e8 d~ d4 |
  \VcThreeVerseAccomp
  \VcThreeVerseAccomp
  e2~ e8 d~ d4 | e2~ e8 d~ d4 | e2~ e8 d~ d4 | <e b'>8 <e b'> <e b'> <e b'> <e b'> r8 r4 | %chop here
  % refrain
  <a e'>1 | <a e'>4 <g d'> <a e'> r | <e b'>1 | <e b'>4 <d a'> <e b'> r | <a e'>1 | <a e'>4 <g d'> <a e'> r |
  \VcThreeVerseAccomp
  % verse 2
  \VcThreeVerseAccomp
  \VcThreeVerseAccomp
  \VcThreeVerseAccomp
  e2~ e8 d~ d4 | e2~ e8 d~ d4 | e2~ e8 d~ d4 | e8 e e e e r8 r4 | %chop here
  % refrain
  <a e'>1 | <a e'>4 <g d'> <a e'> r | <e b'>1 | <e b'>4 <d a'> <e b'> r | <a e'>1 | <a e'>4 <g d'> <a e'> r |
  <e b'>1~ | <e b'>~ | <e b'>~ | <e b'>2. r4 | % chop
  %solo
  \SoloAccompOne \SoloAccompOne \SoloAccompOne | <b' fis'>1~ | <b fis'>8 <d a'>8 r <d a'> r <d a'> r <d a'>8 |
  e,2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 <a d> r8 e~ e2. |
  e2. r8 g | r8 e~ e2 r8 a | r8 e~ e2 r8 <a d> r8 e~ e4~ e8 d'8~ <a d>4 |
  % verse 3
  \VcThreeVerseAccomp
  \VcThreeVerseAccomp
  \VcThreeVerseAccomp
  e2~ e8 d~ d4 | e2~ e8 d~ d4 | e2~ e8 d~ d4 | e8 e e e e r8 r4 | %chop here
  % refrain
  <a e'>1 | <a e'>4 <g d'> <a e'> r | <e b'>1 | <e b'>4 <d a'> <e b'> r | <a e'>1 | <a e'>4 <g d'> <a e'> r |
  e1~ | e~ | e~ | e |
  % odd thingymagig
  \EndRiffVcThree \EndRiffVcThree \EndRiffVcThree \EndRiffVcThree
  R1_"Schrei" | \bar "|."
}

scoreACelloIV = \relative c {
  \global
  \repeat volta 4 { e,8->[ e-.] e->[ e-.] e_\markup {\italic "sim."}[ e] e[ e] | \bassbar | \bassbar |}
  \alternative { {\bassbar} {\bassbar} }
  e'8-> e e,-> e e e'-> e,-> e | e'8 e e,_\markup {\italic "sim."} e e e' e, e | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbar | \bassbar | \bassbar | e8-> e-> e-> e-> e-> r8 r4 | %chop instead of r4 here
  % refrain
  a4 r8 a a e fis e | a4 g a r | e4 r8 e e b' cis b | e,4 d e r | a4 r8 a a e fis e | a4 g a r |
  \bassbar | \bassbar | \bassbar | \bassbar |
  % verse 2
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | e'8 e e e e r8 r4 |
  % refrain
  a,4 r8 a a e fis e | a4 g a r | e4 r8 e e b' cis b | e,4 d e r | a4 r8 a a e fis e | a4 g a r |
  \bassbar | \bassbar | \bassbar | e8[ e] e[ e] e[ e] fis[ fis] |
  % solo
  \SoloBassOne | \SoloBassOne | \SoloBassOne | b8 b b b b b b b | b b b b d, d d d |
  \repeat unfold 8 { \bassbar }
  % verse 3
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  \bassbartwo | \bassbartwo | \bassbartwo | \bassbartwo |
  e8->[ e] e->[ e] e8->[ e] e->[ e] | \bassbar | \bassbar | e8-> e-> e-> e-> e-> r8 r4 |
  % refrain
  a4 r8 a a e fis e | a4 g a r | e4 r8 e e b' cis b | e,4 d e r | a4 r8 a a e fis e | a4 g a r |
  \bassbar | \bassbar | \bassbar | \bassbar |
  % odd thingymagig
  \bassbar | \bassbar | \bassbar | \bassbarendalt |
  \bassbar | \bassbar | \bassbar | \bassbarendalt |
  \bassbar | \bassbar | \bassbar | \bassbarendalt |
  \bassbar | \bassbar | \bassbar | e4 d4 e4 r4 |
  R1_"Schrei" | \bar "|."
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
