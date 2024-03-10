% vim: set expandtab shiftwidth=2 softtabstop=2:

\version "2.24.3"

% included files {{{1

\include "global/global.glob.ly"
\include "melody/melody.mld.ly"

% header {{{1

\header {
  title = "strings"
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

% choir {{{2

% choir quartet {{{3

% soprano {{{4

voiceChoirQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceChoirQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceChoirQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceChoirQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% choir quintet {{{3

% soprano {{{4

voiceChoirQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceChoirQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceChoirQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceChoirQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceChoirQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% choir sextet {{{3

% soprano {{{4

voiceChoirSextetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceChoirSextetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceChoirSextetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceChoirSextetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{4

voiceChoirSextetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceChoirSextetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% choir septet {{{3

% soprano {{{4

voiceChoirSeptetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceChoirSeptetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceChoirSeptetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% counter {{{4

voiceChoirSeptetCounter = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceChoirSeptetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{4

voiceChoirSeptetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceChoirSeptetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% woods {{{2

% wood quartet {{{3

% soprano {{{4

voiceWoodQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceWoodQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceWoodQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceWoodQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% wood quintet {{{3

% soprano {{{4

voiceWoodQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceWoodQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceWoodQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceWoodQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceWoodQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% wood sextet {{{3

% soprano {{{4

voiceWoodSextetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceWoodSextetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceWoodSextetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceWoodSextetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{4

voiceWoodSextetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceWoodSextetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% flutes {{{3

% one {{{4

voiceFluteOne = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceFluteTwo = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% oboes {{{3

% one {{{4

voiceOboeOne = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceOboeTwo = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% english horns {{{3

% one {{{4

voiceEnglishHornOne = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceEnglishHornTwo = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% clarinets {{{3

% one {{{4

voiceClarinetOne = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceClarinetTwo = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bassoons {{{3

% one {{{4

voiceBassoonOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceBassoonTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% saxophones quartet {{{3

% soprano {{{4

voiceSaxophoneQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceSaxophoneQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceSaxophoneQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceSaxophoneQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% brass {{{2

% brass quartet {{{3

% soprano {{{4

voiceBrassQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceBrassQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceBrassQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceBrassQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% brass quintet {{{3

% soprano {{{4

voiceBrassQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceBrassQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceBrassQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceBrassQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceBrassQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% wind keyboards {{{2

% manual organ {{{3

% right {{{4

voiceManualOrganRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceManualOrganLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% pedal organ {{{3

% right {{{4

voicePedalOrganRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voicePedalOrganLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% feet {{{4

voicePedalOrganFeet = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% accordion {{{3

% right {{{4

voiceAccordionRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceAccordionLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bowed strings {{{2

% string quartet {{{3

% soprano {{{4

voiceStringQuartetSoprano = \relative c'' {
  \keytime
  \tempo 2. = 50
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quartet, symmetric {{{3

% soprano {{{4

voiceStringQuartetSymmetricSoprano = \relative c'' {
  \keytime
  \tempo 2. = 50
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringQuartetSymmetricAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringQuartetSymmetricTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringQuartetSymmetricBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quartet with contrabass {{{3

% soprano {{{4

voiceStringQuartetContrabassSoprano = \relative c'' {
  \keytime
  \tempo 2. = 50
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringQuartetContrabassAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringQuartetContrabassTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringQuartetContrabassBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quintet {{{3

% soprano {{{4

voiceStringQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceStringQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quintet, symmetric {{{3

% soprano {{{4

voiceStringQuintetSymmetricSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceStringQuintetSymmetricMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringQuintetSymmetricAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringQuintetSymmetricTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringQuintetSymmetricBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quintet with contrabass {{{3

% soprano {{{4

voiceStringQuintetContrabassSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceStringQuintetContrabassMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringQuintetContrabassAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringQuintetContrabassTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringQuintetContrabassBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string sextet {{{3

% soprano {{{4

voiceStringSextetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceStringSextetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringSextetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringSextetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{4

voiceStringSextetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringSextetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string septet {{{3

% soprano {{{4

voiceStringSeptetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceStringSeptetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceStringSeptetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% counter {{{4

voiceStringSeptetCounter = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceStringSeptetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{4

voiceStringSeptetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceStringSeptetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string keyboards {{{2

% viola organista {{{3

% right {{{4

voiceViolaOrganistaRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceViolaOrganistaLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% harpsichord {{{3

% right {{{4

voiceHarpsichordRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceHarpsichordLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% pedal harpsichord {{{3

% right {{{4

voicePedalHarpsichordRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voicePedalHarpsichordLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% feet {{{4

voicePedalHarpsichordFeet = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% piano {{{3

% right {{{4

voicePianoRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voicePianoLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% plucked strings {{{2

% harp {{{3

% upper {{{4

voiceHarpUpper = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% lower {{{4

voiceHarpLower = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% lutes {{{3

% upper {{{4

voiceLuteUpper = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% lower {{{4

voiceLuteLower = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% guitars {{{3

% upper {{{4

voiceGuitarUpper = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% lower {{{4

voiceGuitarLower = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% drums {{{2

% vibraphone {{{3

voiceVibraphone = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% drumkit {{{3

voiceDrumkit = {
  \keytime
  \anacrusisDrumkit % 0
}

% staves {{{1

% choir {{{2

% choir quartet {{{3

% soprano & alto {{{4

staffChoirQuartetSopranoAlto = \new Staff = "choirQuartetSopranoAlto"
\with {
  instrumentName = \markup { \column { soprano alto } }
  shortInstrumentName = \markup { \column { S A } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "choirQuartetSoprano" {
    \voiceOne \voiceChoirQuartetSoprano
  }
  \new Voice = "choirQuartetAlto" {
    \voiceTwo \voiceChoirQuartetAlto
  }
>>

% tenor & bass {{{4

staffChoirQuartetTenorBass = \new Staff = "choirQuartetTenorBass"
\with {
  instrumentName = \markup { \column { tenor bass } }
  shortInstrumentName = \markup { \column { T B } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "choirQuartetTenor" {
    \voiceOne \voiceChoirQuartetTenor
  }
  \new Voice = "choirQuartetBass" {
    \voiceTwo \voiceChoirQuartetBass
  }
>>

% choir quintet {{{3

% soprano & mezzo {{{4

staffChoirQuintetSopranoMezzo = \new Staff = "choirQuintetSopranoMezzo"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { S M } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "choirQuintetSoprano" {
    \voiceOne \voiceChoirQuintetSoprano
  }
  \new Voice = "choirQuintetMezzo" {
    \voiceTwo \voiceChoirQuintetMezzo
  }
>>

% alto {{{4

staffChoirQuintetAlto = \new Staff = "choirQuintetAlto"
\with {
  instrumentName = "alto"
  shortInstrumentName = "A"
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef alto
  \new Voice = "choirQuintetAlto" \voiceChoirQuintetAlto
}

% tenor & bass {{{4

staffChoirQuintetTenorBass = \new Staff = "choirQuintetTenorBass"
\with {
  instrumentName = \markup { \column { tenor bass } }
  shortInstrumentName = \markup { \column { T B } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "choirQuintetTenor" {
    \voiceOne \voiceChoirQuintetTenor
  }
  \new Voice = "choirQuintetBass" {
    \voiceTwo \voiceChoirQuintetBass
  }
>>

% choir sextet {{{3

% soprano & mezzo {{{4

staffChoirSextetSopranoMezzo = \new Staff = "choirSextetSopranoMezzo"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { S M } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "choirSextetSoprano" {
    \voiceOne \voiceChoirSextetSoprano
  }
  \new Voice = "choirSextetMezzo" {
    \voiceTwo \voiceChoirSextetMezzo
  }
>>

% alto & tenor {{{4

staffChoirSextetAltoTenor = \new Staff = "choirSextetAltoTenor"
\with {
  instrumentName = \markup { \column { alto tenor } }
  shortInstrumentName = \markup { \column { A T } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "choirSextetAlto" {
    \voiceOne \voiceChoirSextetAlto
  }
  \new Voice = "choirSextetTenor" {
    \voiceTwo \voiceChoirSextetTenor
  }
>>

% barytone & bass {{{4

staffChoirSextetBarytoneBass = \new Staff = "choirSextetBarytoneBass"
\with {
  instrumentName = \markup { \column { barytone bass } }
  shortInstrumentName = \markup { \column { Y B } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "choirSextetBarytone" {
    \voiceOne \voiceChoirSextetBarytone
  }
  \new Voice = "choirSextetBass" {
    \voiceTwo \voiceChoirSextetBass
  }
>>

% choir septet {{{3

% soprano & mezzo {{{4

staffChoirSeptetSopranoMezzo = \new Staff = "choirSeptetSopranoMezzo"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { S M } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "choirSeptetSoprano" {
    \voiceOne \voiceChoirSeptetSoprano
  }
  \new Voice = "choirSeptetMezzo" {
    \voiceTwo \voiceChoirSeptetMezzo
  }
>>

% alto & counter {{{4

staffChoirSeptetAltoCounter = \new Staff = "choirSeptetAltoCounter"
\with {
  instrumentName = \markup { \column { alto counter } }
  shortInstrumentName = \markup { \column { A C } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "choirSeptetAlto" {
    \voiceOne \voiceChoirSeptetAlto
  }
  \new Voice = "choirSeptetCounter" {
    \voiceTwo \voiceChoirSeptetCounter
  }
>>

% tenor & barytone {{{4

staffChoirSeptetTenorBarytone = \new Staff = "choirSeptetTenorBarytone"
\with {
  instrumentName = \markup { \column { tenor barytone } }
  shortInstrumentName = \markup { \column { T Y } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "choirSeptetTenor" {
    \voiceOne \voiceChoirSeptetTenor
  }
  \new Voice = "choirSeptetBarytone" {
    \voiceTwo \voiceChoirSeptetBarytone
  }
>>

% bass {{{4

staffChoirSeptetBass = \new Staff = "choirSeptetBass"
\with {
  instrumentName = "bass"
  shortInstrumentName = "B"
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \new Voice = "choirSeptetBass" \voiceChoirSeptetBass
}

% woods {{{2

% wood quartet {{{3

% upper {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodQuartetSoprano
  }
  \new Voice = "woodQuartetAlto"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodQuartetAlto
  }
>>

% lower {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodQuartetTenor
  }
  \new Voice = "woodQuartetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodQuartetBass
  }
>>

% wood quintet {{{3

% upper {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodQuintetSoprano
  }
  \new Voice = "woodQuintetMezzo"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodQuintetMezzo
  }
>>

% middle {{{4

staffWoodQuintetMiddle = \new Staff = "woodQuintetMiddle"
\with {
  instrumentName = \markup { \column { english horn } }
  shortInstrumentName = \markup { \column { cl bn } }
  midiInstrument = "english horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
}
{
  \clef alto
  \voiceWoodQuintetAlto
}

% lower {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodQuintetTenor
  }
  \new Voice = "woodQuintetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodQuintetBass
  }
>>

% wood sextet {{{3

% upper {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodSextetSoprano
  }
  \new Voice = "woodSextetMezzo"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodSextetMezzo
  }
>>

% middle {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodSextetAlto
  }
  \new Voice ="woodSextetTenor"
  \with {
    midiInstrument = "english horn"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodSextetTenor
  }
>>

% lower {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodSextetBarytone
  }
  \new Voice = "woodSextetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodSextetBass
  }
>>

% flutes {{{3

staffFlutes = \new Staff
\with {
  instrumentName = "flutes"
  shortInstrumentName = "fls"
  midiInstrument = "flute"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef french
  %\clef treble
  \new Voice = "fluteOne" {
    \voiceOne \voiceFluteOne
  }
  \new Voice = "fluteTwo" {
    \voiceTwo \voiceFluteTwo
  }
>>

% oboes {{{3

staffOboes = \new Staff
\with {
  instrumentName = "oboes"
  shortInstrumentName = "obs"
  midiInstrument = "oboe"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef soprano
  \new Voice = "oboeOne" {
    \voiceOne \voiceOboeOne
  }
  \new Voice = "oboeTwo" {
    \voiceTwo \voiceOboeTwo
  }
>>

% english horns {{{3

staffEnglishHorns = \new Staff
\with {
  instrumentName = \markup { \column { english horns } }
  shortInstrumentName = "ehs"
  midiInstrument = "english horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "englishHornOne" {
    \voiceOne \voiceEnglishHornOne
  }
  \new Voice = "englishHornTwo" {
    \voiceTwo \voiceEnglishHornTwo
  }
>>

% clarinets {{{3

staffClarinets = \new Staff
\with {
  instrumentName = "clarinets"
  shortInstrumentName = "cls"
  midiInstrument = "clarinet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "clarinetOne" {
    \voiceOne \voiceClarinetOne
  }
  \new Voice = "clarinetTwo" {
    \voiceTwo \voiceClarinetTwo
  }
>>

% bassoons {{{3

staffBassoons = \new Staff
\with {
  instrumentName = "bassoons"
  shortInstrumentName = "bns"
  midiInstrument = "bassoon"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "bassoonOne" {
    \voiceOne \voiceBassoonOne
  }
  \new Voice = "bassoonTwo" {
    \voiceTwo \voiceBassoonTwo
  }
>>

% saxophone quartet {{{3

% upper {{{4

staffSaxophoneQuartetUpper = \new Staff = "saxophoneUpper"
\with {
  midiInstrument = "soprano sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  % \clef french
  \clef treble
  \new Voice = "saxophoneQuartetSoprano" {
    \voiceOne \voiceSaxophoneQuartetSoprano
  }
  \new Voice = "saxophoneQuartetAlto" {
    \voiceTwo \voiceSaxophoneQuartetAlto
  }
>>

% lower {{{4

staffSaxophoneQuartetLower = \new Staff = "saxophoneLower"
\with {
  midiInstrument = "soprano sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  % \clef varbaritone
  \clef bass
  \new Voice = "saxophoneQuartetTenor" {
    \voiceOne \voiceSaxophoneQuartetTenor
  }
  \new Voice = "saxophoneQuartetBass" {
    \voiceTwo \voiceSaxophoneQuartetBass
  }
>>

% brass {{{2

% brass quartet {{{3

% upper {{{4

staffBrassQuartetUpper = \new Staff = "brassQuartetUpper"
\with {
  instrumentName = "trumpets"
  shortInstrumentName = "tpt"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "brassQuartetSoprano" {
    \voiceOne \voiceBrassQuartetSoprano
  }
  \new Voice = "brassQuartetAlto" {
    \voiceTwo \voiceBrassQuartetAlto
  }
>>

% lower {{{4

staffBrassQuartetLower = \new Staff = "brassQuartetLower"
\with {
  instrumentName = "fr-horns"
  shortInstrumentName = "hns"
  midiInstrument = "french horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "brassQuartetTenor" {
    \voiceOne \voiceBrassQuartetTenor
  }
  \new Voice = "brassQuartetBass" {
    \voiceTwo \voiceBrassQuartetBass
  }
>>

% brass quintet {{{3

% upper {{{4

staffBrassQuintetUpper = \new Staff = "brassQuintetUpper"
\with {
  instrumentName = "trumpets"
  shortInstrumentName = "tpt"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "brassQuintetSoprano" {
    \voiceOne \voiceBrassQuintetSoprano
  }
  \new Voice = "brassQuintetMezzo" {
    \voiceTwo \voiceBrassQuintetMezzo
  }
>>

% middle {{{4

staffBrassQuintetMiddle = \new Staff = "brassQuintetMiddle"
\with {
  instrumentName = \markup { \column { french horn } }
  shortInstrumentName = "hn"
  midiInstrument = "french horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
}
{
  \clef alto
  \voiceBrassQuintetAlto
}


% lower {{{4

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
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceBrassQuintetTenor
  }
  \new Voice = "brassQuintetBass"
  \with {
    midiInstrument = "tuba"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceBrassQuintetBass
  }
>>

% wind keyboards {{{2

% manual organ {{{3

% right {{{4

staffManualOrganRight = \new Staff = "manualOrganRight"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\clef soprano
  %\showStaffSwitch
  \voiceManualOrganRight
}

% left {{{4

staffManualOrganLeft = \new Staff = "manualOrganLeft"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  %\showStaffSwitch
  \voiceManualOrganLeft
}

% pedal organ {{{3

% right {{{4

staffPedalOrganRight = \new Staff = "pedalOrganRight"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voicePedalOrganRight
}

% left {{{4

staffPedalOrganLeft = \new Staff = "pedalOrganLeft"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  %\clef bass
  \clef alto
  \voicePedalOrganLeft
}

% feet {{{4

staffPedalOrganFeet = \new Staff = "pedalOrganFeet"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voicePedalOrganFeet
}

% accordion {{{3

% right {{{4

staffAccordionRight = \new Staff = "accordionRight"
\with {
  midiInstrument = "accordion"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voiceAccordionRight
}

% left {{{4

staffAccordionLeft = \new Staff = "accordionLeft"
\with {
  midiInstrument = "accordion"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\showStaffSwitch
  \voiceAccordionLeft
}

% bowed strings {{{2

% string quartet {{{3

% upper {{{4

staffStringQuartetUpper = \new Staff = "stringQuartetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "stringQuartetSoprano" {
    \voiceOne \voiceStringQuartetSoprano
  }
  \new Voice = "stringQuartetAlto" {
    \voiceTwo \voiceStringQuartetAlto
  }
>>

% lower {{{4

staffStringQuartetLower = \new Staff = "stringQuartetLower"
\with {
  instrumentName = \markup { \column { viola cello } }
  shortInstrumentName = \markup { \column { va vc } }
} <<
  \clef bass
  \new Voice = "stringQuartetTenor"
  \with {
    midiInstrument = "viola"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuartetTenor
  }
  \new Voice = "stringQuartetBass"
  \with {
    midiInstrument = "cello"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceStringQuartetBass
  }
>>

% string quartet, symmetric {{{3

% upper {{{4

staffStringQuartetSymmetricUpper = \new Staff = "stringQuartetSymmetricUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  %\override Staff.StaffSymbol.line-count = #7
  \new Voice = "stringQuartetSymmetricSoprano" {
    \voiceOne \voiceStringQuartetSymmetricSoprano
  }
  \new Voice = "stringQuartetSymmetricAlto" {
    \voiceTwo \voiceStringQuartetSymmetricAlto
  }
>>

% lower {{{4

staffStringQuartetSymmetricLower = \new Staff = "stringQuartetSymmetricLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "stringQuartetSymmetricTenor" {
    \voiceOne \voiceStringQuartetSymmetricTenor
  }
  \new Voice = "stringQuartetSymmetricBass" {
    \voiceTwo \voiceStringQuartetSymmetricBass
  }
>>

% string quartet with contrabass {{{3

% upper {{{4

staffStringQuartetContrabassUpper = \new Staff = "stringQuartetContrabassUpper"
\with {
  instrumentName = \markup { \column { violin viola } }
  shortInstrumentName = \markup { \column { vn va } }
} <<
  \clef treble
  \new Voice = "stringQuartetContrabassSoprano"
  \with {
    midiInstrument = "violin"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuartetContrabassSoprano
  }
  \new Voice = "stringQuartetContrabassAlto"
  \with {
    midiInstrument = "viola"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceStringQuartetContrabassAlto
  }
>>

% lower {{{4

staffStringQuartetContrabassLower = \new Staff = "stringQuartetContrabassLower"
\with {
  instrumentName = \markup { \column { cello contrabass } }
  shortInstrumentName = \markup { \column { vc cb } }
} <<
  \clef bass
  \new Voice = "stringQuartetContrabassTenor"
  \with {
    midiInstrument = "cello"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuartetContrabassTenor
  }
  \new Voice = "stringQuartetContrabassBass"
  \with {
    midiInstrument = "contrabass"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceStringQuartetContrabassBass
  }
>>

% string quintet {{{3

% upper {{{4

staffStringQuintetUpper = \new Staff = "stringQuintetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "stringQuintetSoprano" {
    \voiceOne \voiceStringQuintetSoprano
  }
  \new Voice = "stringQuintetMezzo" {
    \voiceTwo \voiceStringQuintetMezzo
  }
>>

% middle {{{4

staffStringQuintetMiddle = \new Staff = "stringQuintetMiddle"
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "stringQuintetAlto" {
    \voiceOne \voiceStringQuintetAlto
  }
  \new Voice = "stringQuintetTenor" {
    \voiceTwo \voiceStringQuintetTenor
  }
>>

% lower {{{4

staffStringQuintetLower = \new Staff = "stringQuintetLower"
\with {
  instrumentName = "cello"
  shortInstrumentName = "vc"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceStringQuintetBass
}

% string quintet, symmetric {{{3

% upper {{{4

staffStringQuintetSymmetricUpper = \new Staff = "stringQuintetSymmetricUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "stringQuintetSymmetricSoprano" {
    \voiceOne \voiceStringQuintetSymmetricSoprano
  }
  \new Voice = "stringQuintetSymmetricMezzo" {
    \voiceTwo \voiceStringQuintetSymmetricMezzo
  }
>>

% middle {{{4

staffStringQuintetSymmetricMiddle = \new Staff = "stringQuintetSymmetricMiddle"
\with {
  instrumentName = "viola"
  shortInstrumentName = "va"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef alto
  \voiceStringQuintetSymmetricAlto
}

% lower {{{4

staffStringQuintetSymmetricLower = \new Staff = "stringQuintetSymmetricLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "stringQuintetSymmetricTenor" {
    \voiceOne \voiceStringQuintetSymmetricTenor
  }
  \new Voice = "stringQuintetSymmetricBass" {
    \voiceTwo \voiceStringQuintetSymmetricBass
  }
>>

% string quintet with contrabass {{{3

% upper {{{4

staffStringQuintetContrabassUpper = \new Staff = "stringQuintetContrabassUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "stringQuintetContrabassSoprano" {
    \voiceOne \voiceStringQuintetContrabassSoprano
  }
  \new Voice = "stringQuintetContrabassMezzo" {
    \voiceTwo \voiceStringQuintetContrabassMezzo
  }
>>

% middle {{{4

staffStringQuintetContrabassMiddle = \new Staff = "stringQuintetContrabassMiddle"
\with {
  instrumentName = \markup { \column { viola cello } }
  shortInstrumentName = \markup { \column { va vc } }
} <<
  \clef alto
  \new Voice = "stringQuintetContrabassAlto"
  \with {
    midiInstrument = "viola"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuintetContrabassAlto
  }
  \new Voice = "stringQuintetContrabassTenor"
  \with {
    midiInstrument = "cello"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceStringQuintetContrabassTenor
  }
>>

% lower {{{4

staffStringQuintetContrabassLower = \new Staff
\with {
  instrumentName = \markup \column { contra- bass }
  shortInstrumentName = "cb"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceStringQuintetContrabassBass
}

% string sextet {{{3

% upper {{{4

staffStringSextetUpper = \new Staff = "stringSextetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "stringSextetSoprano" {
    \voiceOne \voiceStringSextetSoprano
  }
  \new Voice = "stringSextetMezzo" {
    \voiceTwo \voiceStringSextetMezzo
  }
>>

% middle {{{4

staffStringSextetMiddle = \new Staff = "stringSextetMiddle"
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "stringSextetAlto" {
    \voiceOne \voiceStringSextetAlto
  }
  \new Voice = "stringSextetTenor" {
    \voiceTwo \voiceStringSextetTenor
  }
>>

% lower {{{4

staffStringSextetLower = \new Staff = "stringSextetLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "stringSextetBarytone" {
    \voiceOne \voiceStringSextetBarytone
  }
  \new Voice = "stringSextetBass" {
    \voiceTwo \voiceStringSextetBass
  }
>>

% string septet {{{3

% violin {{{4

staffStringSeptetViolin = \new Staff
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "stringSeptetSoprano" {
    \voiceOne \voiceStringSeptetSoprano
  }
  \new Voice = "stringSeptetMezzo" {
    \voiceTwo \voiceStringSeptetMezzo
  }
>>

% viola {{{4

staffStringSeptetViola = \new Staff
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "stringSeptetAlto" {
    \voiceOne \voiceStringSeptetAlto
  }
  \new Voice = "stringSeptetCounter" {
    \voiceTwo \voiceStringSeptetCounter
  }
>>

% cello {{{4

staffStringSeptetCello = \new Staff
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "stringSeptetTenor" {
    \voiceOne \voiceStringSeptetTenor
  }
  \new Voice = "stringSeptetBarytone" {
    \voiceTwo \voiceStringSeptetBarytone
  }
>>

% contrabass {{{4

staffStringSeptetContrabass = \new Staff
\with {
  instrumentName = \markup \column { contra- bass }
  shortInstrumentName = "cb"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceStringSeptetBass
}

% string keyboards {{{2

% viola organista {{{3

% right {{{4

staffViolaOrganistaRight = \new Staff = "violaOrganistaRight"
\with {
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceViolaOrganistaRight
}

% left {{{4

staffViolaOrganistaLeft = \new Staff = "violaOrganistaLeft"
\with {
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceViolaOrganistaLeft
}

% harpsichord {{{3

% right {{{4

staffHarpsichordRight = \new Staff = "harpsichordRight"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voiceHarpsichordRight
}

% left {{{4

staffHarpsichordLeft = \new Staff = "harpsichordLeft"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\showStaffSwitch
  \voiceHarpsichordLeft
}

% pedal harpsichord {{{3

% right {{{4

staffPedalHarpsichordRight = \new Staff = "pedalHarpsichordRight"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voicePedalHarpsichordRight
}

% left {{{4

staffPedalHarpsichordLeft = \new Staff = "pedalHarpsichordLeft"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  %\clef bass
  \clef alto
  \voicePedalHarpsichordLeft
}

% feet {{{4

staffPedalHarpsichordFeet = \new Staff = "pedalHarpsichordFeet"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voicePedalHarpsichordFeet
}

% piano {{{3

% right {{{4

staffPianoRight = \new Staff = "pianoRight"
\with {
  midiInstrument = "acoustic grand"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\showStaffSwitch
  \voicePianoRight
}

% left {{{4

staffPianoLeft = \new Staff = "pianoLeft"
\with {
  midiInstrument = "acoustic grand"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\showStaffSwitch
  \voicePianoLeft
}

% plucked strings {{{2

% harp {{{3

% upper {{{4

staffHarpUpper = \new Staff = "harpUpper"
\with {
  midiInstrument = "orchestral harp"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\clef alto
  %\clef tenor
  \voiceHarpUpper
}

% lower {{{4

staffHarpLower = \new Staff = "harpLower"
\with {
  midiInstrument = "orchestral harp"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voiceHarpLower
}

% lutes {{{3

% upper {{{4

staffLuteUpper = \new Staff = "luteUpper"
\with {
  instrumentName = "lute"
  shortInstrumentName = "lt"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
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

% lower {{{4

staffLuteLower = \new Staff = "luteLower"
\with {
  instrumentName = "archlute"
  shortInstrumentName = "arlt"
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef subbass
  \voiceLuteLower
}

% lutes tablatures {{{3

% upper {{{4

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
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceLuteUpper
}

% lower {{{4

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
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceLuteLower
}

% guitars {{{3

% upper {{{4

staffGuitarUpper = \new Staff = "guitarUpper"
\with {
  instrumentName = "guitar"
  shortInstrumentName = "gtr"
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
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

% lower {{{4

staffGuitarLower = \new Staff = "guitarLower"
\with {
  instrumentName = \markup \column { bass guitar }
  shortInstrumentName = "bgtr"
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef subbass
  \voiceGuitarLower
}

% guitars tablatures {{{3

% upper {{{4

staffGuitarTabUpper = \new TabStaff = "guitarTabUpper"
\with {
  instrumentName = "guitar"
  shortInstrumentName = "gtr"
  % ---- guitar
  stringTunings = \stringTuning <e, a, d g b e'>
  % ---- midi
  midiInstrument = "acoustic guitar (nylon)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceGuitarUpper
}

% lower {{{4

staffGuitarTabLower = \new TabStaff = "guitarTabLower"
\with {
  instrumentName = \markup { \column { bass guitar } }
  shortInstrumentName = "bgtr"
  % ---- bass guitar
  stringTunings = \stringTuning <e,, a,, d, g,>
  % ---- midi
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceGuitarLower
}

% drums {{{2

% vibraphone {{{3

staffVibraphone = \new Staff
\with {
  instrumentName = \markup \column { vibra- phone }
  shortInstrumentName = "vb"
  midiInstrument = "vibraphone"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceVibraphone
}

% drumkit {{{3

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

% choir {{{2

% choir quartet {{{3

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

% choir quintet {{{3

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

% choir sextet {{{3

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

% choir septet {{{3

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

% woods {{{2

% wood quartet {{{3

groupWoodQuartet = \new StaffGroup <<
  \staffWoodQuartetUpper
  \staffWoodQuartetLower
>>

% wood quintet {{{3

groupWoodQuintet = \new StaffGroup <<
  \staffWoodQuintetUpper
  \staffWoodQuintetMiddle
  \staffWoodQuintetLower
>>

% wood sextet {{{3

groupWoodSextet = \new StaffGroup <<
  \staffWoodSextetUpper
  \staffWoodSextetMiddle
  \staffWoodSextetLower
>>

% saxophone quartet {{{3

groupSaxophoneQuartet = \new StaffGroup
\with {
  instrumentName = \markup \column { saxo- phones }
  shortInstrumentName = "sax"
} <<
  \staffSaxophoneQuartetUpper
  \staffSaxophoneQuartetLower
>>

% brass {{{2

% brass quartet {{{3

groupBrassQuartet = \new StaffGroup
<<
  \staffBrassQuartetUpper
  \staffBrassQuartetLower
>>

% brass quintet {{{3

groupBrassQuintet = \new StaffGroup
<<
  \staffBrassQuintetUpper
  \staffBrassQuintetMiddle
  \staffBrassQuintetLower
>>

% wind keyboards {{{2

% manual organ {{{3

groupManualOrgan = \new GrandStaff
\with {
  instrumentName = \markup { \column { manual organ } }
  shortInstrumentName = \markup { \column { man org } }
  connectArpeggios = ##t
} <<
  \staffManualOrganRight
  \staffManualOrganLeft
>>

% pedal organ {{{3

groupPedalOrgan = \new GrandStaff
\with {
  instrumentName = \markup { \column { pedal organ } }
  shortInstrumentName = \markup { \column { ped org } }
  connectArpeggios = ##t
} <<
  \staffPedalOrganRight
  \staffPedalOrganLeft
  \staffPedalOrganFeet
>>

% accordion {{{3

groupAccordion = \new GrandStaff
\with {
  instrumentName = "accordion"
  shortInstrumentName = "acc"
} <<
  \staffAccordionRight
  \staffAccordionLeft
>>

% bowed strings {{{2

% string quartet {{{3

groupStringQuartet = \new StaffGroup
<<
  \staffStringQuartetUpper
  \staffStringQuartetLower
>>

% string quartet, symmetric {{{3

groupStringQuartetSymmetric = \new StaffGroup
<<
  \staffStringQuartetSymmetricUpper
  \staffStringQuartetSymmetricLower
>>

% string quartet with contrabass {{{3

groupStringQuartetContrabass = \new StaffGroup
<<
  \staffStringQuartetContrabassUpper
  \staffStringQuartetContrabassLower
>>

% string quintet {{{3

groupStringQuintet = \new StaffGroup
<<
  \staffStringQuintetUpper
  \staffStringQuintetMiddle
  \staffStringQuintetLower
>>

% string quintet, symmetric {{{3

groupStringQuintetSymmetric = \new StaffGroup
<<
  \staffStringQuintetSymmetricUpper
  \staffStringQuintetSymmetricMiddle
  \staffStringQuintetSymmetricLower
>>

% string quintet with contrabass {{{3

groupStringQuintetContrabass = \new StaffGroup
<<
  \staffStringQuintetContrabassUpper
  \staffStringQuintetContrabassMiddle
  \staffStringQuintetContrabassLower
>>

% string sextet {{{3

groupStringSextet = \new StaffGroup
<<
  \staffStringSextetUpper
  \staffStringSextetMiddle
  \staffStringSextetLower
>>

% string septet {{{3

groupStringSeptet = \new StaffGroup
<<
  \staffStringSeptetViolin
  \staffStringSeptetViola
  \staffStringSeptetCello
  \staffStringSeptetContrabass
>>

% string keyboards {{{2

% viola organista {{{3

groupViolaOrganista = \new GrandStaff
\with {
  instrumentName = \markup \column { viola orga- nista }
  shortInstrumentName = \markup \column { vla org }
  connectArpeggios = ##t
} <<
  \staffViolaOrganistaRight
  \staffViolaOrganistaLeft
>>

% harpsichord {{{3

groupHarpsichord = \new GrandStaff
\with {
  instrumentName = \markup \column { harpsi- chord }
  shortInstrumentName = \markup \column { hp cd }
  connectArpeggios = ##t
} <<
  \staffHarpsichordRight
  \staffHarpsichordLeft
>>

% pedal harpsichord {{{3

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

% piano {{{3

groupPiano = \new GrandStaff
\with {
  instrumentName = "piano"
  shortInstrumentName = "pn"
  connectArpeggios = ##t
} <<
  \staffPianoRight
  \staffPianoLeft
>>

% plucked strings {{{2

% harp {{{3

groupHarp = \new GrandStaff
\with {
  instrumentName = "harp"
  shortInstrumentName = "hp"
  connectArpeggios = ##t
} <<
  \staffHarpUpper
  \staffHarpLower
>>

% lutes {{{3

groupLutes = \new StaffGroup
<<
  \staffLuteUpper
  \staffLuteLower
>>

% lute tablatures {{{3

groupLuteTabs = \new StaffGroup
<<
  \staffLuteTabUpper
  \staffLuteTabLower
>>

% guitars {{{3

groupGuitars = \new StaffGroup
<<
  \staffGuitarUpper
  \staffGuitarLower
>>

% guitar tablatures {{{3

groupGuitarTabs = \new StaffGroup
<<
  \staffGuitarTabUpper
  \staffGuitarTabLower
>>

% book {{{1

\book {
  % instruments list, before the score {{{2
  %\markup \column {
    %\vspace #1
    %\line { woods = flute, oboe, english horn, bassoon }
    %\line { saxophones = soprano, alto, tenor, baritone sax }
    %\vspace #1
  %}
  % score, with instruments as single & group staves {{{2
  % -- comment or uncomment instruments and groups as needed
  \score {
    <<
      % choir {{{3
      %\groupChoirQuartet
      %\groupChoirQuintet
      %\groupChoirSextet
      %\groupChoirSeptet
      % woods {{{3
      %\groupWoodQuartet
      %\groupWoodQuintet
      %\groupWoodSextet
      %\staffFlutes
      %\staffOboes
      %\staffEnglishHorns
      %\staffClarinets
      %\staffBassoons
      %\groupSaxophoneQuartet
      % brass {{{3
      %\groupBrassQuartet
      %\groupBrassQuintet
      % wind keyboards {{{3
      %\groupManualOrgan
      %\groupPedalOrgan
      %\groupAccordion
      % bowed strings {{{3
      %\groupStringQuartet
      %\groupStringQuartetSymmetric
      %\groupStringQuartetContrabass
      %\groupStringQuintet
      %\groupStringQuintetSymmetric
      %\groupStringQuintetContrabass
      %\groupStringSextet
      \groupStringSeptet
      % string keyboards {{{3
      %\groupHarpsichord
      \groupPedalHarpsichord
      \groupPiano
      % plucked strings {{{3
      \groupHarp
      %\groupLutes
      %\groupLuteTabs
      %\groupGuitars
      \groupGuitarTabs
      % drums {{{3
      %\staffVibraphone
      %\staffDrumkit
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
