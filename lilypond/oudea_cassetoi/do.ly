\version "2.18.2"	

noteCibleTransposition =   c   % c         % d pour Si b %  a, pour Mi b

ton = ""

\include "main.ly"

\score {
  <<
    \new Staff \with {midiInstrument = #"electric piano 1"}<<  \unfoldRepeats{\repeat volta 2 \melodie }  >>
   \new Staff \with {midiInstrument = #"electric piano 1"} << \unfoldRepeats{\repeat volta 2 \harmonie } >>
  \new Staff \with {midiInstrument = #"acoustic bass"} <<  \unfoldRepeats{ \repeat volta 2 \bassea } >>
>>
\midi{ \tempo 4 = 160 }
}