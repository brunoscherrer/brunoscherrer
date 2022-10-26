\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main2.ly"

\score{
  <<
    \new ChordNames {
      \transpose c \noteCibleTransposition{
	\harmonie
      }
    }
    \new PianoStaff  <<
    \new Staff="up" \transpose c \noteCibleTransposition{ \melodie }
    \new Staff="down" \transpose c \noteCibleTransposition{ {\clef bass \maingauche } }
  >>
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}



\score {
  <<
    \new Staff << \unfoldRepeats{\melodie 
                                 }  >>
    \new Staff << \unfoldRepeats{\maingauche 
                          } >> 
  >>
\midi{ \tempo 4 = 200 }
}