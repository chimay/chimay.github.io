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
  % ---- score
  \override Staff.NoteHead.style = #'baroque
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \context {
    \Score
    %barNumberVisibility = #(every-nth-bar-number-visible 8)
    barNumberVisibility = #(modulo-bar-number-visible 8 0)
  }
  % ---- staff
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}

% ------------ melodies ------------

\include "include/mel-3.ly"

% ------------ voices ------------

voiceAccordionUpper = \fixed c'' {
  \global
  % Music follows here.
  c2.
}

voiceAccordionLower = \fixed c {
  \global
  % Music follows here.
}

voiceGuitar = \fixed c {
  \global
  % Music follows here.
}

voiceLute = \fixed c {
  \global
  % Music follows here.
}

voiceHarpUpper = \fixed c'' {
  \global
  % Music follows here.
}

voiceHarpLower = \fixed c {
  \global
  % Music follows here.
}

% ------------ instruments ------------

instrumentAccordion = \new GrandStaff \with {
  instrumentName = "Accordion"
  shortInstrumentName = "acc"
} <<
  \new Staff = "right" \with {
    midiInstrument = "accordion"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } { \clef treble \voiceAccordionUpper }
  \new Staff = "left" \with {
    midiInstrument = "accordion"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } { \clef bass \voiceAccordionLower }
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
  % -- classic guitar
  stringTunings = \stringTuning <e, a, d g b e'>
  % -- bass guitar
  %stringTunings = \stringTuning <e,, a,, d, g,>
  % ---- midi
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceGuitar }

instrumentLute = \new Staff \with {
  instrumentName = "Lute"
  shortInstrumentName = "lt"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef alto
    \override Staff.StaffSymbol.line-count = #7
    \voiceLute }

instrumentTabLute = \new TabStaff \with {
  instrumentName = "Lute"
  shortInstrumentName = "lt"
  % ---- lute
  tablatureFormat = #fret-letter-tablature-format
  fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l")
  % -- renaissance lute, 6 courses
  %stringTunings = \stringTuning <g, c f a d' g'>
  % -- renaissance lute, 8 courses
  stringTunings = \stringTuning <g, c f a d' g'>
  additionalBassStrings = \stringTuning <e, f,>
  % -- late renaissance / early baroque lute, 10 courses
  %stringTunings = \stringTuning <g, c f a d' g'>
  %additionalBassStrings = \stringTuning <c, d, ef, f,>
  % -- baroque lute, 13 courses
  %stringTunings = \stringTuning <a, d f a d' f'>
  %additionalBassStrings = \stringTuning <a,, b,, c, d, e, f, g,>
  % -- theorbo
  %stringTunings = \stringTuning <a, d g b e a>
  %additionalBassStrings = \stringTuning <g,, a,, b,, c, d, e, f, g,>
  % ---- midi
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceLute }

instrumentHarp = \new GrandStaff \with {
  instrumentName = "Harp"
  shortInstrumentName = "hp"
} <<
  \new Staff = "upper" \with {
    midiInstrument = "orchestral harp"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.9
  } { \clef treble \voiceHarpUpper }
  \new Staff = "lower" \with {
    midiInstrument = "orchestral harp"
    midiMinimumVolume = #1.5
    midiMaximumVolume = #1.9
  } { \clef bass \voiceHarpLower }
>>

% ------------ book ------------

\book {
  \score {
    <<
      \instrumentAccordion
      \new ChoirStaff <<
        \instrumentGuitar
        \instrumentTabGuitar
        \instrumentLute
        \instrumentTabLute
      >>
      \instrumentHarp
    >>
    \layout { }
    \midi {
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }
  }
  \paper {
    system-separator-markup = \slashSeparator
  }
}
