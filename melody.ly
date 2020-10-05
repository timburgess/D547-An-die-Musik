\version "2.20"
\include "italiano.ly"

% FORMAT FOR A4 and US Letter / FORMAT MIXTE ADAPTÉ POUR A4 ET LETTER US
\paper {
 %paper-height = 279\mm
 %paper-width = 210\mm
 line-width = 180\mm
 between-system-padding = #0.5
 between-system-spacing = #0.5
}

\header {
 title = \markup { \fontsize #1.5 "An die Musik" }
 subtitle = \markup { \fontsize #0.1 \bold "Singstimme" }
 subsubtitle = \markup { \fontsize #0.1 \bold "T. Burgess - MUSI101" }
}


meloNoteCorps = \relative do'' {
 \repeat volta 2 {

% 3 23
 r4 la re re

% 4 24
 fad,2. si4
 \appoggiatura si8 re,4. re8 fad[( mi)] re[( mi)]
 fad4 re r2 \break
 r4 la' si si

% 8 28
 dod,4. dod8 re4. re8
 fad8[( mi)] re[( mi)] fad2
 R1 \break
 r4 re' mi4. sol,8

% 12 32
 fad4( la2) si8[( dod)]
 re4. fad8 mi[( dod)] la[( sol)]
 \appoggiatura sol8 fad4 fad r \bar "" \break la
 si4. si8 si4 dod8[( re)]

% 16 36
 re4. re8 fad4. mi8
 \appoggiatura mi4 re2 r8 \bar "" \break si dod re
 re4( fad,8) fad la4( dod,8) dod
 re2 r2

% 20 40
 R1
 R1
 R1
 } % fin du repeat
}


meloNotePart = {
 \clef treble
 \time 2/2
 \key re \major
 \meloNoteCorps
}

poemeUn = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "1. "

% 3 - 9
 Du hol -- de Kunst, in wie -- viel grau -- en Stun -- den,
 Wo mich des Le -- bens wil -- der Kreis um -- strickt,
 
% 11 - 19
 Hast du mein Herz zu war -- mer Lieb' ent -- zun -- den,
 Hast mich in ei -- ne beß -- re Welt ent -- rückt,
 In ei -- ne beß -- re Welt ent -- rückt!
}

poemeDeux = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "2. "

% 23 - 29
 Oft hat ein Seuf -- zer, dei -- ner Harf ent -- flos -- sen,
 Ein sü -- ßer, hei -- li -- ger Ak -- kord von dir
 
% 31 - 39
 Den Him -- mel beß -- rer Zei -- ten mir er -- schlos -- sen,
 Du hol -- de Kunst, ich dan -- ke dir da -- für,
 Du hol -- de Kunst, ich dan -- ke dir!
}


\score {
 <<
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \set Score.currentBarNumber = #3
  \bar ""
  \new Voice = "mel" << \meloNotePart >>
  \new Lyrics \lyricsto "mel" \poemeUn
  \new Lyrics \lyricsto "mel" \poemeDeux
 >>
}
