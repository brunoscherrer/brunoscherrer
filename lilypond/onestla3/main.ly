indent = 0

global = { \key c \major  \numericTimeSignature  \time 4/4 }


melodieb =  \relative c''{
\tuplet 2/1 {  \partial 2 {\tuplet 3/2 {e4. d4 c8~}} |
  \repeat volta 2 {
    c1 |  r2 \tuplet 3/2 {e4. f4 g8~} | 
    g1 | r2 e4 f4  | \break 
\tuplet 3/2 {g4. g4  g8~} \tuplet 3/2 {g4 g4. g8~} | \tuplet 3/2 {g4 f2}  \tuplet 3/2 {e4. f4 d8~} | d1 | r2  d4 e4 | 
  f4 f8~ f4  f4 f8~|  f2 e4 d4 | \break
  e4 e8~ e4  e4 e8~|  e2 d4 c4 | 
    d4 d8~ d4 d4 d8~ | \tuplet 3/2 {d4 c2} \tuplet 3/2 { b4. d4 c8~} |
    c2 r2 | r2 \tuplet 3/2 {e4. d4 c8 \laissezVibrer} | \break
  }
	     }
}

paroles = \lyricmode {
  On est là, on est là, même si Ma -- cron ne veut pas, nous on est là, pour l'hon -- neur des travail -- leurs et pour un monde meil -- leur, même si Ma -- cron n'veut pas, nous on est là
  }


harmonieb = \chordmode{
 
}



\header {
  title = #(string-append "Carole Grosjean-360 comme devant (on est là)" ton )
  tagline =  ""
  composer = ""
}




\score {
   <<
     \new ChordNames="accords" {      \transpose c \noteCibleTransposition{  \harmonieb      }    }
%     \new Staff="Melody" {
       \new Voice = "m"  { \transpose c \noteCibleTransposition{ \global \melodieb }}
       \new Lyrics = "paroles" \lyricsto "m" { \paroles  }
%     }
   >>
    \layout{ \context {      \Score      proportionalNotationDuration = #(ly:make-moment 4 30     )   }}
}



\markup{
  Réharmonisation dédiée à Mme Grandjean, députée de Meurthe-et-Moselle,
}
\markup{
  rapportrice du projet de loi sur la réforme des retraites,
}
\markup{
  prétendant avoir une vision ''très 360'' du sujet,
}
\markup{
  ayant participé à bloquer (avec son groupe LREM) une enquête parlementaire
}
\markup{
  sur l'insincérité de l'étude d'impact.
  }