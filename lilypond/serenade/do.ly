\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"acoustic guitar (nylon)"}<< \unfoldRepeats{ << {\guita} \\ {\guitb} >> 
                                 }  
    
                          
							    >>
    >>
\midi{ \tempo 4 = 170 }
}