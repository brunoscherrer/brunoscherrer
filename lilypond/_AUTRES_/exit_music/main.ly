indent = 0


parta =  \relative c'{
  fis2. g16 fis8 fis16~ |
    fis2. r8 b, |
    fis'2. fis4 |
    fis2 e2 | \break
    d2. d16 cis8 cis16~ |
    cis2. cis4 |
  cis2 b2 |
  r1 | \break

}

harma = \chordmode {
b1:m | fis:7/b | b:m7/a | e2/gis e:m/g | b1:m | fis2.:sus fis4:7 | b1:sus | b   
  }
		      

melodie =  \relative c'{
  \key d \major
  \numericTimeSignature
  \time 4/4
  \repeat unfold 2 {
    \parta
  } \break
  \repeat unfold 2 {
  \time 6/4 c'!2 b a4. gis8 |
  \time 4/4 b16 a8 gis16~ gis2. |
  \time 6/4 d2 d2. g8 fis~ |
  \time 4/4 fis1  |
}
  \alternative {
    { cis1 |}
    { cis2 e2 | fis1 |}
  } \break
  
  \parta

  
  d'2 fis,2  |
  eis2. r4 |
  cis'2 e,2 |
  d2. r4 | \break
  b'2 d,2 |
  e2 g |
  fis ais |
  e' fis2 | \break

  \transpose c c' {
    \parta
  }

}



harmonie =  \chordmode{  
 \repeat unfold 2 {
\harma
 }
 \repeat unfold 2 {
   a1:m s2 | e1/gis | b1:m s2 | b1:m/d |
 }
 \alternative{
   {fis:sus}
   {fis:sus | fis:7}
 }
 \harma

 b1:m | cis:7 | fis2:sus fis:7 | b:m g/b | g1 | c | fis2:sus fis:7 | fis1:7 |

 \harma
}



\header {
  title = #(string-append "Exit music (for a film)" ton )
  tagline =  ""
  composer = "Radiohead / Arrgt. Mehldau"
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




