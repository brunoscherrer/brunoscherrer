indent = 0

melodie =  \relative c''{
 
  \numericTimeSignature

  
  \time 4/4
  \partial 8 bes8

  \mark \markup {\box \bold Thème}
   \key c \major
  \repeat volta 2 {
    f4 c' f8 ees c bes | ees4 ees8 c8 r4 r8 bes | f4 c' f8 ees c bes | ees4. c8 r4 r8 bes |
f4 c' f8 ees c bes | ees4 ees8 c8 r4 r8 bes8 | f4 c' f8 ees c bes |
}
  \alternative {
    { ees4. f8 r4 r8 bes,8 | }
    { ees4. f8 r4 r8 a,8 | }
  }

\repeat volta 2 {
  fis4 b fis'8 e b a | e'4 e8 b8 r4 r8 a8 | fis4 b fis'8 e b a | e'4. b8 r4 r8 a |
  fis4 b fis'8 e b a | e'4 e8 b8 r4 r8 a8 | fis4 b fis'8 e b a |
}
  \alternative {
    { e'4. fis8 r4 r8 a, | }
    { e'4. fis8 r4 r4 | }
  }

  \mark \markup {\box \bold Solos}
  \time 7/4
  \key bes \major  \repeat percent 4 {f,4 c'8 bes f' ees c bes ees4 ees8 c4 bes8 |} \break
  \key des \major  \repeat percent 4 {f4 c'8 bes f' ees c bes ees4 ees8 c4 bes8 |}  \break
  \key e \major \repeat percent 4 {fis4 b8 a fis' e b a e'4 e8 b4 a8 |}  \break
  \key g \major \repeat percent 4 {fis4 b8 a fis' e b a e'4 e8 b4 a8 |}   \break
  
}



harmonie =  \chordmode{
  \partial 8 s8
  \repeat volta 2 {
    c1:min9 | s | s | s \break
    ges:maj7 | s | s | 
  }
  \alternative { {s} {s} }
  \repeat volta 2 {
    \break
    fis:min9 | s | s | s \break
    c1:maj7 | s | s |
  }
  \alternative { {s} {s} } \break

  \time 7/4
  \tuplet 4/7 {
  \repeat percent 4 {c1:min9}
  \repeat percent 4 {ges:maj7 }
  \repeat percent 4 {fis:min9 }
  \repeat percent 4 {c1:maj7 }
 } 
}



\header {
  title = #(string-append "Quettehou Montchaton ? Saint-Vaast ?" ton )
  tagline =  ""
  composer = "B. Scherrer"
}



\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




