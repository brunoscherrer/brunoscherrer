indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 3/4

  e2. | g | g4 f4 e8 f8~ | f2. | \break
  f4 e d | d8 e g,4 e'8 fis,8~ | fis4. d'4. | c4. b |\break
  e2. | g | g4 f4 e8 f8~ | f2. | \break
  f4 e d | d8 e g,4 e'8 fis,8~ | fis4. d'4. | b2. | \break

  g'2. | aes | aes4 g4 f8 g8~ | g2. | \break
  g4 f ees | f4. ees | ees2. | d | \break
  g2. | aes | aes4 g4 f8 g8~ | g2. | \break
  g4 f ees | f4. ees | ees2.~ | ees | \break

  ees2. | ees | ees4 f ees8 f~ | f2.  \break
  g2. | g | g4 a g8 a8~ | a2. \break
  bes2. | bes2. | bes4 c bes8 c~ | c2 d4 |
  bes2.~ | bes | b~ | b 

}


harmonie =  \chordmode{  
  c2. | g/c | bes/c | f/c | \break f:min/c | c | d/c | g4.:7/c g:7 |\break
  c2. | g/c | bes/c | f/c | \break f:min/c | c | d/c | g:7 |\break
  ees | des/ees | aes/ees | b:5-/ees | \break bes:3-.6/ees | f/ees | aes/ees | bes:7/ees |\break
  ees | des/ees | aes/ees | b:5-/ees | bes:3-.6/ees | f/ees | aes/ees | s |\break

  c:min/g | aes | f:7/a | bes | \break
  g/b | c:min | a:7/ces | d:min | \break
  ees | c:7/e | f:7 | fis:3-.5-.7- | \break
  g:min | s | g:7 | s \break

}


\header {
  title = #(string-append "<< Light inside the body >>" ton )
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




