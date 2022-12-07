\version "2.22.2"
\language "english"
\include "global.ly"

harmony = \new ChordNames {
  \set chordChanges = ##t
  \chordmode {
    ef1:maj | gf:maj | f:m   | gf:maj    | \break
    ef1:maj | gf:maj | f:m   | gf:maj    | \break
    ef1:maj | gf:maj | f:maj | fs2:m b:7 | \break
    ef1:maj | gf:maj | f:maj | gf:maj    | \break
  }
}

melody = \new Voice = "melody" { 
  \global 
  \relative c' {
    d8 f4.~ f4 d | af'2. bf4 | g4. f8~ f4. ef16 c~ | c1 | 
    d8 f4.~ f4 d | af'2. bf4 | f1~                 | f1 | 
    d8 f4.~ f4 d | af'2. bf4 | a2.     g8  f~      | f1 | 
    d8 f4.~ f4 d | af'2. bf4 | f1~                 | f1 | 
  }
}

B = {
  <<
    \harmony
    \melody
  >>
}

