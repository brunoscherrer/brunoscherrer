indent = 0

mda =  \relative c'{
  \time 9/4
  r4. c8( e a aes4. aes,8 g'4. e4 c {\grace des} d8~
  d4.) c8( e a aes4. aes,8 g'4. e4 c {\grace des} d8~
  d4.) a8( c e ees4. des8  d4. c4 b4.)
  \time 2/4 c8( b a aes) \break
  \time 6/4 r4. c4( <e a>4 a, <c e>4.)
}
mdaa =  \relative c'{ \repeat volta 2 { \mda } 
		      \alternative {
    { r4. c4( <e a>4 a, <c e>4.) }
    { r4. c4( <e a>4 a,4.)  g'8( a8 }
  }
		    }

mdab = \relative c'{ \mda r4. c4( <e a>4 a, <c e>4.) \break }


mdb = \relative c''{ \time 5/4
  b4. a4. g4 fis)  bes4.( a4. g4 d) |
  d'8([ ees d] bes[ g f] ees4  ees8 f ees d c4.) c8( ees g4 c8
  \time 2/4 ees f g a
  \time 5/4 b4. a g4 fis)  d'4.( c bes4 d) |
  d8[( ees d] bes[ g f] ees4  ees8 f | ees d c4.) c,8( ees g aes8 c8
  \time 2/4 ees g aes c) \break
}
mdc= \relative c {
  \repeat volta 2 {
    \time 6/8 d8( f bes   e, g c)   fis,( a d    g, bes ees)
  \time 4/4
  \tuplet 3/2 {a,8( c f} \tuplet 3/2 {b, d g} \tuplet 3/2 {c, ees aes} \tuplet 3/2 {d, f bes)}
  b8( g f d f d b g)}
}

mga = \relative c {
  \time 9/4
  \repeat unfold 2 {a8 e' b'2  f,8 c' g'4  a,8 e' b'4 a8 f,8 c' g' } 
  fis,8 c' fis2  b,8 fis' b4   d,,8 a' e'4 d  e,8 b'
  \time 2/4 e4 d
  \time 6/4 a8[ e'] b'4 a4  f,4 c'4 \tuplet 3/2 {g'8 c, f}
  }

mgaa = \relative c {\time 5/4
  \repeat volta 2 { \mga }
  \alternative {
    { a8[ e'] b'4 a4  f,4 c'4 \tuplet 3/2 {g'8 c, f}}
    { a,8[ e'] b'4 a4  f,4 c'8 g'8 r4}
  }
		  }

mgab = \relative c { \mga a8[ e'] b'4 a4  f,4 c'4 \tuplet 3/2 {g'8 c, f} }

mgb = \relative c {
  e,8 b' e4 fis8 g4 fis4 b8
  g,8 d' g4 a8 bes4 d4 g,8
  ees,4. bes' ees4 ees4~ ees4
  aes,8 ees' aes2 aes'4~ |
  \time 2/4 aes2 |
  \time 5/4
  e,,8 b' e4 fis8 g4 fis4 b8
  g,8 d' g4 a8 bes4 d4 g,8
  ees,4. bes' ees4 ees4~ ees4
  aes,8 ees' aes2.
  \time 2/4
  r2
}
mgc = \relative c {
  \repeat volta 2 {
     \time 6/8 bes4. c  d, ees 
     \time 4/4 f4 g aes bes |
  b1 }
}


melodie = { \numericTimeSignature  \mdaa \break \mdb \mdc \mdab }
maingauche = { \numericTimeSignature \mgaa \mgb \mgc \mgab }

ha = \chordmode {
\time 9/4
a2.:min f2:maj7 a2.:min f4:maj7 | a2.:min f2:maj7 a2.:min f4:maj7
fis2.:3-.5-.7 b2 d2.:min e4:7
\time 2/4
s2
\time 6/4
a2:min s8 f2.:maj7 s8
}
haa = \chordmode {
  \repeat volta 2 { \ha }
  \alternative {
    {a2:min s8 f2.:maj7 s8}
    {a2:min s8 f2.:maj7 s8}
  }
}
hab = \chordmode { \time 5/4
  \ha
  {a2:min s8 f2.:maj7 s8 }
}
hb = \chordmode {
  e1:m9 s4 | g1:min9 s4 | ees1:maj7 s4 | s4 aes1:maj7
  \time 2/4
  s2
  \time 5/4
  e1:m9 s4 | g1:min9 s4 | ees1:maj7 s4 | s4 aes1:maj7
  \time 2/4
  s2
}
hc = \chordmode {
  \repeat volta 2 {
     \time 6/8 bes4. c  d, ees | 
     \time 4/4 f4 g aes bes |
     g1/b
     }
  }
harmonie =  \chordmode{
 \haa \hb \hc \hab
}



\header {
  title = #(string-append "Liquide" ton )
  tagline =  ""
  composer = "B. Scherrer"
}





