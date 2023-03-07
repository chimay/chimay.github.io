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
%\include "include/mel-4.ly"

% ------------ voices ------------

voiceWoodSoprano = \fixed c'' {
  \global
  \tempo 2. = 50
  % Music follows here.
  \themeMelody
}

voiceWoodAlto = \fixed c' {
  \global
  % Music follows here.
}

voiceWoodBass = \fixed c {
  \global
  % Music follows here.
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

voicePianoRight = \fixed c'' {
  \global
  % Music follows here.
}

voicePianoLeft = \fixed c {
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

instrumentWoods = \new GrandStaff \with {
  instrumentName = \markup \column {
    Woods
    flute \line { en horn } bassoon
  }
  shortInstrumentName =  "wd"
} <<
  \new Staff = "right" \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.0
  } { \clef treble \voiceWoodSoprano }
  \new Staff = "left" \with {
    midiInstrument = "english horn"
    midiMinimumVolume = #1.2
    midiMaximumVolume = #1.2
  } { \clef alto \voiceWoodAlto }
  \new Staff = "feet" \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef bass \voiceWoodBass }
>>

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

instrumentGuitar = \new Staff \with {
  instrumentName = "Guitar"
  shortInstrumentName = "gtr"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef alto
    \override Staff.StaffSymbol.line-count = #7
    \voiceGuitar }

instrumentTabGuitar = \new TabStaff \with {
  instrumentName = "Guitar"
  shortInstrumentName = "gtr"
  % ---- guitar
  stringTunings = \stringTuning <e, a, d g b e'>
  % ---- midi
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceGuitar }

instrumentBassGuitar = \new Staff \with {
  instrumentName = \markup { \column { Bass Guitar } }
  shortInstrumentName = "bs gtr"
  midiInstrument = "acoustic bass"
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
  midiInstrument = "acoustic bass"
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
      \instrumentWoods
      \instrumentStrings
      \instrumentPiano
      \instrumentHarpsichord
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
        %\enablePolymeter
      }
    }
  }
  \paper {
    system-separator-markup = \slashSeparator
  }
}
