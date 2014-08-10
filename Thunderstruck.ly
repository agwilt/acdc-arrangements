\version "2.16.2"
% this is a comment, just like in LaTeX
% Good to know :D

\header {
  title = "Thunderstruck"
  composer = "AC/DC"
  arranger = "Arr. Andreas Gwilt"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key a \major
  \time 4/4
  \partial 16
}

didl = { \relative a { a'16 a, g' a, fis' a, g' a, fis' a, e' a, fis' a, d a | e' a, cis a d a cis a d a cis a d a cis a } }
cise = { cis16 a e' a, }
cisebar = { \cise \cise \cise \cise }
df = { d16 a f' a, }
dfbar = { \df \df \df \df }
choir = { r2 r8 a8( c a ) | c4( d8 c ) e4( d16 c a8  ) }
thunderchoir = { \xNotesOn a4 a4 \xNotesOff r8 a8( c a ) | c4( d8 c ) e4( d16 c a8  )}
thundersing = { a4 a4 r2 | R1 }
thunder = { \xNotesOn a,4 a \xNotesOff }
basebar = { \relative a, { a8 a8 a8 a8 a8 a8 a8 a8 } }
Fthbar = { \relative a { <e a>8 r <e a>[ r16 <e a>] r <e a> <e a> r <e a>8 r8 } }
grindone = { \relative a, { <a e'>2 g16 d r8 r4 | r8 <g d'>8 r16 <g d'>8. <d a'>2 } }
grindtwo = { \relative a, { <a e'>4. <g d'> f8 d | <g d'>4. <d a'>8~ <d a'>2 } }

celloI = \relative c
{
  \global
  \partial 16 r16 |
  R1 | R | r2 r8_"fade in" a8(-4 c a ) | c4( d8 c ) e4( d16 c a8  ) |
  \choir
  \choir
  \repeat volta 4 { r2 r8 a8( c a ) | c4( d8 c ) e4( d16 c a8^"play 4 times"  ) }
  \repeat volta 2 { \thunderchoir }
  \repeat volta 4 { \xNotesOn a4 a4 \xNotesOff r8 a8( c a ) | c4( d8 c ) e4( d16 c a8^"play 4 times"  ) }
  \repeat volta 4 { a'4 a4 r2 }
  \alternative { { R1 } { r2 r8 a a cis } }
  r2 r8 a8 a cis | a a a cis8~ cis a4 g8~
  g\glissando a  r4 r2 | \xNotesOn a,4 a \xNotesOff r8 a' a cis
  r2 r8 a8 a cis~ | cis a a a~ \times 2/3 { a4 a a }
  a,4 r4 r2 | \xNotesOn a 4 a \xNotesOff \times 2/3 { r4 a' a }
  cis4 r4 r8 a8 a cis~ | cis r8 r8 cis~ cis a8 a g~ |
  g a r4 r2 | \xNotesOn a,4 a \xNotesOff r8 cis' a cis |
  r2 r8 a a cis~ | cis a r4 \times 2/3 { cis4 a a } |
  a,4 r4 r2 | \xNotesOn a4 a \xNotesOff \times 2/3 { a'4 a a } |
  cis4 r4 r2 | r \times 2/3 { cis8 a cis4 cis } |
  a2 r2 | r4 r16 cis8. \times 2/3 { cis4 cis a } |
  cis2 r2 | r2 \times 2/3 { cis4 a a } |
  a2 r2 | R1 |
  r2 \times 2/3 { r4 cis cis } | r2 \times 2/3 { r4 cis a } |
  a2 r2 | R1 |
  R1 | r2 \times 2/3 { cis4 d cis } |
  \times 2/3 { e4 e r } \times 2/3 { r a, a } | \times 2/3 { cis d r } \times 2/3 { cis d cis } |
  e2\glissando a,2 | r2 \times 2/3 { cis4 d cis } |
  e8 e8r4 r d | e8 e r8 d \times 2/3 { e4 d c } |
  a4 r r2 | r \times 2/3 { cis4 d cis }  |
  e4 r r4 r8 a, | \times 2/3 { cis4 d cis } \times 2/3 { d d cis } |
  e2\glissando a, | r2 \times 2/3 { cis4 d cis } |
  e2 \times 2/3 { cis4 d cis } | e2 e4 e |
  e2 e2 | \times 2/3 { e4 e d } c4\glissando a |
  r2 r4 a8 a | cis cis d cis e4 r |
  r2 r4 a,8 a | cis a a g\glissando a4 r |
  r2 r4 a8 a | c c d c e4 r |
  r2 r4 \xNotesOn a,8 a \xNotesOff | r2 \times 2/3 { r4 c a } |
  a4 r r2 | r2 \times 2/3 { r4 c a } |
  a4 r4 r2 | d4 d \times 2/3 { c c a } |
  a4 r r2 | r2 \times 2/3 { r4 c c } |
  a4 r4 r2 | R1 |
  \repeat unfold 4 { R }
  r2 r4 cis8 a | cis16 cis d8 cis e8~ e2 |
  r2 r4 a,8 a | a16 a a8 a g8\glissando a2
  \repeat volta 4 { R1 | R^"play 4 times" }
  \repeat volta 4 { r2 r8 a,8( c a ) | c4( d8 c ) e4( d16 c a8^"play 4 times"  ) }
  a1 |  r2 \times 2/3 { r4 c' a } |
  a2 r | r2 \times 2/3 { r4 c a } |
  a2 r | c4 c \times 2/3 { c4 c a } |
  a2 r | r2 \times 2/3 { r4 c a } |
  a2 r | c4 c c c8 a |
  cis2 r8 cis b a~ | a4 r4 r2 |
  c2 r8 c b a~ | a4 r4 r2 |
  cis2 r8 cis b a~ | a4 r4 r2 |
  c2 r8 c b a~ | a4 r4 r2 |
}

celloII = \relative c'
{
  \global
  \partial 16 a16_"pizz" |
  \cisebar \cisebar
  \dfbar \dfbar
  \cisebar \cisebar
  \dfbar \dfbar
  \repeat volta 4 { a'-3 a, g' a, fis' a, g' a, fis' a, e'-1 a, fis' a, d-2 a | e' a, cis a d a cis a d a cis a d a cis a | }
  \repeat volta 2 { \didl }
  \repeat volta 4 { a' a, g' a, fis' a, g' a, fis' a, e' a, fis' a, d a | e' a, cis a d a cis a d a cis a d a cis a }
  \repeat volta 4 { a' a, g' a, fis' a, g' a, fis' a, e' a, fis' a, d a }
  \alternative { { e' a, cis a d a cis a d a cis a d a cis a } { e' a, cis a d a cis a d a cis a d a cis a } }
  \repeat percent 8 { \didl }
  \grindone
  \grindone
  \grindone
  \grindone
  R1 | R |
  \repeat unfold 5 { \relative a, { <a e'>~ | <a e'>~ | <a e'>~ | <a e'> | } }
  \repeat unfold 3 { <a e'>4 <g d'> <d a'> r | r2 r4 <g d'> | }
  <a e'> <g d'> <d a'> r | R1 |
  \grindtwo
  \grindtwo
  \grindtwo
  \grindtwo
  <a e'>1~ | <a e'> |
  <a e'>1~ | <a e'> |
  <a e'>8 d4 <a e'>8~ <a e'>2~ | <a e'>1 |
  <a e'>8 d4 <a e'>8~ <a e'>2~ | <a e'>1 | \break
  \repeat volta 4 { R_"Hier etwas geiles ausdenken" | R } \break
  \repeat volta 4 { <a e'> 4. <g d'> r4 | R1 | }
  R | R |
  \grindtwo
  \grindtwo
  \grindtwo
  \grindtwo
  \repeat unfold 4 { <a e'> 2 r8 e fis <d a'>8~ | <d a'>2 r2 | }
}


celloIII = \relative c
{
  \global
  \partial 16 r16 |
  R1 R1 R1 R1 R1 R1 R1 R1 \repeat volta 4 { R1 R1 }  |
  \repeat volta 2 { R1 | R1 | }
  \repeat volta 4 { R1 | R1 | }
  \repeat volta 4 { \Fthbar }
  \alternative { { \Fthbar } { \Fthbar}  }
  \repeat percent 8 { \Fthbar \Fthbar }
  \repeat percent 18 { \didl }
  R1 | R1 | \break
  \didl
  \repeat percent 7 { \didl }
  \repeat volta 4 { <d, a'>4. <a' e'>8~ <a e'> d,8 f d | <g d'>4. <d a'>8~ <d a'>2 | }
  \repeat volta 4 { r2 r8 a''8( c a ) | c4( d8 c ) e4( d16 c a8  ) }
  \repeat percent 9 { \didl }
}

celloIV = \relative c
{
  \global
  \partial 16 r16_"pizz" |
  R1 R1 R1 R1 R1 R1 R1 R1 \repeat volta 4 { R1 R1 } \repeat volta 2 { R1 R1 } |
  \repeat volta 4 { \basebar  a8 a a a a a a a }
  \repeat volta 4 { \basebar }
  \alternative { { \basebar } { \basebar } }
  \repeat percent 23 { \basebar  \basebar }
  \repeat unfold 3 { <a e'>4 <g d'> <d a'> r | r2 r4 <g d'> | }
  <a e'> <g d'> <d a'> r | R1 |
  \grindtwo
  \grindtwo
  \grindtwo
  \grindtwo
  \repeat percent 4 { \relative a, { \basebar | \basebar | } }
  \repeat volta 4 { d4. a'8~ a d,8 f d | g4. d8~ d2 | }
  \repeat volta 4 { a'8 a a a a a a a | a a a a a a a a }
  \repeat percent 9 { \basebar  \basebar }
}

celloIIPart = \new Staff \with {
  instrumentName = "Cello II"
} { \clef bass \celloII }

celloIPart = \new Staff \with {
  instrumentName = "Cello I"
} { \clef bass \celloI }

celloIIIPart = \new Staff \with {
  instrumentName = "Cello III"
} { \clef bass \celloIII }

celloIVPart = \new Staff \with {
  instrumentName = "Cello IV"
} { \clef bass \celloIV }


\score {
  <<
    \celloIPart
    \celloIIPart
    \celloIIIPart
    \celloIVPart
  >>
  \layout { }
}
