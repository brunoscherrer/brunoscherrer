indent = 0

melodie =  \relative c''{
  \key c \major
  \numericTimeSignature
  \time 4/4

  c8 (    d   )  e  e ~    e    d  e  (  f )    g (    f )  f  e    e4.   d8      d4    e   r  d  e4.    d8    e    d (  c )  b    \break
  b (    c4. )   r4  b8    c     dis (    e )  dis  c    dis    c  b  a      a    b4.   r4  d8    d    d4     c    c8 (    b )  a4  | \break
  c8    d  e  e    e4    e    f    e   \times 2/3  {    e8 (    f  e )  }  d  c      b (    c )  d4   r4.  c8  d  (    es )  d  c    d    c  b  a    | \break  gis (    a )  b4   r4.  a8  b (    c )  b  a    b    a (  gis )  f      e1~  | e2 r2  \bar  "||" \break
  b'2 \acciaccatura {    b4  }  a    gis    a    gis    f2    e1 r8 e    dis  e    f    fis  g  gis    | \break
  a4    a ~    a    b8  c    cis (    d )  c4   \acciaccatura {    d  }  c    b      a8 (    b ) ~  b4   r  c  b  (    a )  gis  a      b2 \acciaccatura {  b4 }  a    gis    a    gis    f2    <gis, b e>1 r8  e'    dis  e    f    fis  g  gis      a4    a ~    a    b8  c    cis (    d )  c4   \acciaccatura {    d  }  c    b      a8 (    b ) ~  b4   r  c  b  (    a )  b  c      \acciaccatura {  cis } d\breve    r4.  <d, gis b>  <d gis b>2.  <c f a>2    r4.  <d gis b>  <d gis b>2.  <c f a>2    r1  cis'8 (    d )  c4    c    \acciaccatura {  c }  b   \bar " ||" \break     b8    c ~  c4  r8  b    a  gis    a2.  gis8 (    a )      b2 \acciaccatura {  b4 }  a    gis    a    gis  f  e      d2.  e8    f    gis (    a  ) ~  a4   r  b8 (    c )      cis (    d )  c4 
  \times 2/3  {    b8 (    c  b )  }  a4    gis8 (    a )  gis4  
  \times 2/3  {    f8 (    gis  f )  }  e4      d8 (    e ) ~  e4 ~    e1.    r4.  <gis, b e>  <gis b e>2.  <f a d>2    <b, e>\breve \bar "|."
}



harmonie =  \chordmode{  
 c:7
}



\header {
  title = #(string-append "Grana Od Bora" ton )
  tagline =  ""
  composer = "Traditionnel (arr. Bojan Z)"
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




