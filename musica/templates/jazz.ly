% vim: set fdm=indent:

% ------------ headers ------------

%\version "2.24.0"

\language "english"

\header {
  title = "title"
  subtitle="subtitle"
  composer = "composer"
  poet = "poet"
  piece = "piece"
}

\layout {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \context {
    \Score
    %barNumberVisibility = #(every-nth-bar-number-visible 8)
    barNumberVisibility = #(modulo-bar-number-visible 8 0)
  }
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}

global = {
  \key c \major
  \numericTimeSignature
  \time 3/4
}

% ------------ melodies ------------

\include "include/mel.ly"

% ------------ voices ------------

voiceClarinet = \fixed c' {
  \global
  \tempo 2. = 50
  % Music follows here.
  c2.
}

voiceSaxAlto = \fixed c' {
  \global
  % Music follows here.
}

voiceTrumpet = \fixed c'' {
  \global
  % Music follows here.
}

voiceTrombone = \fixed c {
  \global
  % Music follows here.
}

voiceOrganRight = \fixed c'' {
  \global
  % Music follows here.
}

voiceOrganLeft = \fixed c' {
  \global
  % Music follows here.
}

voiceOrganFeet = \fixed c {
  \global
  % Music follows here.
}

voicePianoRight = \fixed c'' {
  \global
  % Music follows here.
}

voicePianoLeft = \fixed c' {
  \global
  % Music follows here.
}

voiceGuitar = \fixed c {
  \global
  % Music follows here.
}

voiceBassGuitar = \fixed c, {
  \global
  % Music follows here.
}

voiceDrums = \drummode {
  \global
  % Music follows here.
}

% ------------ instruments ------------

instrumentClarinet = \new Staff \with {
  instrumentName = \markup {
    \column { Clarinet \line { in B\flat } } }
  shortInstrumentName = "cl"
  midiInstrument = "clarinet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef alto
    %\override Staff.StaffSymbol.line-count = #7
    % ---- no transposition, better to compose
    \voiceClarinet
    % ---- transposed, better to play
    %\transposition bf
    %\transpose c d \voiceEnglishHorn
}

instrumentSaxAlto = \new Staff \with {
  instrumentName = \markup { \column { Alto Saxophone } }
  shortInstrumentName = "al sax"
  midiInstrument = "alto sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef mezzosoprano
    %\override Staff.StaffSymbol.line-count = #7
    \voiceSaxAlto }

instrumentTrumpet = \new Staff \with {
  instrumentName = \markup { \column { Trumpet } }
  shortInstrumentName = "tpt"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef treble
    %\override Staff.StaffSymbol.line-count = #7
    \voiceTrumpet }

instrumentTrombone = \new Staff \with {
  instrumentName = \markup { \column { Trombone } }
  shortInstrumentName = "trm"
  midiInstrument = "trombone"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef bass
    %\override Staff.StaffSymbol.line-count = #7
    \voiceTrombone }

instrumentOrgan = \new GrandStaff \with {
  instrumentName = "Organ"
  shortInstrumentName =  "org"
} <<
  \new Staff = "right" \with {
    midiInstrument = "drawbar organ"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } { \clef treble \voiceOrganRight }
  \new Staff = "left" \with {
    midiInstrument = "drawbar organ"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } { \clef alto \voiceOrganLeft }
  \new Staff = "feet" \with {
    midiInstrument = "drawbar organ"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } { \clef bass \voiceOrganFeet }
>>

instrumentPiano = \new GrandStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "pn"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.9
  } { \clef treble \voicePianoRight }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.9
  } { \clef bass \voicePianoLeft }
>>

instrumentGuitar = \new Staff \with {
  instrumentName = "Guitar"
  shortInstrumentName = "gtr"
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tenor
    %\override Staff.StaffSymbol.line-count = #7
    \voiceGuitar }

instrumentTabGuitar = \new TabStaff \with {
  instrumentName = "Guitar"
  shortInstrumentName = "gtr"
  % ---- guitar
  stringTunings = \stringTuning <e, a, d g b e'>
  % ---- midi
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceGuitar }

instrumentBassGuitar = \new Staff \with {
  instrumentName = \markup { \column { Bass Guitar } }
  shortInstrumentName = "bs gtr"
  midiInstrument = "electric bass (finger)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef subbass
    %\override Staff.StaffSymbol.line-count = #7
    \voiceBassGuitar }

instrumentTabBassGuitar = \new TabStaff \with {
  instrumentName = \markup { \column { Bass Guitar } }
  shortInstrumentName = "bs gtr"
  % ---- bass guitar
  stringTunings = \stringTuning <e,, a,, d, g,>
  % ---- midi
  midiInstrument = "electric bass (finger)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceBassGuitar }

instrumentDrums = \new DrumStaff \with {
  instrumentName = "Drums"
  shortInstrumentName = "dm"
} { \clef percussion \voiceDrums }

% ------------ book ------------

\book {
  \score {
    <<
      \new StaffGroup <<
        \instrumentClarinet
        \instrumentSaxAlto
      >>
      \new StaffGroup <<
        \instrumentTrumpet
        \instrumentTrombone
      >>
      \instrumentOrgan
      \instrumentPiano      
      \new ChoirStaff <<
        \instrumentGuitar
        %\instrumentTabGuitar
        \instrumentBassGuitar
        %\instrumentTabBassGuitar
      >>
      \instrumentDrums
    >>
    \layout { }
    \midi {
      \context {
        \Score
        %midiChannelMapping = #'instrument
      }
    }
  }
  \paper {
    system-separator-markup = \slashSeparator
  }
}
