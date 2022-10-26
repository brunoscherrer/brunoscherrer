indent=0


melodie =  \relative c''{
  \key c \major
  \time 3/4 b4 g  \tuplet 3/2 {e4 d'8~}| d2  \tuplet 3/2 {d8 e c~} | c4. a |  \time 2/4 \tuplet 3/2 {c4 b8} \tuplet 3/2 {a4 g8} |
 \time 3/4 b4 g \tuplet 3/2 {e4 d'8~} | d2  \tuplet 3/2 {d8 e g~} | g4. a, |  \time 2/4 \tuplet 3/2 {a4 g8} \tuplet 3/2 {a4 b8} |
 \time 3/4 c4 b \tuplet 3/2 {a4 g8~}| g2  \tuplet 3/2 {e4 fis8~} | fis4. d |  \time 2/4 \tuplet 3/2 {d4 c2} | 
 \time 3/4 c'4 b a | g2  d4 | e2 c4 | fis2.

\time 3/4 \tuplet 4/3 {a4 fis a cis }  | e2  \tuplet 3/2 {e8 fis d~} | d4. b | \time 2/4 \tuplet 3/2 {d4 cis b }
\time 3/4 \tuplet 4/3 {a4 fis a cis } | e2  \tuplet 3/2 {e8 fis a~} | a4. b, | \time 2/4  \tuplet 3/2 {b4 a8} \tuplet 3/2 {b4 cis8} 
 \time 3/4 d4 cis  \tuplet 3/2 {b4 a8~}| a2   \tuplet 3/2 {fis4 gis8~} | gis4. e |  \time 2/4 \tuplet 3/2 {e4 d2} | 
 \time 3/4 d'4 cis b8 fis8~| fis2. | d'4 cis b8 gis'8~| gis2. | 
 
  \time 3/4 b2 \tuplet 3/2 {g4 e8} | \tuplet 3/2 {g8 a g~} g4 \tuplet 3/2 {e4 c8~}| c4. a |  \time 2/4 \tuplet 3/2 {a4 b8} \tuplet 3/2 {c4 d8} |
 \time 3/4 b'2 \tuplet 3/2 {g4 e8} | \tuplet 3/2 {g8 a g~} g4 \tuplet 3/2 {e4 a8~} | a2. |  \time 2/4 \tuplet 3/2 {a4 g8} \tuplet 3/2 {a4 b8} |
 \time 3/4 c4 b \tuplet 3/2 {a4 g8~}| g2  \tuplet 3/2 {e4 fis8~} | fis4. d |  \time 2/4 \tuplet 3/2 {d4 c2} | 
 \time 3/4 c'4 b a | g2  d4 | e2 c4 | fis2  d4 |
 
 gis2. | fis4. e | \tuplet 3/2 {d4 e d} \tuplet 3/2 {cis b8~} | \tuplet 3/2 { b8 cis4} \tuplet 3/2 { d e fis } | gis2~ \tuplet 3/2 {gis8 a b} | a2 \tuplet 3/2 {gis4 fis8~} | fis2. | r
 gis2. | fis4. e | \tuplet 3/2 {dis4 e dis} \tuplet 3/2 {cis cis8~} | cis2 \tuplet 3/2 {b4 gis8~} | gis2.  | r | r | r
}



harmoniea = \chordmode{
c2.:maj7 | e:min7 | f:maj7 | s2 |
c2.:maj7 | e:min7 | f:maj7 | s2 |
a2.:min7 | c | d:7 | d2:7 |
a2.:min7 | b:3-.5- | c | d:7
}


harmonie = {

\harmoniea

\chordmode{ 
  d2.:maj7 | fis:min7 | g:maj7 | s2 |
  d2.:maj7 | fis:min7 | g:maj7 | s2 |
  b2.:min7 | d | e:7 | e2:7 |
  b2.:min7 | cis:3-.5- | d | e:7
}

\harmoniea

\chordmode{
  e2. | s | b:min7 | s  
  e | s | b:min7 | s 
  e | s | b | a | e
}

}



\header {
  title = #(string-append "Pour Manu" ton )
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
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 48    )   } }
}

