\version "2.22.2"
\language "english"

\include "A.ly"
\include "B.ly"

\header {
  title = "We Know"
  composer =  "Isaac Poole"
}

\paper {
  top-margin = 15

  #(define fonts
    (set-global-fonts
      #:music "improviso"
      #:brace "improviso"
      #:roman "PermanentMarker"
      #:sans "PeaMissywithaMarker,Nimbus Sans L"
      #:typewriter "Luxi Mono"
    )
  )
}

global = {
  \key bf \major
  \time 4/4
  \tempo 4 = 107
}

\score {
  {
    \repeat volta 2 {
      \A
    }
    \repeat volta 2 {
      \B
    }
  }

  \layout {
    indent = #0
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/12)
    }
  }
  \midi {}
}