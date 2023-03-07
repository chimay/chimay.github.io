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
    measureBarType = #","
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

voiceFlute = \fixed c'' {
  \global
  \tempo 2. = 50
  % Music follows here.
  c2.
}

voiceStringSoprano = \fixed c'' {
  \global
  % Music follows here.
}

voiceStringAlto = \fixed c' {
  \global
  % Music follows here.
}

voiceStringTenor = \fixed c {
  \global
  % Music follows here.
}

voiceStringBass = \fixed c, {
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

instrumentStrings = \new GrandStaff \with {
  instrumentName = "Strings"
  shortInstrumentName = "st"
} <<
  \new Staff = "right" \with {
    midiInstrument = "violin"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef treble
      << \voiceStringSoprano \\ \voiceStringAlto >> }
  \new Staff = "left" \with {
    midiInstrument = "cello"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef bass
      << \voiceStringTenor \\ \voiceStringBass >> }
>>

instrumentHarpsichord = \new GrandStaff \with {
  instrumentName = \markup \column { Harpsi- chord }
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
      \instrumentStrings
      \instrumentHarpsichord
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
