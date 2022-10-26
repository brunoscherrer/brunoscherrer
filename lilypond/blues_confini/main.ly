indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 6/8
  \partial 4. ees4 d8~ |
  \repeat volta 2 {
  d4. c4 g8~ | g2 r8 a | gis4. a4 e8~ | e4 g4. g8~ |\break
  g4 f8 e4 d8 | c4 b4. g'8~ | g2. | r2. | \break
  a4 c8 d c ees~ | ees4. d4 c8 |  g4 c8 d c e~ | e4 d4. d8~ |\break
  d4 c8 b4 a8 | d4. c4. | e2. | ees2~ ees8 d8~ |  \break

  d4 c8 b c g8~ | g2 r8 a | gis4. a4 e8~ | e4 g4. g8~ |\break
  g4 f8 e4 d8 | cis4 a'4. g8~ | g2. | f2. | \break
  e'4 f8 e4 e8~ | e4 d8 c4 e8~ | e4 f8 e4 e8~ | e4 d8 c4 e8~ | \break
  e2. | ees2~ ees8 d~ | d2. | r4. ees4 d8\laissezVibrer  |}

}


harmonie =  \chordmode{  
  \time 6/8
  \partial 4. s4. |
  \repeat volta 2 {
  c2.:maj7 | e:min7 | a:maj7 | a:7 |
  d:min7 | g:7 | c:maj7 | c:7 |
  f:maj7 | fis:3-.5-.7- | c/g | e:7/aes |
  a:min7 | d:7/fis | d:3-.7.9 | g:5+ |

  c2.:maj7 | e:min7 | a:maj7 | a:7 |
  d:min7 | a:7/cis | f:7+.9 | f:min |
  c | e:5+/aes | a:min | d:7/fis |
  d:min9 | g:5+ | c:7+.9 | s
  }
}



\header {
  title = #(string-append "Blues du con fini" ton )
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




