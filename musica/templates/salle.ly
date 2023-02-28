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

voiceEnglishHorn = \fixed c' {
  \global
  % Music follows here.
}

voiceBassoon = \fixed c {
  \global
  % Music follows here.
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

instrumentFlute = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "fl"
  midiInstrument = "flute"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef french
    %\override Staff.StaffSymbol.line-count = #7
    \voiceFlute }

instrumentEnglishHorn = \new Staff \with {
  instrumentName = \markup {
    \column { English Horn \line { in F } } }
  shortInstrumentName = \markup \column { en hn }
  midiInstrument = "english horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
    %\override Staff.StaffSymbol.line-count = #7
    % ---- no transposition, better to compose
    \clef alto
    \voiceEnglishHorn
    % ---- transposed, better to play
    %\clef soprano
    %\transposition f
    %\transpose c g \voiceEnglishHorn
}

instrumentBassoon = \new Staff \with {
  instrumentName = "Bassoon"
  shortInstrumentName = "bsn"
  midiInstrument = "bassoon"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef bass
    %\override Staff.StaffSymbol.line-count = #7
    \voiceBassoon }

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
  shortInstrumentName = "cb"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef bass
    %\override Staff.StaffSymbol.line-count = #7
    \voiceContrabass }

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
      \new StaffGroup <<
        \instrumentFlute
        \instrumentEnglishHorn
        \instrumentBassoon
      >>
      \new StaffGroup <<
        \instrumentViolin
        \instrumentViola
        \instrumentCello
        \instrumentContrabass
      >>
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
