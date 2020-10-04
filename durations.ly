\version "2.20" 
\language "italiano"

\include "roman_numeral_analysis_tool.ily"

% PIANO UPPER
pianoHautNoteIntro = \relative do' {
% 1
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>[ <la re la'> <la re la'> <la re la'>] <la dod sol'>[ <la dod sol'> <sol la dod mi> <sol la dod mi>]
}
pianoHautNoteCorps = \relative do {
 \repeat volta 2 {
 
% 3 23
 <fad la re>8[ <la re fad> <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]

% 4 24
 <la re fad>8[ <la re fad> <la re fad> <la re fad>] <fad re' fad>[ <fad re' fad> <si re fad> <si re fad>]
 r8 <la re fad>[ <la re fad> <la re fad>] r <la dod sol'>[ <la dod sol'> <la dod sol'>]
 r8 <la re fad>[ <la re fad> <la re fad>] <la re fad>[ <la re fad> <la re fad> <la re fad>]
 <la re la'>8[ <la re la'> <la re la'> <la re la'>] <si re si'>[ <si re si'> <si re si'> <si re si'>]
 
% 8 28
 r8 <mi, sol dod>[ <mi sol dod> <mi sol dod>] r <re fad re'>[ <re fad re'> <re fad re'>]
 r8 <sol la mi'>[ <sol la mi'> <sol la mi'>] r <fad la fad'>[ <fad la fad'> <fad la fad'>]
 <la dod mi>8[ <la dod mi> <la dod la'> <la dod la'>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]

% 12 32
 <re fad la>8[ <re fad la> <dod mi la> <dod mi la>] <si re la'>[ <si re la'> <dod mi la> <dod mi la>]
 <re fad la>8[ <re fad la> <re fad la> <re fad la>] <mi sol la>[ <mi sol la> <mi sol la> <mi sol la>]
 r8 <la, re fad>[ <la re fad> <la re fad>] <la dod sol'>[ <la dod sol'> <do re la'> <do re la'>]
 r8 <si re si'>[ <si re si'> <si re si'>] r <re fa si>[ <re fa si> <re fa si>]
 
% 16 36
 r8 <re fad! la>[ <re fad la> <re fad la>] r <mi fad dod'>[ <mi fad dod'> <mi sol dod>]
 r8 <re fad re'>[ <re fad re'> <re fad re'>] r <re fa si>[ <re fa si> <re fa si>]
 r8 <re fad! la>[ <re fad la> <re fad la>] r <sol, la dod>[ <sol la dod> <sol la dod>]
 <fad la re>8[ <re' fad re'> <re fad re'> <re fad re'>] <re fad re'>[ <re fad re'> <mi sol dod> <fad la re>]
 
% 20 40
 << { <la dod>8^>[ ^(<sol si>) <re sol si>^. <re sol si>^.] <re sol si>[ <si sol' si> <re sol si> <mi sol si>] } \\
    { re4 } >>
 <sol si>8[( <la, fad' la>) <la fad' la>_. <la fad' la>_.] <la fad' la>[ <la fad' la> <dod fad la> <re fad la>]
 << { <red fad la>8^>[ ^(<mi sol>) <si mi sol>^. <si mi sol>^.] <dod mi sol>^>[ _(<sol la dod mi>) <sol la dod mi>_. <sol la dod mi>_.] } \\
    { si4 } >>
 } % end repeat
}


pianoHautNotePart = {
 \clef treble
 \time 2/2
 \key re \major
%  \set autoBeaming = ##f
 \pianoHautNoteIntro \pianoHautNoteCorps
}


analysis = \lyricmode {
  \set stanza = \markup \keyIndication { D }
  % \override LyricText.self-alignment-X = #LEFT
  \markup \rN { Ic }1
  \markup \rN { Ib }2
  \markup \rN { V 7 }4
  \markup \rN { V 7 }
  \markup \rN { I }8
  \markup \rN { Ic }1
  \markup \rN { "" }4
  \markup \rN { "" }8
  \markup \rN { vi }4
  \markup \rN { vii o 7 / V }
  \markup \rN { "" }8
  \markup \rN { Ic }2
  \markup \rN { V 7 }
  \markup \rN { Ic }2.
  \markup \rN { "" }8
  \markup \rN { Ib }2
  \markup \rN { IV }2
  \markup \rN { viib o }4
  \markup \rN { vii o / vi }4.
  \markup \rN { "" }8
  \markup \rN { V 7 / V }4.
  \markup \rN { Vd 7 }2
  \markup \rN { I }4.
  \markup \rN { V }4
  \markup \rN { V }
  \markup \rN { "-" }
  \markup \rN { Vd 7 }
  \markup \rN { Ib }
  \markup \rN { I }
  \markup \rN { Vb 7 }
  \markup \rN { V 7 }
  \markup \rN { I }
  \markup \rN { V }
  \markup \rN { "-" }
  \markup \rN { "-" }
  \markup \rN { Ib }8
  \markup \rN { I }4.
  \markup \rN { Vb 7 }8
  \markup \rN { Vc 7 }4
  \markup \rN { V 7 }4
  \markup \rN { I }4.
  \markup \rN { Vc 7 }4
  \markup \rN { "-" }8
  \markup \rN { "-" }4
  \markup \rN { VI }2
  \markup \rN { ic o 7 }
  \markup \rN { Ic }
  \markup \rN { Vb 7 / vi }
  \markup \rN { vi }
  \markup \rN { "-" }
  \markup \rN { Ic }
  \markup \rN { V }4.
  \markup \rN { I }8
  \markup \rN { I }2
  \markup \rN { "" }8
  \markup \rN { Vc 7 }8
  \markup \rN { Ib }8
  \markup \rN { "-" }4
  \markup \rN { IVc }4.
  \markup \rN { IV }8
  \markup \rN { IVb }8
  \markup \rN { vii o }8
  \markup \rN { IVc }4
  \markup \rN { iiib }4.
  \markup \rN { I }8
  \markup \rN { iiid 7 }8
  \markup \rN { Ib }8
  \markup \rN { "-" }4
  \markup \rN { iic }4
  \markup \rN { V }8
  \markup \rN { V }4
}

\new Staff <<
  \new Voice \pianoHautNotePart
  \new Lyrics \analysis
>>
