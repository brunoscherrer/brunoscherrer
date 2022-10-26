indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  r2 r8 e a c | b4 b8 a4  g  a8~| a8 e4 d2 c8 d e a,2 g8 a \break
  r2 r8 e' a b | c4 c8 b4 a a8~| a8 e4 d2 c8 d e a2 c8 a \break
  r2 r8 e a b | c4 c8 b4 a a8~| a8 e4 d2 c8 d e a,2 b8 c~ \break
  c2 \tuplet 3/2 {a4 b c} | cis4 cis8 a'4 g g8~| g8 f4 f8 e4 f4~ | f2 r2 \break
  g4 d8 f4 d e8~|e8 d4 d8 cis4 d | f1 | r1 \break
  g4 d8 f4 d e8~|e8 d4 d8 cis4 d | d1 | cis \break
  %\key e \major
  r2 r8 a cis fis | dis4 dis8 cis4 b cis8~| cis8 cis4 b4 a8 b4~ | b2 a8 b a fis \break
  r2 r8 fis cis' fis | dis4 dis8 cis4 dis fis8~| fis4. d8~ d2~ | d1   \break
  %\key des \major
  \repeat volta 2 {
  ees,1 | f | ges | aes | %r2 r8 ais dis fis | eis4 eis8 dis4 eis fis8~| fis8 fis4 cis ais8 dis4~ | dis2 cis8 bis ais gis \break
  ees | f | ges | aes %ais2 r8 ais dis fis | gis4 gis8 fis4 gis ais8~| ais8 fis4 dis cis8 dis4~ | dis2 eis8 fis gis ais
  \break}
  %\key c \major
  r2 r8 e' a b | c4 c8 b4 a a8~| a8 e4 d2 c8 d  e  a,2 g8 a \break
  r2 \tuplet 3/2 {e'4 a b} | c4 c8 b4 a a8~| a1 | r1 \break
}

melodieb = \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4
  r2 r8 c f a | g4 g8 f4  e  f8~| f8 c4 b2 a8 b c c2 e8 e \break
  r2 r8 c f g | a4 a8 g4 f f8~| f8 c4 b2 a8 b c e2 g8 e \break
  r2 r8 c f g | a4 a8 g4 fis g8~| g8 c,4 b2 a8 b c e,2 gis8 a~ \break
  a2 \tuplet 3/2 {c4 d dis} | e4 e8 f4 e e8~| e8 d4 d8 cis4 d4~ | d2 r2 \break
  ais4. a2 gis8~|gis2 a2  | ais1 | r1 \break
  ais4. a2 gis8~|gis1  | a1~ | a1 \break
  %\key e \major
  r1 | r1 | r1 | r1 %r2 r8 a cis fis | dis4 dis8 cis4 b cis8~| cis8 cis4 b4 a8 b4~ | b2 a8 b a fis \break
  r1 | r1 | r1 | r1 %r2 r8 a cis fis | dis4 dis8 cis4 dis fis8~| fis4. d8~ d2~ | d1   \break
  %\key des \major
  \repeat volta 2 {
  r2 r8 bes ees ges | f4 f8 ees4 f ges8~| ges8 ges4 des bes8 ees4~ | ees2 des8 c bes aes \break
  bes2 r8 bes ees ges | aes4 aes8 ges4 aes bes8~| bes8 ges4 ees des8 ees4~ | ees2 f8 ges aes bes \break}
  %\key c \major
  r2 r8 c, f a | g4 g8 f4  e  f8~| f8 c4 b2 a8 b c a2 e8 e \break
  r2 \tuplet 3/2 {c'4 f g} | a4 a8 g4 a a8~| a1 | r1 \break
}



harmonie =  \chordmode{  
  \repeat unfold 2 {f1 g gis:3-.5- a:m}
  f fis:3-.5- g gis:3-.5-
  a:m a/cis d:m s
  g4.:m/ais d2:m/a e1:7/gis s8 g1:m s1
  g4.:m/ais d2:m/a e1:7/gis s8 a1:sus a
  fis:m b fis:m b
  fis:m b g:maj7 s
  \repeat volta 2 { \repeat unfold 2 {ees1:m des/f ges aes} }
  f1 g aes:3-.5- a:m
  f1 g a:m s
}



\header {
  title = #(string-append "La laïcité, c'est ça !" ton )
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
    \new Staff { 
      \transpose c \noteCibleTransposition {
      \melodieb
      }
    }
  >>
  \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   } }
}




