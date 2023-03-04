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
  %\enablePolymeter
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

% ------------ melodies ------------

\include "include/mel-3.ly"

% ------------ voices ------------

voiceSoprano = \fixed c'' {
  \global
  \tempo 2. = 50
  % Music follows here.
  c2.
}

voiceMezzo = \fixed c'' {
  \global
  % Music follows here.

}

voiceAlto = \fixed c' {
  \global
  % Music follows here.

}

voiceCounter = \fixed c' {
  \global
  % Music follows here.

}

voiceTenor = \fixed c {
  \global
  % Music follows here.

}

voiceBarytone = \fixed c {
  \global
  % Music follows here.

}

voiceBass = \fixed c, {
  \global
  % Music follows here.

}

% ------------ instruments ------------

instrumentViolin = \new Staff \with {
  instrumentName = "Violin"
  shortInstrumentName = "Vln"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef treble
	%\override Staff.StaffSymbol.line-count = #7
	<< \voiceSoprano \\ \voiceMezzo >> }

instrumentViola = \new Staff \with {
  instrumentName = "Viola"
  shortInstrumentName = "Vla"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef mezzosoprano
  %\override Staff.StaffSymbol.line-count = #7
  << \voiceAlto \\ \voiceCounter >> }

instrumentCello = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Clo"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef varbaritone
  %\override Staff.StaffSymbol.line-count = #7
  << \voiceTenor \\ \voiceBarytone >> }

instrumentContrabass = \new Staff \with {
  instrumentName = "Contrabass"
  shortInstrumentName = "cb"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef bass
  %\override Staff.StaffSymbol.line-count = #7
  \voiceBass }

% ------------ book ------------

\book {
  \score {
    <<
      \new StaffGroup <<
        \instrumentViolin
        \instrumentViola
        \instrumentCello
        \instrumentContrabass
      >>
    >>
    \layout { }
    \midi {
      \context {
        \Score
        %midiChannelMapping = #'instrument
        %\enablePolymeter
      }
    }
  }
  \paper {
    system-separator-markup = \slashSeparator
  }
}
