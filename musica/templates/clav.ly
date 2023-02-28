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

voiceOrganRight = \fixed c'' {
  \global
  \tempo 2. = 50
  % Music follows here.
  c2.
}

voiceOrganLeft = \fixed c' {
  \global
  % Music follows here.
}

voiceOrganFeet = \fixed c {
  \global
  % Music follows here.
}

voiceViolaOrganistaRight = \fixed c'' {
  \global
  % Music follows here.
}

voiceViolaOrganistaLeft = \fixed c {
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

voicePianoRight = \fixed c'' {
  \global
  % Music follows here.
}

voicePianoLeft = \fixed c {
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

instrumentOrgan = \new GrandStaff \with {
  instrumentName = "Organ"
  shortInstrumentName =  "org"
} <<
  \new Staff = "right" \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.0
  } { \clef treble \voiceOrganRight }
  \new Staff = "left" \with {
    midiInstrument = "english horn"
    midiMinimumVolume = #1.2
    midiMaximumVolume = #1.2
  } { \clef alto \voiceOrganLeft }
  \new Staff = "left" \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef bass \voiceOrganFeet }
>>

instrumentViolaOrganista = \new GrandStaff \with {
  instrumentName = \markup \column { Viola Organista }
  shortInstrumentName = \markup \column { va org }
} <<
  \new Staff = "right" \with {
    midiInstrument = "violin"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef treble \voiceViolaOrganistaRight }
  \new Staff = "left" \with {
    midiInstrument = "cello"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.5
  } { \clef bass \voiceViolaOrganistaLeft }
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
      \instrumentOrgan
      \instrumentViolaOrganista
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
      }
    }
  }
  \paper {
    system-separator-markup = \slashSeparator
  }
}
