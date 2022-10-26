\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score{
  <<
    \new ChordNames {
      	\harmonie
    }
    \new Staff  
    {
      \melodie
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}



\score {
  <<
    \new Staff << \unfoldRepeats{\melodie 
                                 }  >>
    \new Staff << \unfoldRepeats{\harmonie 
                          } >> 
  >>
\midi{ \tempo 4 = 100 }
}