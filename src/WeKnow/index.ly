\version "2.22.2"
\language "english"

\include "a.ly"
\include "b.ly"

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
  \override StaffGrouper.staff-staff-spacing.padding = #0
  \override StaffGrouper.staff-staff-spacing.basic-distance = #1
}

harmony = {
  \new ChordNames {
    \set chordChanges = ##t

    \repeat volta 2 {
      \verseHarmonies
    }

    \repeat volta 2 {
      \chorusHarmonies
    }
  }
}

melody = {
  \new Staff = "voice" \with {midiInstrument = #"voice oohs"} <<
    \clef treble
    \new Voice = "melody" {
      \global

      \repeat volta 2 {
        \verseMelody
      }
      \repeat volta 2 {
        \chorusMelody
      }
    }
  >>
}

\score {
  <<
    \harmony
    \melody
  >>

  \layout {
    indent = #0
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/12)
    }
  }
  \midi {}
}