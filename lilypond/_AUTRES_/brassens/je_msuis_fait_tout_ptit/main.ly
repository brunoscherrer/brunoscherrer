indent = 0

melodie =  \relative c'{
  \key d \major
  \numericTimeSignature
  \time 4/4


  
  \repeat volta 2 {

    \mark \markup {\box Intro}
    
  r1 | r2  \tuplet 3/2 { g'8 fis e} \tuplet 3/2 {d cis ais} | b2 r | r4 \tuplet 3/2 { g'8 g g} \tuplet 3/2 { g8 fis e} \tuplet 3/2 {d cis ais} | \break
    
  \mark \markup {\box Couplet}

  d8 e8 fis8 g8 fis4 e8 d8 | g4 fis8 e8~ e2 | g4. cis,8~ cis4 fis4 | e4. d8~ d4 r | \break
  b8 cis d8 e d4 cis8 b | e4 d8 cis8~ cis2 | d4. ais8~ ais4 d4 | cis4. b8~ b2 | \break
  d8 e8 fis8 g8 fis4 b4~ | b8 a8 g8 fis8 e2 | g4. cis,8~ cis4 fis4 | e4. d8~ d4 r | \break
  b8 cis8 d8 e8 d4 cis8 b8 | e4 d8 cis8~ cis2 | d4. ais8~ ais4 d4 | cis4. b8~ b2 | \break

\mark \markup {\box Refrain}
  b8 d8 fis8 b8 d4 ais8 b8 | cis4 gis8 ais8~ ais8 fis8 gis8 ais8 | cis4 b a, a' | fis2 \tuplet 3/2 { g8 fis e} \tuplet 3/2 {d cis ais} | \break
  b8 d8 fis8 b8 d4 ais8 b8 | cis4 gis8 ais8~ ais8 b,8 d8 fis8 | b4 d a fis | d2 cis2 | \break

  


}
}



harmonie =  \chordmode{  
  \repeat volta 2 {

     \repeat unfold 2 {b1:min | e:min }
    
  b1:min | e:min | cis2:3-.5-.7  fis:7 | b1:min |
  b1:min | e1:min  | g2:7 fis:7 | b1:min |
  b2:min b2:7 | e1:min | cis2:3-.5-.7  fis:7 | b1:min |
  b1:min | e1:min  | g2:7 fis:7 | b1:min |

  b1:min | cis2:7 fis:7 | b2:min a:7  | d fis:7 |
  b1:min | cis2:7 fis2:7  | b2:min a2:7   | g2:7 fis:7  |

 

}
  }



\header {
  title = #(string-append "Je me suis fait tout petit" ton )
  tagline =  ""
  composer = "Brassens"
}



\score{
  <<
    \new ChordNames {
      \transpose b, \noteCibleTransposition{
	\harmonie
      }
    }
    \new Staff { 
      \transpose b, \noteCibleTransposition {
      \melodie
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




