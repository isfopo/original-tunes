\version "2.22.2"
\language "english"
\include "global.ly"

harmony = \new ChordNames {
  \set chordChanges = ##t \chordmode {
    \bar ".|:" 
    g1:m | c:7 | bf:maj | gs2:m cs:7 | \break
    g1:m | c:7 | d:m    | d:m        | \break
  }
}

melody = \new Voice = "melody" { 
  \global
  \time 4/4
  \relative c'' {
    a4 c g8 \tuplet 3/2 8 { a16 g f~ } f8 g~ | 
    g2      r8 d                       f  g  | 
    a4 c r8 a                          c  d  |
    ef4.       d8 r4                   bf4   |
    a4 c g8 \tuplet 3/2 8 { a16 g f~ } f8 g~ | 
    g2.                                f8 e~ | 
    e1                                       |
    r1                                       |
  }
}

A = {
  <<
    \harmony
    \melody
  >>
}