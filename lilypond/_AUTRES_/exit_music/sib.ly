\version "2.18.2"	

noteCibleTransposition =   bes,   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"electric piano 1"}<< \unfoldRepeats{\transpose c' bes {\melodie} 
                                 }  >>
%    \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\transpose c' bes {\harmonie}
%                          } >> 
  >>
\midi{ \tempo 4 = 74 }
}