indent = 0

melodie =  \relative c{
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 8 {
   c8(\3 d)\3 d4\3 c8(\3 d)\3 f,8( d')\3 | d,2 f8( d')\3 d,4 | d'4\3 c8(\3 d)\3 d4\3 c8(\3 d)\3 d,4 f c' f, | \break
  c'8(\3 d)\3 d4\3 c8(\3 d)\3 f,8( d')\3 | d,4 f8( d')\3 d,4 f8( d')\3 | d,4  f8( d')\3 c8(\3 d)\3 f,4 d f c' f, | \break
   c'8(\3 d)\3 d4\3 c8(\3 d)\3 f,8( d')\3 | d,4\3 c'8(\3 d)\3 f,4 d\3 | d'\3 d, c'8(\3 d)\3 f,(d')\3 | d,4 f c' f, | \break
   c'8(\3 d)\3 d4\3 c8(\3 d)\3 f,8( d')\3 | d,4 f8( d')\3 d,4 f8( d')\3 | d,4 r4 r2 | r1 \break
}}



\header {
  title = #(string-append "Basse Spintronix" ton )
  tagline =  ""
  composer = "De Wilde"
}



\score{
  <<
    \new Staff {\transpose c d \melodie}
    \new TabStaff {
      #(define custom-tuning #{ \stringTuning <e,,, g,,, d,, a,,> #})
      \set Staff.stringTunings = #custom-tuning  
      \transpose c d,, \melodie
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




