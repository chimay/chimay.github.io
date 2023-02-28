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

voiceSoprano = \fixed c'' {
  \global
  \tempo 2. = 50
  \voiceOne
  % Music follows here.
  c2.
}

voiceMezzo = \fixed c'' {
  \global
  \voiceTwo
  % Music follows here.
}

voiceAlto = \fixed c' {
  \global
  \voiceOne
  % Music follows here.
}

voiceCounter = \fixed c' {
  \global
  \voiceTwo
  % Music follows here.
}

voiceTenor = \fixed c {
  \global
  \voiceOne
  % Music follows here.
}

voiceBarytone = \fixed c {
  \global
  \voiceTwo
  % Music follows here.
}

voiceBass = \fixed c, {
  \global
  % Music follows here.
}

% ------------ lyrics ------------

lyricsSoprano = \lyricmode {
  \set vocalName = "S :"
  un deux trois
}

lyricsMezzo = \lyricmode {
  \set vocalName = "M :"
}

lyricsAlto = \lyricmode {
  \set vocalName = "A :"
}

lyricsCounter = \lyricmode {
  \set vocalName = "C :"
}

lyricsTenor = \lyricmode {
  \set vocalName = "T :"
}

lyricsBaritone = \lyricmode {
  \set vocalName = "Y :"
}

lyricsBass = \lyricmode {
  \set vocalName = "B :"
}

% ------------ instruments ------------

instrumentSopranoMezzo = \new Staff \with {
  instrumentName = \markup { \column { Soprano Mezzo } }
  shortInstrumentName = \markup { \column { S M } }
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef treble
    %\override Staff.StaffSymbol.line-count = #7
    <<
      \new Voice = soprano
      \voiceSoprano
      \new Voice = mezzo
      \voiceMezzo
    >>
}

instrumentAltoCounter = \new Staff \with {
  instrumentName = \markup { \column { Alto Counter } }
  shortInstrumentName = \markup { \column { A C } }
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef mezzosoprano
    %\override Staff.StaffSymbol.line-count = #7
    <<
      \new Voice = alto
      \voiceAlto
      \new Voice = counter
      \voiceCounter
    >>
}

instrumentTenorBaritone = \new Staff \with {
  instrumentName = \markup { \column { Tenor Baritone } }
  shortInstrumentName = \markup { \column { T Y } }
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef varbaritone
    %\override Staff.StaffSymbol.line-count = #7
    <<
      \new Voice = tenor
      \voiceAlto
      \new Voice = baritone
      \voiceCounter
    >>
}

instrumentBass = \new Staff \with {
  instrumentName = "Bass"
  shortInstrumentName = "B"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef bass
    %\override Staff.StaffSymbol.line-count = #7
    \voiceBass
    \addlyrics \lyricsBass
}

% ------------ book ------------

\book {
  \score {
    <<
      \new StaffGroup <<
        % ---- staves & lyrics structure
        \instrumentSopranoMezzo
        \new Lyrics = "soprano"
        \new Lyrics = "mezzo"
        \instrumentAltoCounter
        \new Lyrics = "alto"
        \new Lyrics = "counter"
        \instrumentTenorBaritone
        \new Lyrics = "tenor"
        \new Lyrics = "baritone"
        \instrumentBass
        \new Lyrics = "bass"
        % ---- lyrics variables
        \context Lyrics = "soprano" {
          \lyricsto "soprano" \lyricsSoprano
        }
        \context Lyrics = "mezzo" {
          \lyricsto "mezzo" \lyricsMezzo
        }
        \context Lyrics = "alto" {
          \lyricsto "alto" \lyricsAlto
        }
        \context Lyrics = "counter" {
          \lyricsto "counter" \lyricsCounter
        }
        \context Lyrics = "tenor" {
          \lyricsto "tenor" \lyricsTenor
        }
        \context Lyrics = "baritone" {
          \lyricsto "baritone" \lyricsBaritone
        }
        \context Lyrics = "bass" {
          \lyricsto "bass" \lyricsBass
        }
      >>
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
