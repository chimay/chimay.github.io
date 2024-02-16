% vim: set expandtab shiftwidth=2 softtabstop=2:

\version "2.24.3"

% included files {{{1

\include "global/global.glob.ly"
\include "melody/melody.mld.ly"

% header {{{1

\header {
  title = "miscellaneous"
  subtitle="subtitle"
  composer = "composer"
  poet = "poet"
  %piece = "piece"
}

% layout {{{1

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
    \consists "Merge_rests_engraver"
  }
  \context {
    \DrumStaff
    \RemoveAllEmptyStaves
  }
}

% view only the beg/end {{{1

%showFirstLength = R2.*8
%showLastLength = R2.*8

% voices {{{1

% test {{{2

% TestTreble {{{3

voiceTestTreble = \relative c'' {
  \keytime
  \tempo 2. = 50
  %\anacrusis % hypermeasure 0
  s2.*8
}

% TestBass {{{3

voiceTestBass = \relative c {
  \keytime
  %\anacrusis % hypermeasure 0
  \relative c,, \theme_test
}

% guitars {{{2

% Guitar {{{3

voiceGuitar = \relative c {
  \keytime
}

% BassGuitar {{{3

voiceBassGuitar = \relative c {
  \keytime
}

% lutes {{{2

% Lute {{{3

voiceLute = \relative c {
  \keytime
}

% harp {{{2

% upper {{{3

voiceHarpUpper = \relative c'' {
  \keytime
}

% lower {{{3

voiceHarpLower = \relative c {
  \keytime
}

% effects {{{2

voiceEffects = \relative c' {
  %\set Staff.midiInstrument = #"fx 1 (rain)"
  %c2. c2.
}

% instruments {{{1

% test {{{2

instrumentTest = \new GrandStaff \with {
  instrumentName = "Test"
  shortInstrumentName = "t"
  connectArpeggios = ##t
} <<
  \new Staff = "treble" \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } { \clef treble
      \showStaffSwitch
      \voiceTestTreble }
  \new Staff = "bass" \with {
    midiInstrument = "orchestral harp"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
    % fine clef tweak
    clefGlyph = #"clefs.F"
    clefPosition = #2
    clefTransposition = #0
    middleCPosition = #6
    middleCClefPosition = #6
  } { %\clef bass
      \showStaffSwitch
      \voiceTestBass }
>>

% guitars {{{2

% Guitar {{{3

instrumentGuitar = \new Staff \with {
  instrumentName = "Guitar"
  shortInstrumentName = "gtr"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tenor
    %\override Staff.StaffSymbol.line-count = #7
    \voiceGuitar }

% TabGuitar {{{3

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

% BassGuitar {{{3

instrumentBassGuitar = \new Staff \with {
  instrumentName = \markup { \column { Bass Guitar } }
  shortInstrumentName = \markup { \column { bs gtr } }
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef subbass
    %\override Staff.StaffSymbol.line-count = #7
    \voiceBassGuitar }

% TabBassGuitar {{{3

instrumentTabBassGuitar = \new TabStaff \with {
  instrumentName = \markup { \column { Bass Guitar } }
  shortInstrumentName = \markup { \column { bs gtr } }
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

% lutes {{{2

% Lute {{{3

instrumentLute = \new Staff \with {
  instrumentName = "lutes"
  shortInstrumentName = "lts"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef alto
    %\override Staff.StaffSymbol.line-count = #7
    \voiceLute }

% TabLute {{{3

instrumentTabLute = \new TabStaff \with {
  instrumentName = "lutes"
  shortInstrumentName = "lts"
  % ---- lute
  tablatureFormat = #fret-letter-tablature-format
  fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l")
  % -- renaissance lute, 6 courses
  %stringTunings = \stringTuning <g, c f a d' g'>
  % -- renaissance lute, 8 courses
  %stringTunings = \stringTuning <g, c f a d' g'>
  %additionalBassStrings = \stringTuning <e, f,>
  % -- late renaissance / early baroque lute, 10 courses
  %stringTunings = \stringTuning <g, c f a d' g'>
  %additionalBassStrings = \stringTuning <c, d, ef, f,>
  % -- baroque lute, 13 courses
  %stringTunings = \stringTuning <a, d f a d' f'>
  %additionalBassStrings = \stringTuning <a,, b,, c, d, e, f, g,>
  % -- archlute, 14 courses
  stringTunings = \stringTuning <g, c f a d' g'>
  additionalBassStrings = \stringTuning <f,, g,, a,, b,, c, d, e, f,>
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

% harp {{{2

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

% effects {{{2

instrumentEffects = \new Staff \with {
  instrumentName = "Effects"
  shortInstrumentName = "fx"
} { \clef percussion
    \override Staff.StaffSymbol.line-count = #1
    \voiceEffects
}

% book {{{1

\book {
  \score {
    <<
      \instrumentTest
      \instrumentGuitar
      \instrumentTabGuitar
      \instrumentBassGuitar
      \instrumentTabBassGuitar
      \instrumentLute
      \instrumentTabLute
      \instrumentHarp
      \instrumentEffects
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
