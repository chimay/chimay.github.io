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

voiceFlute = \fixed c'' {
  \global
  \tempo 2. = 50
  % Music follows here.
  c2.
}

voiceViolin = \fixed c'' {
  \global
  % Music follows here.
}

voiceViola = \fixed c' {
  \global
  % Music follows here.
}

voiceCello = \fixed c {
  \global
  % Music follows here.
}

voiceContrabass = \fixed c, {
  \global
  % Music follows here.
}

voiceHarpsichordRight = \fixed c'' {
  \global
  % Music follows here.
}

voiceHarpsichordLeft = \fixed c {
  \global
  % Music follows here.
}

% ------------ instruments ------------

instrumentFlute = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "fl"
  midiInstrument = "flute"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef french
    %\override Staff.StaffSymbol.line-count = #7
    \voiceFlute }

instrumentViolin = \new Staff \with {
  instrumentName = "Violin"
  shortInstrumentName = "vn"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef treble
    %\override Staff.StaffSymbol.line-count = #7
    \voiceViolin }

instrumentViola = \new Staff \with {
  instrumentName = "Viola"
  shortInstrumentName = "va"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef mezzosoprano
    %\override Staff.StaffSymbol.line-count = #7
    \voiceViola }

instrumentCello = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "vc"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef varbaritone
    %\override Staff.StaffSymbol.line-count = #7
    \voiceCello }

instrumentContrabass = \new Staff \with {
  instrumentName = "Contrabass"
  shortInstrumentName = "cbs"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef bass
    %\override Staff.StaffSymbol.line-count = #7
    \voiceContrabass }

instrumentHarpsichord = \new GrandStaff \with {
  instrumentName = "Harpsichord"
  shortInstrumentName = \markup \column { hp cd }
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef treble \voiceHarpsichordRight }
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef bass \voiceHarpsichordLeft }
>>

% ------------ book ------------

\book {
  \score {
    <<
      \instrumentFlute
      \new StaffGroup <<
        \instrumentViolin
        \instrumentViola
        \instrumentCello
        \instrumentContrabass
      >>
      \instrumentHarpsichord
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
