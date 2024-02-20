% vim: set expandtab shiftwidth=2 softtabstop=2:

\version "2.24.3"

% included files {{{1

\include "global/global.glob.ly"
\include "melody/melody.mld.ly"

% header {{{1

\header {
  title = "jazz"
  subtitle="subtitle"
  composer = "composer"
  poet = "poet"
  %piece = "piece"
}

% layout {{{1

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
    \consists "Merge_rests_engraver"
  }
  \context {
    \DrumStaff
    \RemoveAllEmptyStaves
    \consists "Merge_rests_engraver"
  }
}

% view only the beg/end {{{1

%showFirstLength = R2.*8
%showLastLength = R2.*8

% lyrics {{{1

% choir quartet {{{2

% soprano {{{3

lyricsChoirQuartetSoprano = \lyricmode {
  %\set vocalName = "S :"
  so -- pra -- no
}

% alto {{{3

lyricsChoirQuartetAlto = \lyricmode {
  %\set vocalName = "A :"
  al -- to
}

% tenor {{{3

lyricsChoirQuartetTenor = \lyricmode {
  %\set vocalName = "T :"
  te -- nor
}

% bass {{{3

lyricsChoirQuartetBass = \lyricmode {
  %\set vocalName = "B :"
  bass line
}

% choir quintet {{{2

% soprano {{{3

lyricsChoirQuintetSoprano = \lyricmode {
  %\set vocalName = "S :"
  so -- pra -- no
}

% mezzo {{{3

lyricsChoirQuintetMezzo = \lyricmode {
  %\set vocalName = "M :"
  mez -- zo
}

% alto {{{3

lyricsChoirQuintetAlto = \lyricmode {
  %\set vocalName = "A :"
  al -- to
}

% tenor {{{3

lyricsChoirQuintetTenor = \lyricmode {
  %\set vocalName = "T :"
  te -- nor
}

% bass {{{3

lyricsChoirQuintetBass = \lyricmode {
  %\set vocalName = "B :"
  bass line
}

% choir sextet {{{2

% soprano {{{3

lyricsChoirSextetSoprano = \lyricmode {
  %\set vocalName = "S :"
  so -- pra -- no
}

% mezzo {{{3

lyricsChoirSextetMezzo = \lyricmode {
  %\set vocalName = "M :"
  mez -- zo
}

% alto {{{3

lyricsChoirSextetAlto = \lyricmode {
  %\set vocalName = "A :"
  al -- to
}

% tenor {{{3

lyricsChoirSextetTenor = \lyricmode {
  %\set vocalName = "T :"
  te -- nor
}

% barytone {{{3

lyricsChoirSextetBarytone = \lyricmode {
  %\set vocalName = "Y :"
  ba -- ry -- to -- ne
}

% bass {{{3

lyricsChoirSextetBass = \lyricmode {
  %\set vocalName = "B :"
  bass line
}

% choir septet {{{2

% soprano {{{3

lyricsChoirSeptetSoprano = \lyricmode {
  %\set vocalName = "S :"
  so -- pra -- no
}

% mezzo {{{3

lyricsChoirSeptetMezzo = \lyricmode {
  %\set vocalName = "M :"
  mez -- zo
}

% alto {{{3

lyricsChoirSeptetAlto = \lyricmode {
  %\set vocalName = "A :"
  al -- to
}

% counter {{{3

lyricsChoirSeptetCounter = \lyricmode {
  %\set vocalName = "C :"
  coun -- ter
}

% tenor {{{3

lyricsChoirSeptetTenor = \lyricmode {
  %\set vocalName = "T :"
  te -- nor
}

% barytone {{{3

lyricsChoirSeptetBarytone = \lyricmode {
  %\set vocalName = "Y :"
  ba -- ry -- to -- ne
}

% bass {{{3

lyricsChoirSeptetBass = \lyricmode {
  %\set vocalName = "B :"
  bass line
}

% voices, instruments, melodies, hands {{{1

% choir quartet {{{2

% soprano {{{3

voiceChoirQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceChoirQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceChoirQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceChoirQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% choir quintet {{{2

% soprano {{{3

voiceChoirQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceChoirQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceChoirQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceChoirQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceChoirQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% choir sextet {{{2

% soprano {{{3

voiceChoirSextetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceChoirSextetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceChoirSextetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceChoirSextetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{3

voiceChoirSextetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceChoirSextetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% choir septet {{{2

% soprano {{{3

voiceChoirSeptetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceChoirSeptetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceChoirSeptetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% counter {{{3

voiceChoirSeptetCounter = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceChoirSeptetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{3

voiceChoirSeptetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceChoirSeptetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% wood quartet {{{2

% soprano {{{3

voiceWoodQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceWoodQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceWoodQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceWoodQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% wood quintet {{{2

% soprano {{{3

voiceWoodQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceWoodQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceWoodQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceWoodQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceWoodQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% wood sextet {{{2

% soprano {{{3

voiceWoodSextetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceWoodSextetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceWoodSextetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceWoodSextetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{3

voiceWoodSextetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceWoodSextetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% flutes {{{2

% one {{{3

voiceFluteOne = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{3

voiceFluteTwo = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% oboes {{{2

% one {{{3

voiceOboeOne = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{3

voiceOboeTwo = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% english horns {{{2

% one {{{3

voiceEnglishHornOne = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{3

voiceEnglishHornTwo = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% clarinets {{{2

% one {{{3

voiceClarinetOne = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{3

voiceClarinetTwo = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bassoons {{{2

% one {{{3

voiceBassoonOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{3

voiceBassoonTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% saxophones quartet {{{2

% soprano {{{3

voiceSaxophoneQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceSaxophoneQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceSaxophoneQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceSaxophoneQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% brass quartet {{{2

% soprano {{{3

voiceBrassQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceBrassQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceBrassQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceBrassQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% brass quintet {{{2

% soprano {{{3

voiceBrassQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceBrassQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceBrassQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceBrassQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceBrassQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% positive organ {{{2

% right {{{3

voicePositiveOrganRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{3

voicePositiveOrganLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% pedal organ {{{2

% right {{{3

voicePedalOrganRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{3

voicePedalOrganLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% feet {{{3

voicePedalOrganFeet = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% accordion {{{2

% right {{{3

voiceAccordionRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{3

voiceAccordionLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quartet {{{2

% soprano {{{3

voiceStringQuartetSoprano = \relative c'' {
  \keytime
  \tempo 2. = 50
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceStringQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceStringQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceStringQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quintet {{{2

% soprano {{{3

voiceStringQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceStringQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceStringQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceStringQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceStringQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string sextet {{{2

% soprano {{{3

voiceStringSextetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceStringSextetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceStringSextetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceStringSextetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{3

voiceStringSextetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceStringSextetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string septet {{{2

% soprano {{{3

voiceStringSeptetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceStringSeptetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceStringSeptetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% counter {{{3

voiceStringSeptetCounter = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceStringSeptetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{3

voiceStringSeptetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceStringSeptetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% harpsichord {{{2

% right {{{3

voiceHarpsichordRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{3

voiceHarpsichordLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% pedal harpsichord {{{2

% right {{{3

voicePedalHarpsichordRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{3

voicePedalHarpsichordLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% feet {{{3

voicePedalHarpsichordFeet = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% piano {{{2

% right {{{3

voicePianoRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{3

voicePianoLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% harp {{{2

% treble {{{3

voiceHarpUpper = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceHarpLower = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% lutes {{{2

% treble {{{3

voiceLuteUpper = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceLuteLower = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% guitars {{{2

% treble {{{3

voiceGuitarUpper = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceGuitarLower = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% vibraphone {{{2

voiceVibraphone = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% drumkit {{{2

voiceDrumkit = {
  \keytime
  \anacrusisDrumkit % 0
}

% staves {{{1

% choir quartet {{{2

% soprano & alto {{{3

staffChoirQuartetSopranoAlto = \new Staff = "choirQuartetSopranoAlto"
\with {
  instrumentName = \markup { \column { soprano alto } }
  shortInstrumentName = \markup { \column { S A } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "choirQuartetSoprano" {
      \voiceOne \voiceChoirQuartetSoprano
    }
    \new Voice = "choirQuartetAlto" {
      \voiceTwo \voiceChoirQuartetAlto
    }
  >>
}

% tenor & bass {{{3

staffChoirQuartetTenorBass = \new Staff = "choirQuartetTenorBass"
\with {
  instrumentName = \markup { \column { tenor bass } }
  shortInstrumentName = \markup { \column { T B } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef varbaritone
  <<
    \new Voice = "choirQuartetTenor" {
      \voiceOne \voiceChoirQuartetTenor
    }
    \new Voice = "choirQuartetBass" {
      \voiceTwo \voiceChoirQuartetBass
    }
  >>
}

% choir quintet {{{2

% soprano & mezzo {{{3

staffChoirQuintetSopranoMezzo = \new Staff = "choirQuintetSopranoMezzo"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { S M } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "choirQuintetSoprano" {
      \voiceOne \voiceChoirQuintetSoprano
    }
    \new Voice = "choirQuintetMezzo" {
      \voiceTwo \voiceChoirQuintetMezzo
    }
  >>
}

% alto {{{3

staffChoirQuintetAlto = \new Staff = "choirQuintetAlto"
\with {
  instrumentName = "alto"
  shortInstrumentName = "A"
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  \new Voice = "choirQuintetAlto" \voiceChoirQuintetAlto
}

% tenor & bass {{{3

staffChoirQuintetTenorBass = \new Staff = "choirQuintetTenorBass"
\with {
  instrumentName = \markup { \column { tenor bass } }
  shortInstrumentName = \markup { \column { T B } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef varbaritone
  <<
    \new Voice = "choirQuintetTenor" {
      \voiceOne \voiceChoirQuintetTenor
    }
    \new Voice = "choirQuintetBass" {
      \voiceTwo \voiceChoirQuintetBass
    }
  >>
}

% choir sextet {{{2

% soprano & mezzo {{{3

staffChoirSextetSopranoMezzo = \new Staff = "choirSextetSopranoMezzo"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { S M } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "choirSextetSoprano" {
      \voiceOne \voiceChoirSextetSoprano
    }
    \new Voice = "choirSextetMezzo" {
      \voiceTwo \voiceChoirSextetMezzo
    }
  >>
}

% alto & tenor {{{3

staffChoirSextetAltoTenor = \new Staff = "choirSextetAltoTenor"
\with {
  instrumentName = \markup { \column { alto tenor } }
  shortInstrumentName = \markup { \column { A T } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  <<
    \new Voice = "choirSextetAlto" {
      \voiceOne \voiceChoirSextetAlto
    }
    \new Voice = "choirSextetTenor" {
      \voiceTwo \voiceChoirSextetTenor
    }
  >>
}

% barytone & bass {{{3

staffChoirSextetBarytoneBass = \new Staff = "choirSextetBarytoneBass"
\with {
  instrumentName = \markup { \column { barytone bass } }
  shortInstrumentName = \markup { \column { Y B } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef varbaritone
  <<
    \new Voice = "choirSextetBarytone" {
      \voiceOne \voiceChoirSextetBarytone
    }
    \new Voice = "choirSextetBass" {
      \voiceTwo \voiceChoirSextetBass
    }
  >>
}

% choir septet {{{2

% soprano & mezzo {{{3

staffChoirSeptetSopranoMezzo = \new Staff = "choirSeptetSopranoMezzo"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { S M } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "choirSeptetSoprano" {
      \voiceOne \voiceChoirSeptetSoprano
    }
    \new Voice = "choirSeptetMezzo" {
      \voiceTwo \voiceChoirSeptetMezzo
    }
  >>
}

% alto & counter {{{3

staffChoirSeptetAltoCounter = \new Staff = "choirSeptetAltoCounter"
\with {
  instrumentName = \markup { \column { alto counter } }
  shortInstrumentName = \markup { \column { A C } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  <<
    \new Voice = "choirSeptetAlto" {
      \voiceOne \voiceChoirSeptetAlto
    }
    \new Voice = "choirSeptetCounter" {
      \voiceTwo \voiceChoirSeptetCounter
    }
  >>
}

% tenor & barytone {{{3

staffChoirSeptetTenorBarytone = \new Staff = "choirSeptetTenorBarytone"
\with {
  instrumentName = \markup { \column { tenor barytone } }
  shortInstrumentName = \markup { \column { T Y } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef varbaritone
  <<
    \new Voice = "choirSeptetTenor" {
      \voiceOne \voiceChoirSeptetTenor
    }
    \new Voice = "choirSeptetBarytone" {
      \voiceTwo \voiceChoirSeptetBarytone
    }
  >>
}

% bass {{{3

staffChoirSeptetBass = \new Staff = "choirSeptetBass"
\with {
  instrumentName = "bass"
  shortInstrumentName = "B"
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef bass
  \new Voice = "choirSeptetBass" \voiceChoirSeptetBass
}

% wood quartet {{{2

% upper {{{3

staffWoodQuartetUpper = \new Staff = "woodQuartetUpper"
\with {
  instrumentName = \markup { \column { flute oboe } }
  shortInstrumentName = \markup { \column { fl ob } }
} <<
  % \clef french
  \clef treble
  \new Voice = "woodQuartetSoprano"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceWoodQuartetSoprano
  }
  \new Voice = "woodQuartetAlto"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceWoodQuartetAlto
  }
>>

% lower {{{3

staffWoodQuartetLower = \new Staff = "woodQuartetLower"
\with {
  instrumentName = \markup { \column { clarinet bassoon } }
  shortInstrumentName = \markup { \column { cl bn } }
} <<
  % \clef varbaritone
  \clef bass
  \new Voice = "woodQuartetTenor"
  \with {
    midiInstrument = "clarinet"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceWoodQuartetTenor
  }
  \new Voice = "woodQuartetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceWoodQuartetBass
  }
>>

% wood quintet {{{2

% upper {{{3

staffWoodQuintetUpper = \new Staff = "woodQuintetUpper"
\with {
  instrumentName = \markup { \column { flute oboe } }
  shortInstrumentName = \markup { \column { fl ob } }
} <<
  % \clef french
  \clef treble
  \new Voice = "woodQuintetSoprano"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceWoodQuintetSoprano
  }
  \new Voice = "woodQuintetMezzo"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceWoodQuintetMezzo
  }
>>

% middle {{{3

staffWoodQuintetMiddle = \new Staff = "woodQuintetMiddle"
\with {
  instrumentName = \markup { \column { english horn } }
  shortInstrumentName = \markup { \column { cl bn } }
  midiInstrument = "english horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
}
{
  \clef alto
  \voiceWoodQuintetAlto
}

% lower {{{3

staffWoodQuintetLower = \new Staff = "woodQuintetLower"
\with {
  instrumentName = \markup { \column { clarinet bassoon } }
  shortInstrumentName = \markup { \column { cl bn } }
} <<
  % \clef varbaritone
  \clef bass
  \new Voice = "woodQuintetTenor"
  \with {
    midiInstrument = "clarinet"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceWoodQuintetTenor
  }
  \new Voice = "woodQuintetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceWoodQuintetBass
  }
>>

% wood sextet {{{2

% upper {{{3

staffWoodSextetUpper = \new Staff = "woodSextetUpper"
\with {
  instrumentName = "flutes"
  shortInstrumentName = "fls"
} <<
  % \clef french
  \clef treble
  \new Voice = "woodSextetSoprano"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceWoodSextetSoprano
  }
  \new Voice = "woodSextetMezzo"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceWoodSextetMezzo
  }
>>

% middle {{{3

staffWoodSextetMiddle = \new Staff = "woodSextetMiddle"
\with {
  instrumentName = \markup { \column { oboe eng-horn } }
  shortInstrumentName = \markup { \column { ob enhn } }
} <<
  % \clef french
  \clef alto
  \new Voice = "woodSextetAlto"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceWoodSextetAlto
  }
  \new Voice ="woodSextetTenor"
  \with {
    midiInstrument = "english horn"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceWoodSextetTenor
  }
>>

% lower {{{3

staffWoodSextetLower = \new Staff = "woodSextetLower"
\with {
  instrumentName = \markup { \column { clarinet bassoon } }
  shortInstrumentName = \markup { \column { cl bn } }
} <<
  % \clef varbaritone
  \clef bass
  \new Voice = "woodSextetBarytone"
  \with {
    midiInstrument = "clarinet"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceWoodSextetBarytone
  }
  \new Voice = "woodSextetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceWoodSextetBass
  }
>>

% flutes {{{2

staffFlutes = \new Staff
\with {
  instrumentName = "flutes"
  shortInstrumentName = "fls"
  midiInstrument = "flute"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef french
  %\clef treble
  <<
    \new Voice = "fluteOne" {
      \voiceOne \voiceFluteOne
    }
    \new Voice = "fluteTwo" {
      \voiceTwo \voiceFluteTwo
    }
  >>
}

% oboes {{{2

staffOboes = \new Staff
\with {
  instrumentName = "oboes"
  shortInstrumentName = "obs"
  midiInstrument = "oboe"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef soprano
  <<
    \new Voice = "oboeOne" {
      \voiceOne \voiceOboeOne
    }
    \new Voice = "oboeTwo" {
      \voiceTwo \voiceOboeTwo
    }
  >>
}

% english horns {{{2

staffEnglishHorns = \new Staff
\with {
  instrumentName = \markup { \column { english horns } }
  shortInstrumentName = "ehs"
  midiInstrument = "english horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  <<
    \new Voice = "englishHornOne" {
      \voiceOne \voiceEnglishHornOne
    }
    \new Voice = "englishHornTwo" {
      \voiceTwo \voiceEnglishHornTwo
    }
  >>
}

% clarinets {{{2

staffClarinets = \new Staff
\with {
  instrumentName = "clarinets"
  shortInstrumentName = "cls"
  midiInstrument = "clarinet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  <<
    \new Voice = "clarinetOne" {
      \voiceOne \voiceClarinetOne
    }
    \new Voice = "clarinetTwo" {
      \voiceTwo \voiceClarinetTwo
    }
  >>
}

% bassoons {{{2

staffBassoons = \new Staff
\with {
  instrumentName = "bassoons"
  shortInstrumentName = "bns"
  midiInstrument = "bassoon"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef bass
  <<
    \new Voice = "bassoonOne" {
      \voiceOne \voiceBassoonOne
    }
    \new Voice = "bassoonTwo" {
      \voiceTwo \voiceBassoonTwo
    }
  >>
}

% saxophone quartet {{{2

% upper {{{3

staffSaxophoneQuartetUpper = \new Staff = "saxophoneUpper"
\with {
  midiInstrument = "soprano sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  % \clef french
  \clef treble
  <<
    \new Voice = "saxophoneQuartetSoprano" {
      \voiceOne \voiceSaxophoneQuartetSoprano
    }
    \new Voice = "saxophoneQuartetAlto" {
      \voiceTwo \voiceSaxophoneQuartetAlto
    }
  >>
}

% lower {{{3

staffSaxophoneQuartetLower = \new Staff = "saxophoneLower"
\with {
  midiInstrument = "soprano sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  % \clef varbaritone
  \clef bass
  <<
    \new Voice = "saxophoneQuartetTenor" {
      \voiceOne \voiceSaxophoneQuartetTenor
    }
    \new Voice = "saxophoneQuartetBass" {
      \voiceTwo \voiceSaxophoneQuartetBass
    }
  >>
}

% brass quartet {{{2

% upper {{{3

staffBrassQuartetUpper = \new Staff = "brassQuartetUpper"
\with {
  instrumentName = "trumpets"
  shortInstrumentName = "tpt"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "brassQuartetSoprano" {
      \voiceOne \voiceBrassQuartetSoprano
    }
    \new Voice = "brassQuartetAlto" {
      \voiceTwo \voiceBrassQuartetAlto
    }
  >>
}

% lower {{{3

staffBrassQuartetLower = \new Staff = "brassQuartetLower"
\with {
  instrumentName = "fr-horns"
  shortInstrumentName = "hns"
  midiInstrument = "french horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef bass
  <<
    \new Voice = "brassQuartetTenor" {
      \voiceOne \voiceBrassQuartetTenor
    }
    \new Voice = "brassQuartetBass" {
      \voiceTwo \voiceBrassQuartetBass
    }
  >>
}

% brass quintet {{{2

% upper {{{3

staffBrassQuintetUpper = \new Staff = "brassQuintetUpper"
\with {
  instrumentName = "trumpets"
  shortInstrumentName = "tpt"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "brassQuintetSoprano" {
      \voiceOne \voiceBrassQuintetSoprano
    }
    \new Voice = "brassQuintetMezzo" {
      \voiceTwo \voiceBrassQuintetMezzo
    }
  >>
}

% middle {{{3

staffBrassQuintetMiddle = \new Staff = "brassQuintetMiddle"
\with {
  instrumentName = \markup { \column { french horn } }
  shortInstrumentName = "hn"
  midiInstrument = "french horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
}
{
  \clef alto
  \voiceBrassQuintetAlto
}


% lower {{{3

staffBrassQuintetLower = \new Staff = "brassQuintetLower"
\with {
  instrumentName = \markup { \column { trombone tuba } }
  shortInstrumentName = \markup { \column { tbn tba } }
} <<
  % \clef varbaritone
  \clef bass
  \new Voice ="brassQuintetTenor"
  \with {
    midiInstrument = "trombone"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceOne \voiceBrassQuintetTenor
  }
  \new Voice = "brassQuintetBass"
  \with {
    midiInstrument = "tuba"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #1.5
  } {
    \voiceTwo \voiceBrassQuintetBass
  }
>>


% positive organ {{{2

% right {{{3

staffPositiveOrganRight = \new Staff = "positiveOrganRight"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\clef soprano
  %\showStaffSwitch
  \voicePositiveOrganRight
}

% left {{{3

staffPositiveOrganLeft = \new Staff = "positiveOrganLeft"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  %\showStaffSwitch
  \voicePositiveOrganLeft
}

% pedal organ {{{2

% right {{{3

staffPedalOrganRight = \new Staff = "pedalOrganRight"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voicePedalOrganRight
}

% left {{{3

staffPedalOrganLeft = \new Staff = "pedalOrganLeft"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef alto
  %\showStaffSwitch
  \voicePedalOrganLeft
}

% feet {{{3

staffPedalOrganFeet = \new Staff = "pedalOrganFeet"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voicePedalOrganFeet
}

% accordion {{{2

% right {{{3

staffAccordionRight = \new Staff = "accordionRight"
\with {
  midiInstrument = "accordion"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voiceAccordionRight
}

% left {{{3

staffAccordionLeft = \new Staff = "accordionLeft"
\with {
  midiInstrument = "accordion"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\showStaffSwitch
  \voiceAccordionLeft
}

% string quartet {{{2

% upper {{{3

staffStringQuartetUpper = \new Staff = "stringQuartetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  %\override Staff.StaffSymbol.line-count = #7
  <<
    \new Voice = "stringQuartetSoprano" {
      \voiceOne \voiceStringQuartetSoprano
    }
    \new Voice = "stringQuartetAlto" {
      \voiceTwo \voiceStringQuartetAlto
    }
  >>
}

% lower {{{3

staffStringQuartetLower = \new Staff = "stringQuartetLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef bass
  %\override Staff.StaffSymbol.line-count = #7
  <<
    \new Voice = "stringQuartetTenor" {
      \voiceOne \voiceStringQuartetTenor
    }
    \new Voice = "stringQuartetBass" {
      \voiceTwo \voiceStringQuartetBass
    }
  >>
}

% string quintet {{{2

% upper {{{3

staffStringQuintetUpper = \new Staff = "stringQuintetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "stringQuintetSoprano" {
      \voiceOne \voiceStringQuintetSoprano
    }
    \new Voice = "stringQuintetMezzo" {
      \voiceTwo \voiceStringQuintetMezzo
    }
  >>
}

% middle {{{3

staffStringQuintetMiddle = \new Staff = "stringQuintetMiddle"
\with {
  instrumentName = "viola"
  shortInstrumentName = "va"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  \voiceStringQuintetAlto
}

% lower {{{3

staffStringQuintetLower = \new Staff = "stringQuintetLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef bass
  <<
    \new Voice = "stringQuintetTenor" {
      \voiceOne \voiceStringQuintetTenor
    }
    \new Voice = "stringQuintetBass" {
      \voiceTwo \voiceStringQuintetBass
    }
  >>
}

% string sextet {{{2

% upper {{{3

staffStringSextetUpper = \new Staff = "stringSextetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "stringSextetSoprano" {
      \voiceOne \voiceStringSextetSoprano
    }
    \new Voice = "stringSextetMezzo" {
      \voiceTwo \voiceStringSextetMezzo
    }
  >>
}

% middle {{{3

staffStringSextetMiddle = \new Staff = "stringSextetMiddle"
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  <<
    \new Voice = "stringSextetAlto" {
      \voiceOne \voiceStringSextetAlto
    }
    \new Voice = "stringSextetTenor" {
      \voiceTwo \voiceStringSextetTenor
    }
  >>
}

% lower {{{3

staffStringSextetLower = \new Staff = "stringSextetLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef bass
  <<
    \new Voice = "stringSextetBarytone" {
      \voiceOne \voiceStringSextetBarytone
    }
    \new Voice = "stringSextetBass" {
      \voiceTwo \voiceStringSextetBass
    }
  >>
}

% string septet {{{2

% violin {{{3

staffStringSeptetViolin = \new Staff
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  <<
    \new Voice = "stringSeptetSoprano" {
      \voiceOne \voiceStringSeptetSoprano
    }
    \new Voice = "stringSeptetMezzo" {
      \voiceTwo \voiceStringSeptetMezzo
    }
  >>
}

% viola {{{3

staffStringSeptetViola = \new Staff
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef alto
  <<
    \new Voice = "stringSeptetAlto" {
      \voiceOne \voiceStringSeptetAlto
    }
    \new Voice = "stringSeptetCounter" {
      \voiceTwo \voiceStringSeptetCounter
    }
  >>
}

% cello {{{3

staffStringSeptetCello = \new Staff
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef varbaritone
  <<
    \new Voice = "stringSeptetTenor" {
      \voiceOne \voiceStringSeptetTenor
    }
    \new Voice = "stringSeptetBarytone" {
      \voiceTwo \voiceStringSeptetBarytone
    }
  >>
}

% contrabass {{{3

staffStringSeptetContrabass = \new Staff
\with {
  instrumentName = \markup \column { contra- bass }
  shortInstrumentName = "cb"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef bass
  \voiceStringSeptetBass
}

% harpsichord {{{2

% right {{{3

staffHarpsichordRight = \new Staff = "harpsichordRight"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voiceHarpsichordRight
}

% left {{{3

staffHarpsichordLeft = \new Staff = "harpsichordLeft"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\showStaffSwitch
  \voiceHarpsichordLeft
}

% pedal harpsichord {{{2

% right {{{3

staffPedalHarpsichordRight = \new Staff = "pedalHarpsichordRight"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voicePedalHarpsichordRight
}

% left {{{3

staffPedalHarpsichordLeft = \new Staff = "pedalHarpsichordLeft"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef alto
  %\showStaffSwitch
  \voicePedalHarpsichordLeft
}

% feet {{{3

staffPedalHarpsichordFeet = \new Staff = "pedalHarpsichordFeet"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voicePedalHarpsichordFeet
}

% piano {{{2

% right {{{3

staffPianoRight = \new Staff = "pianoRight"
\with {
  midiInstrument = "acoustic grand"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voicePianoRight
}

% left {{{3

staffPianoLeft = \new Staff = "pianoLeft"
\with {
  midiInstrument = "acoustic grand"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\showStaffSwitch
  \voicePianoLeft
}

% harp {{{2

% upper {{{3

staffHarpUpper = \new Staff = "harpUpper"
\with {
  midiInstrument = "orchestral harp"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\clef soprano
  \voiceHarpUpper
}

% lower {{{3

staffHarpLower = \new Staff = "harpLower"
\with {
  midiInstrument = "orchestral harp"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voiceHarpLower
}

% lutes {{{2

% upper {{{3

staffLuteUpper = \new Staff = "luteUpper"
\with {
  instrumentName = "lute"
  shortInstrumentName = "lt"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
  % 3rd line G clef
  %clefGlyph = #"clefs.G"
  %clefPosition = #0
  %clefTransposition = #0
  %middleCPosition = #-4
  %middleCClefPosition = #-4
} {
  \clef soprano
  \voiceLuteUpper
}

% lower {{{3

staffLuteLower = \new Staff = "luteLower"
\with {
  instrumentName = "archlute"
  shortInstrumentName = "arlt"
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef subbass
  \voiceLuteLower
}

% lutes tablatures {{{2

% upper {{{3

staffLuteTabUpper = \new TabStaff = "luteTabUpper"
\with {
  instrumentName = "lute"
  shortInstrumentName = "lt"
  % ---- lute family
  tablatureFormat = #fret-letter-tablature-format
  fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l")
  % -- renaissance lute, 6 courses
  stringTunings = \stringTuning <g, c f a d' g'>
  % -- renaissance lute, 8 courses
  %stringTunings = \stringTuning <g, c f a d' g'>
  %additionalBassStrings = \stringTuning <e, f,>
  % -- late renaissance / early baroque lute, 10 courses
  %stringTunings = \stringTuning <g, c f a d' g'>
  %additionalBassStrings = \stringTuning <c, d, ef, f,>
  % -- baroque lute, 13 courses
  %stringTunings = \stringTuning <a, d f a d' f'>
  %additionalBassStrings = \stringTuning <a,, b,, c, d, e, f, g,>
  % ---- midi
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceLuteUpper
}

% lower {{{3

staffLuteTabLower = \new TabStaff = "luteTabLower"
\with {
  instrumentName = "archlute"
  shortInstrumentName = "arlt"
  % ---- lute family
  tablatureFormat = #fret-letter-tablature-format
  fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l")
  % -- archlute, 14 courses
  stringTunings = \stringTuning <g, c f a d' g'>
  additionalBassStrings = \stringTuning <f,, g,, a,, b,, c, d, e, f,>
  % -- theorbo
  %stringTunings = \stringTuning <a, d g b e a>
  %additionalBassStrings = \stringTuning <g,, a,, b,, c, d, e, f, g,>
  % ---- midi
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceLuteLower
}

% guitars {{{2

% upper {{{3

staffGuitarUpper = \new Staff = "guitarUpper"
\with {
  instrumentName = "guitar"
  shortInstrumentName = "gtr"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
  % 3rd line G clef
  %clefGlyph = #"clefs.G"
  %clefPosition = #0
  %clefTransposition = #0
  %middleCPosition = #-4
  %middleCClefPosition = #-4
} {
  \clef soprano
  \voiceGuitarUpper
}

% lower {{{3

staffGuitarLower = \new Staff = "guitarLower"
\with {
  instrumentName = \markup \column { bass guitar }
  shortInstrumentName = "bgtr"
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.5
  midiMaximumVolume = #2.0
} {
  \clef subbass
  \voiceGuitarLower
}

% guitars tablatures {{{2

% upper {{{3

staffGuitarTabUpper = \new TabStaff = "guitarTabUpper"
\with {
  instrumentName = "guitar"
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
    \voiceGuitarUpper
}

% lower {{{3

staffGuitarTabLower = \new TabStaff = "guitarTabLower"
\with {
  instrumentName = \markup { \column { bass guitar } }
  shortInstrumentName = "bgtr"
  % ---- bass guitar
  stringTunings = \stringTuning <e,, a,, d, g,>
  % ---- midi
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceGuitarLower
}

% vibraphone {{{2

staffVibraphone = \new Staff
\with {
  instrumentName = \markup \column { vibra- phone }
  shortInstrumentName = "vb"
  midiInstrument = "vibraphone"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #1.5
} {
  \clef treble
  \voiceVibraphone
}

% drumkit {{{2

staffDrumkit = \new DrumStaff
\with {
  instrumentName = "drumkit"
  shortInstrumentName = "dk"
  \consists "Instrument_name_engraver"
} {
  \clef percussion
  \voiceDrumkit
}

% staff groups {{{1

% choir quartet {{{2

groupChoirQuartet = \new ChoirStaff <<
  % -- staff 1 : soprano & alto
  \staffChoirQuartetSopranoAlto
  \new Lyrics \with { alignAboveContext = "choirQuartetSopranoAlto" }
  \lyricsto "choirQuartetSoprano" \lyricsChoirQuartetSoprano
  \new Lyrics \with { alignBelowContext = "choirQuartetSopranoAlto" }
  \lyricsto "choirQuartetAlto" \lyricsChoirQuartetAlto
  % -- staff 2 : tenor & bass
  \staffChoirQuartetTenorBass
  \new Lyrics \with { alignAboveContext = "choirQuartetTenorBass" }
  \lyricsto "choirQuartetTenor" \lyricsChoirQuartetTenor
  \new Lyrics \with { alignBelowContext = "choirQuartetTenorBass" }
  \lyricsto "choirQuartetBass" \lyricsChoirQuartetBass
>>

% choir quintet {{{2

groupChoirQuintet = \new ChoirStaff <<
  % -- staff 1 : soprano & mezzo
  \staffChoirQuintetSopranoMezzo
  \new Lyrics \with { alignAboveContext = "choirQuintetSopranoMezzo" }
  \lyricsto "choirQuintetSoprano" \lyricsChoirQuintetSoprano
  \new Lyrics \with { alignBelowContext = "choirQuintetSopranoMezzo" }
  \lyricsto "choirQuintetMezzo" \lyricsChoirQuintetMezzo
  % -- staff 2 : alto
  \staffChoirQuintetAlto
  \new Lyrics \with { alignBelowContext = "choirQuintetAlto" }
  \lyricsto "choirQuintetAlto" \lyricsChoirQuintetAlto
  % -- staff 3 : tenor & bass
  \staffChoirQuintetTenorBass
  \new Lyrics \with { alignAboveContext = "choirQuintetTenorBass" }
  \lyricsto "choirQuintetTenor" \lyricsChoirQuintetTenor
  \new Lyrics \with { alignBelowContext = "choirQuintetTenorBass" }
  \lyricsto "choirQuintetBass" \lyricsChoirQuintetBass
>>

% choir sextet {{{2

groupChoirSextet = \new ChoirStaff <<
  % -- staff 1 : soprano & mezzo
  \staffChoirSextetSopranoMezzo
  \new Lyrics \with { alignAboveContext = "choirSextetSopranoMezzo" }
  \lyricsto "choirSextetSoprano" \lyricsChoirSextetSoprano
  \new Lyrics \with { alignBelowContext = "choirSextetSopranoMezzo" }
  \lyricsto "choirSextetMezzo" \lyricsChoirSextetMezzo
  % -- staff 2 : alto & tenor
  \staffChoirSextetAltoTenor
  \new Lyrics \with { alignAboveContext = "choirSextetAltoTenor" }
  \lyricsto "choirSextetAlto" \lyricsChoirSextetAlto
  \new Lyrics \with { alignBelowContext = "choirSextetAltoTenor" }
  \lyricsto "choirSextetTenor" \lyricsChoirSextetTenor
  % -- staff 3 : barytone & bass
  \staffChoirSextetBarytoneBass
  \new Lyrics \with { alignAboveContext = "choirSextetBarytoneBass" }
  \lyricsto "choirSextetBarytone" \lyricsChoirSextetBarytone
  \new Lyrics \with { alignBelowContext = "choirSextetBarytoneBass" }
  \lyricsto "choirSextetBass" \lyricsChoirSextetBass
>>

% choir septet {{{2

groupChoirSeptet = \new ChoirStaff <<
  % -- staff 1 : soprano & mezzo
  \staffChoirSeptetSopranoMezzo
  \new Lyrics \with { alignAboveContext = "choirSeptetSopranoMezzo" }
  \lyricsto "choirSeptetSoprano" \lyricsChoirSeptetSoprano
  \new Lyrics \with { alignBelowContext = "choirSeptetSopranoMezzo" }
  \lyricsto "choirSeptetMezzo" \lyricsChoirSeptetMezzo
  % -- staff 2 : alto & counter
  \staffChoirSeptetAltoCounter
  \new Lyrics \with { alignAboveContext = "choirSeptetAltoCounter" }
  \lyricsto "choirSeptetAlto" \lyricsChoirSeptetAlto
  \new Lyrics \with { alignBelowContext = "choirSeptetAltoCounter" }
  \lyricsto "choirSeptetCounter" \lyricsChoirSeptetCounter
  % -- staff 3 : tenor & barytone
  \staffChoirSeptetTenorBarytone
  \new Lyrics \with { alignAboveContext = "choirSeptetTenorBarytone" }
  \lyricsto "choirSeptetTenor" \lyricsChoirSeptetTenor
  \new Lyrics \with { alignBelowContext = "choirSeptetTenorBarytone" }
  \lyricsto "choirSeptetBarytone" \lyricsChoirSeptetBarytone
  % -- staff 4 : bass
  \staffChoirSeptetBass
  \new Lyrics \with { alignBelowContext = "choirSeptetBass" }
  \lyricsto "choirSeptetBass" \lyricsChoirSeptetBass
>>

% wood quartet {{{2

groupWoodQuartet = \new StaffGroup <<
  \staffWoodQuartetUpper
  \staffWoodQuartetLower
>>

% wood quintet {{{2

groupWoodQuintet = \new StaffGroup <<
  \staffWoodQuintetUpper
  \staffWoodQuintetMiddle
  \staffWoodQuintetLower
>>

% wood sextet {{{2

groupWoodSextet = \new StaffGroup <<
  \staffWoodSextetUpper
  \staffWoodSextetMiddle
  \staffWoodSextetLower
>>

% saxophone quartet {{{2

groupSaxophoneQuartet = \new StaffGroup
\with {
  instrumentName = \markup \column { saxo- phones }
  shortInstrumentName = "sax"
} <<
  \staffSaxophoneQuartetUpper
  \staffSaxophoneQuartetLower
>>

% brass quartet {{{2

groupBrassQuartet = \new StaffGroup
<<
  \staffBrassQuartetUpper
  \staffBrassQuartetLower
>>

% brass quintet {{{2

groupBrassQuintet = \new StaffGroup
<<
  \staffBrassQuintetUpper
  \staffBrassQuintetMiddle
  \staffBrassQuintetLower
>>

% positive organ {{{2

groupPositiveOrgan = \new GrandStaff
\with {
  instrumentName = \markup { \column { positive organ } }
  shortInstrumentName = \markup { \column { pos org } }
  connectArpeggios = ##t
} <<
  \staffPositiveOrganRight
  \staffPositiveOrganLeft
>>

% pedal organ {{{2

groupPedalOrgan = \new GrandStaff
\with {
  instrumentName = \markup { \column { pedal organ } }
  shortInstrumentName = \markup { \column { ch org } }
  connectArpeggios = ##t
} <<
  \staffPedalOrganRight
  \staffPedalOrganLeft
  \staffPedalOrganFeet
>>

% accordion {{{2

groupAccordion = \new GrandStaff
\with {
  instrumentName = "accordion"
  shortInstrumentName = "acc"
} <<
  \staffAccordionRight
  \staffAccordionLeft
>>

% string quartet {{{2

groupStringQuartet = \new StaffGroup
<<
  \staffStringQuartetUpper
  \staffStringQuartetLower
>>

% string quintet {{{2

groupStringQuintet = \new StaffGroup
<<
  \staffStringQuintetUpper
  \staffStringQuintetMiddle
  \staffStringQuintetLower
>>

% string sextet {{{2

groupStringSextet = \new StaffGroup
<<
  \staffStringSextetUpper
  \staffStringSextetMiddle
  \staffStringSextetLower
>>

% string septet {{{2

groupStringSeptet = \new StaffGroup
<<
  \staffStringSeptetViolin
  \staffStringSeptetViola
  \staffStringSeptetCello
  \staffStringSeptetContrabass
>>

% harpsichord {{{2

groupHarpsichord = \new GrandStaff
\with {
  instrumentName = \markup \column { harpsi- chord }
  shortInstrumentName = \markup \column { hp cd }
  connectArpeggios = ##t
} <<
  \staffHarpsichordRight
  \staffHarpsichordLeft
>>

% pedal harpsichord {{{2

groupPedalHarpsichord = \new GrandStaff
\with {
  instrumentName = \markup { \column { pedal harpsi- chord } }
  shortInstrumentName = \markup \column { ped hp cd }
  connectArpeggios = ##t
} <<
  \staffPedalHarpsichordRight
  \staffPedalHarpsichordLeft
  \staffPedalHarpsichordFeet
>>

% piano {{{2

groupPiano = \new GrandStaff
\with {
  instrumentName = "piano"
  shortInstrumentName = "pn"
  connectArpeggios = ##t
} <<
  \staffPianoRight
  \staffPianoLeft
>>

% harp {{{2

groupHarp = \new GrandStaff
\with {
  instrumentName = "harp"
  shortInstrumentName = "hp"
  connectArpeggios = ##t
} <<
  \staffHarpUpper
  \staffHarpLower
>>

% lutes {{{2

groupLutes = \new StaffGroup
<<
  \staffLuteUpper
  \staffLuteLower
>>

% luteTabs {{{2

groupLuteTabs = \new StaffGroup
<<
  \staffLuteTabUpper
  \staffLuteTabLower
>>

% guitars {{{2

groupGuitars = \new StaffGroup
<<
  \staffGuitarUpper
  \staffGuitarLower
>>

% guitarTabs {{{2

groupGuitarTabs = \new StaffGroup
<<
  \staffGuitarTabUpper
  \staffGuitarTabLower
>>

% book {{{1

\book {
  % instruments list, before the score {{{2
  \markup \column {
    \vspace #1
    %\line { woods = flute, oboe, english horn, bassoon }
    \line { saxophones = soprano, alto, tenor, baritone sax }
    \vspace #1
  }
  % score, with instruments as single & group staves {{{2
  \score {
    <<
      % choir {{{3
      %\groupChoirQuartet
      %\groupChoirQuintet
      %\groupChoirSextet
      %\groupChoirSeptet
      % winds {{{3
      % woods {{{4
      % wood groups {{{5
      %\groupWoodQuartet
      %\groupWoodQuintet
      %\groupWoodSextet
      % individual woods {{{5
      \staffFlutes
      %\staffOboes
      %\staffEnglishHorns
      \staffClarinets
      %\staffBassoons
      % saxophones {{{5
      \groupSaxophoneQuartet
      % brass {{{4
      %\groupBrassQuartet
      \groupBrassQuintet
      % wind keyboards {{{4
      \groupPositiveOrgan
      %\groupPedalOrgan
      %\groupAccordion
      % strings {{{3
      % bowed strings {{{4
      %\groupStringQuartet
      %\groupStringQuintet
      %\groupStringSextet
      %\groupStringSeptet
      % string keyboards {{{4
      %\groupHarpsichord
      %\groupPedalHarpsichord
      \groupPiano
      % plucked strings {{{4
      %\groupHarp
      %\groupLutes
      %\groupLuteTabs
      \groupGuitars
      %\groupGuitarTabs
      % drums {{{3
      \staffVibraphone
      \staffDrumkit
    >>
    % layout, see beginning of file {{{2
    \layout { }
    % midi {{{2
    \midi {
      \context {
        \Score
        %midiChannelMapping = #'voice
        %\enablePolymeter
      }
      % -- comment this if you don't need distinct instruments on the same staff
      \context {
        \Staff
        \remove "Staff_performer"
      }
      % -- comment this if you don't need distinct instruments on the same staff
      \context {
        \Voice
        \consists "Staff_performer"
      }
    }
  }
  \paper {
    system-separator-markup = \slashSeparator
  }
}
