\version "2.22.2"
\language "english"

\include "A.ly"
\include "B.ly"

\header { 
  title = "Magnolia"
  composer =  "Isaac Poole"
  copyright = \markup "copyright Isaac Poole 2019"
  tagline = ""
}

\paper {
  top-margin = 15
  system-system-spacing = #'((basic-distance . 1) (padding . 12))

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

\score {
  {
    \repeat volta 2 {
      \A
    }
    \B
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