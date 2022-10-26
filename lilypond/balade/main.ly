indent = 0

melodie =  \relative c''{
  \key g \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
    b2 d8 e4. | \grace{fis8} g4. fis e4 | d4. e b4~ | b2. d4 | \break
    e4. e e4 | e2. c4 | b1 |
  } \alternative{
    {r1}
    {r2. e4}
  } \break
  \set Score.currentBarNumber = #17
  b'4. b  b4 | a2 g4  a | a4. e c4~ | c2. e4 | \break
  g4. g g4 | fis4. d e4~ | e1 | r2 d8 e4. | \break
  g4. g g4 | fis4. e d4 | e4. b a4~ | a4. g8 a g4. \break
  e1 | r | cis' c | b1 | r | cis1 | c | \break
}



harmonie =  \chordmode{
  \repeat volta 2 { 
    e:min11 | s | g:maj7 | s | c:maj9 | s |  e:min11 |
  } \alternative{ {s} {s} }
  e:min11 | s | a:min7 | s | a:min7/fis | s | e:min11 | s
  d:7 | c:maj7 | a:min9 | a:min7  |
  e:sus | e:min7 | a:7 | a:min7 | e:sus | e:min7 | a:7 | a:min7 
}



\header {
  title = #(string-append "Balade (partie 2)" ton )
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




