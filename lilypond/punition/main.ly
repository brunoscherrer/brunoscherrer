indent = 0

melodie =  \relative c''{
  \key ees \major
  \numericTimeSignature
  \mark \markup {\box\bold{A}}
  \repeat volta 2 {
  \time 4/4 g2 r8 f8 g8 bes8~ | \time 3/4 bes2.~ | \time 4/4 bes2. f8 des8~ | \time 3/4 des2. | \break
  \time 4/4 g2 r8 f8 g8 bes8 | \time 3/4 c4 g8 bes4.~ | \time 4/4 bes2. f8 des8~ \time 3/4 des2. | \break 
  \time 4/4 aes'2 r8 g aes bes8~ | \time 3/4 bes  aes8 bes c4  bes8 | \time 4/4  c4 ees2 c8 ees8~ \time 3/4 ees2. | \break
  \time 4/4  aes,2 r8 g aes g8~ | \time 3/4 g8  f8 g f4  ees8 | \time 4/4 c4 ees2 c8 ees8~ \time 3/4 ees2. | \break
}
  \mark \markup {\box\bold{B}}
  \time 4/4 bes'2 r8 g bes c8~ | \time 3/4 c8 bes8 c2 | \time 4/4 c2 r8 bes aes g8~ | \time 3/4 g8 aes4 g f8 | \break
 \time 4/4  bes2 r8 aes bes c8~ | \time 3/4 c8 bes8 c2 | \time 4/4 des8 c des4. ees8 des ees8~ | \time 3/4 ees4. f4. | \time 4/4 \break
}



harmonie =  \chordmode{  
 \time 7/4
 \repeat volta 2 { ees1:maj7 s2. | s1 des2.:maj7 |
 ees1:maj7 s2. | s1 des2.:maj7 |
 f1:min7 s2. | aes1:maj7 s2. |
 f1:min7 s2. | aes1:maj7 s2. |}
 e1:3-.5-.7 s2. | f1:min7 s2. |
 ges1:maj7 s2. | ges1:maj7 s2. |
}



\header {
  title = #(string-append "<< C'est pas une punition - han >>" ton )
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




