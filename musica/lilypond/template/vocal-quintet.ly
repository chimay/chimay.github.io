% vim: set expandtab shiftwidth=2 softtabstop=2:

\version "2.24.3"

% included files {{{1

\include "global/global.glob.ly"
% ---- 3 beats bar, 2x4 hypermeasure
\include "melody/mel-3-2-4.mld.ly"

% header {{{1

\header {
  title = "vocal quintet"
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

% vocal soprano {{{2

lyricsVocalSoprano = \lyricmode {
  %\set vocalName = "S :"
  so -- pra -- no
}

% vocal mezzo {{{2

lyricsVocalMezzo = \lyricmode {
  %\set vocalName = "M :"
  mez -- zo
}

% vocal alto {{{2

lyricsVocalAlto = \lyricmode {
  %\set vocalName = "A :"
  al -- to
}

% vocal counter {{{2

lyricsVocalCounter = \lyricmode {
  %\set vocalName = "C :"
  coun -- ter
}

% vocal tenor {{{2

lyricsVocalTenor = \lyricmode {
  %\set vocalName = "T :"
  te -- nor
}

% vocal barytone {{{2

lyricsVocalBarytone = \lyricmode {
  %\set vocalName = "Y :"
  ba -- ry -- to -- ne
}

% vocal bass {{{2

lyricsVocalBass = \lyricmode {
  %\set vocalName = "B :"
  bass line
}

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

% vocal {{{2

% soprano {{{3

voiceVocalSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{3

voiceVocalMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{3

voiceVocalAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% counter {{{3

voiceVocalCounter = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{3

voiceVocalTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{3

voiceVocalBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{3

voiceVocalBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

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

% woodwinds {{{2

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

% soprano saxophones {{{3

% one {{{4

voiceSopranoSaxophoneOne = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceSopranoSaxophoneTwo = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto saxophones {{{3

% one {{{4

voiceAltoSaxophoneOne = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceAltoSaxophoneTwo = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor saxophones {{{3

% one {{{4

voiceTenorSaxophoneOne = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceTenorSaxophoneTwo = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone saxophones {{{3

% one {{{4

voiceBarytoneSaxophoneOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceBarytoneSaxophoneTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% woodwind quartet {{{3

% soprano {{{4

voiceWoodwindQuartetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceWoodwindQuartetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceWoodwindQuartetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceWoodwindQuartetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% woodwind quintet {{{3

% soprano {{{4

voiceWoodwindQuintetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceWoodwindQuintetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceWoodwindQuintetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceWoodwindQuintetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceWoodwindQuintetBass = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% woodwind sextet {{{3

% soprano {{{4

voiceWoodwindSextetSoprano = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% mezzo {{{4

voiceWoodwindSextetMezzo = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% alto {{{4

voiceWoodwindSextetAlto = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% tenor {{{4

voiceWoodwindSextetTenor = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% barytone {{{4

voiceWoodwindSextetBarytone = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass {{{4

voiceWoodwindSextetBass = \relative c, {
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

% trumpets {{{3

% one {{{4

voiceTrumpetOne = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceTrumpetTwo = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% french horns {{{3

% one {{{4

voiceFrenchHornOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceFrenchHornTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% trombones {{{3

% one {{{4

voiceTromboneOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceTromboneTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% tubas {{{3

% one {{{4

voiceTubaOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceTubaTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

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

% violins {{{3

% one {{{4

voiceViolinOne = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceViolinTwo = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% violas {{{3

% one {{{4

voiceViolaOne = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceViolaTwo = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% cellos {{{3

% one {{{4

voiceCelloOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceCelloTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% contrabasses {{{3

% one {{{4

voiceContrabassOne = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% two {{{4

voiceContrabassTwo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% string quartet {{{3

% soprano {{{4

voiceStringQuartetSoprano = \relative c'' {
  \keytime
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

% lute {{{3

voiceLute = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% archlute {{{3

voiceArchlute = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% theorbo {{{3

voiceTheorbo = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% guitar {{{3

voiceGuitar = \relative c' {
  \keytime
  \anacrusis % hypermeasure 0
}

% bass guitar {{{3

voiceBassGuitar = \relative c, {
  \keytime
  \anacrusis % hypermeasure 0
}

% hammered strings {{{2

% dulcimer {{{3

voiceDulcimer = \relative c' {
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

% clavichord {{{3

% right {{{4

voiceClavichordRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceClavichordLeft = \relative c {
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

% drums {{{2

% glockenspiel {{{3

voiceGlockenspiel = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% vibraphone {{{3

% right {{{4

voiceVibraphoneRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceVibraphoneLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% marimba {{{3

% right {{{4

voiceMarimbaRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceMarimbaLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% tubular bells {{{3

% manual {{{4

voiceTubularBellsManual = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% pedal {{{4

voiceTubularBellsPedal = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% drumkit {{{3

voiceDrumkit = {
  \keytime
  \anacrusisDrumkit % 0
}

% drums keyboards {{{2

% celesta {{{3

% right {{{4

voiceCelestaRight = \relative c'' {
  \keytime
  \anacrusis % hypermeasure 0
}

% left {{{4

voiceCelestaLeft = \relative c {
  \keytime
  \anacrusis % hypermeasure 0
}

% staves {{{1

% vocal {{{2

% soprano {{{3

staffVocalSoprano = \new Staff = "staffVocalSoprano"
\with {
  instrumentName = "soprano"
  shortInstrumentName = "sop"
  midiInstrument = "voice oohs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \new Voice = "voiceVocalSoprano" {
    \voiceVocalSoprano
  }
}

staffLyricsVocalSoprano = <<
  \staffVocalSoprano
  \new Lyrics \with { alignBelowContext = "staffVocalSoprano" }
  \lyricsto "voiceVocalSoprano" \lyricsVocalSoprano
>>

% mezzo {{{3

staffVocalMezzo = \new Staff = "staffVocalMezzo"
\with {
  instrumentName = "mezzo"
  shortInstrumentName = "mez"
  midiInstrument = "voice oohs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \new Voice = "voiceVocalMezzo" {
    \voiceVocalMezzo
  }
}

staffLyricsVocalMezzo = <<
  \staffVocalMezzo
  \new Lyrics \with { alignBelowContext = "staffVocalMezzo" }
  \lyricsto "voiceVocalMezzo" \lyricsVocalMezzo
>>

% alto {{{3

staffVocalAlto = \new Staff = "staffVocalAlto"
\with {
  instrumentName = "alto"
  shortInstrumentName = "alt"
  midiInstrument = "voice oohs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef alto
  \new Voice = "voiceVocalAlto" {
    \voiceVocalAlto
  }
}

staffLyricsVocalAlto = <<
  \staffVocalAlto
  \new Lyrics \with { alignBelowContext = "staffVocalAlto" }
  \lyricsto "voiceVocalAlto" \lyricsVocalAlto
>>

% counter {{{3

staffVocalCounter = \new Staff = "staffVocalCounter"
\with {
  instrumentName = "counter"
  shortInstrumentName = "cnt"
  midiInstrument = "voice oohs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef alto
  \new Voice = "voiceVocalCounter" {
    \voiceVocalCounter
  }
}

staffLyricsVocalCounter = <<
  \staffVocalCounter
  \new Lyrics \with { alignBelowContext = "staffVocalCounter" }
  \lyricsto "voiceVocalCounter" \lyricsVocalCounter
>>

% tenor {{{3

staffVocalTenor = \new Staff = "staffVocalTenor"
\with {
  instrumentName = "tenor"
  shortInstrumentName = "ten"
  midiInstrument = "voice oohs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \new Voice = "voiceVocalTenor" {
    \voiceVocalTenor
  }
}

staffLyricsVocalTenor = <<
  \staffVocalTenor
  \new Lyrics \with { alignBelowContext = "staffVocalTenor" }
  \lyricsto "voiceVocalTenor" \lyricsVocalTenor
>>

% barytone {{{3

staffVocalBarytone = \new Staff = "staffVocalBarytone"
\with {
  instrumentName = "barytone"
  shortInstrumentName = "bar"
  midiInstrument = "voice oohs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \new Voice = "voiceVocalBarytone" {
    \voiceVocalBarytone
  }
}

staffLyricsVocalBarytone = <<
  \staffVocalBarytone
  \new Lyrics \with { alignBelowContext = "staffVocalBarytone" }
  \lyricsto "voiceVocalBarytone" \lyricsVocalBarytone
>>

% bass {{{3

staffVocalBass = \new Staff = "staffVocalBass"
\with {
  instrumentName = "bass"
  shortInstrumentName = "bas"
  midiInstrument = "voice oohs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef subbass
  \new Voice = "voiceVocalBass" {
    \voiceVocalBass
  }
}

staffLyricsVocalBass = <<
  \staffVocalBass
  \new Lyrics \with { alignBelowContext = "staffVocalBass" }
  \lyricsto "voiceVocalBass" \lyricsVocalBass
>>

% choir quartet {{{3

% soprano & alto {{{4

staffChoirQuartetUpper = \new Staff = "staffChoirQuartetUpper"
\with {
  instrumentName = \markup { \column { soprano alto } }
  shortInstrumentName = \markup { \column { sop alt } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceChoirQuartetSoprano" {
    \voiceOne \voiceChoirQuartetSoprano
  }
  \new Voice = "voiceChoirQuartetAlto" {
    \voiceTwo \voiceChoirQuartetAlto
  }
>>

% tenor & bass {{{4

staffChoirQuartetLower = \new Staff = "staffChoirQuartetLower"
\with {
  instrumentName = \markup { \column { tenor bass } }
  shortInstrumentName = \markup { \column { ten bas } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "voiceChoirQuartetTenor" {
    \voiceOne \voiceChoirQuartetTenor
  }
  \new Voice = "voiceChoirQuartetBass" {
    \voiceTwo \voiceChoirQuartetBass
  }
>>

% choir quintet {{{3

% soprano & mezzo {{{4

staffChoirQuintetUpper = \new Staff = "staffChoirQuintetUpper"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { sop mez } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceChoirQuintetSoprano" {
    \voiceOne \voiceChoirQuintetSoprano
  }
  \new Voice = "voiceChoirQuintetMezzo" {
    \voiceTwo \voiceChoirQuintetMezzo
  }
>>

% alto {{{4

staffChoirQuintetMiddle = \new Staff = "staffChoirQuintetMiddle"
\with {
  instrumentName = "alto"
  shortInstrumentName = "alt"
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef alto
  \new Voice = "voiceChoirQuintetAlto" \voiceChoirQuintetAlto
}

% tenor & bass {{{4

staffChoirQuintetLower = \new Staff = "staffChoirQuintetLower"
\with {
  instrumentName = \markup { \column { tenor bass } }
  shortInstrumentName = \markup { \column { ten bas } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "voiceChoirQuintetTenor" {
    \voiceOne \voiceChoirQuintetTenor
  }
  \new Voice = "voiceChoirQuintetBass" {
    \voiceTwo \voiceChoirQuintetBass
  }
>>

% choir sextet {{{3

% soprano & mezzo {{{4

staffChoirSextetUpper = \new Staff = "staffChoirSextetUpper"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { sop mez } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceChoirSextetSoprano" {
    \voiceOne \voiceChoirSextetSoprano
  }
  \new Voice = "voiceChoirSextetMezzo" {
    \voiceTwo \voiceChoirSextetMezzo
  }
>>

% alto & tenor {{{4

staffChoirSextetMiddle = \new Staff = "staffChoirSextetMiddle"
\with {
  instrumentName = \markup { \column { alto tenor } }
  shortInstrumentName = \markup { \column { alt ten } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceChoirSextetAlto" {
    \voiceOne \voiceChoirSextetAlto
  }
  \new Voice = "voiceChoirSextetTenor" {
    \voiceTwo \voiceChoirSextetTenor
  }
>>

% barytone & bass {{{4

staffChoirSextetLower = \new Staff = "staffChoirSextetLower"
\with {
  instrumentName = \markup { \column { barytone bass } }
  shortInstrumentName = \markup { \column { bar bas } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "voiceChoirSextetBarytone" {
    \voiceOne \voiceChoirSextetBarytone
  }
  \new Voice = "voiceChoirSextetBass" {
    \voiceTwo \voiceChoirSextetBass
  }
>>

% choir septet {{{3

% soprano & mezzo {{{4

staffChoirSeptetSopranoMezzo = \new Staff = "staffChoirSeptetSopranoMezzo"
\with {
  instrumentName = \markup { \column { soprano mezzo } }
  shortInstrumentName = \markup { \column { sop mez } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceChoirSeptetSoprano" {
    \voiceOne \voiceChoirSeptetSoprano
  }
  \new Voice = "voiceChoirSeptetMezzo" {
    \voiceTwo \voiceChoirSeptetMezzo
  }
>>

% alto & counter {{{4

staffChoirSeptetAltoCounter = \new Staff = "staffChoirSeptetAltoCounter"
\with {
  instrumentName = \markup { \column { alto counter } }
  shortInstrumentName = \markup { \column { alt cnt } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceChoirSeptetAlto" {
    \voiceOne \voiceChoirSeptetAlto
  }
  \new Voice = "voiceChoirSeptetCounter" {
    \voiceTwo \voiceChoirSeptetCounter
  }
>>

% tenor & barytone {{{4

staffChoirSeptetTenorBarytone = \new Staff = "staffChoirSeptetTenorBarytone"
\with {
  instrumentName = \markup { \column { tenor barytone } }
  shortInstrumentName = \markup { \column { ten bar } }
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "voiceChoirSeptetTenor" {
    \voiceOne \voiceChoirSeptetTenor
  }
  \new Voice = "voiceChoirSeptetBarytone" {
    \voiceTwo \voiceChoirSeptetBarytone
  }
>>

% bass {{{4

staffChoirSeptetBass = \new Staff = "staffChoirSeptetBass"
\with {
  instrumentName = "bass"
  shortInstrumentName = "bas"
  midiInstrument = "choir aahs"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \new Voice = "voiceChoirSeptetBass" \voiceChoirSeptetBass
}

% woodwinds {{{2

% flutes {{{3

staffFlutes = \new Staff = "staffFlutes"
\with {
  instrumentName = "flutes"
  shortInstrumentName = "fls"
  midiInstrument = "flute"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef french
  \new Voice = "voiceFluteOne" {
    \voiceOne \voiceFluteOne
  }
  \new Voice = "voiceFluteTwo" {
    \voiceTwo \voiceFluteTwo
  }
>>

% oboes {{{3

staffOboes = \new Staff = "staffOboes"
\with {
  instrumentName = "oboes"
  shortInstrumentName = "obs"
  midiInstrument = "oboe"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceOboeOne" {
    \voiceOne \voiceOboeOne
  }
  \new Voice = "voiceOboeTwo" {
    \voiceTwo \voiceOboeTwo
  }
>>

% english horns {{{3

staffEnglishHorns = \new Staff = "staffHorns"
\with {
  instrumentName = \markup { \column { english horns } }
  shortInstrumentName = "enhns"
  midiInstrument = "english horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceEnglishHornOne" {
    \voiceOne \voiceEnglishHornOne
  }
  \new Voice = "voiceEnglishHornTwo" {
    \voiceTwo \voiceEnglishHornTwo
  }
>>

% clarinets {{{3

staffClarinets = \new Staff = "staffClarinets"
\with {
  instrumentName = "clarinets"
  shortInstrumentName = "cls"
  midiInstrument = "clarinet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceClarinetOne" {
    \voiceOne \voiceClarinetOne
  }
  \new Voice = "voiceClarinetTwo" {
    \voiceTwo \voiceClarinetTwo
  }
>>

% bassoons {{{3

staffBassoons = \new Staff = "staffBassoons"
\with {
  instrumentName = "bassoons"
  shortInstrumentName = "bns"
  midiInstrument = "bassoon"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceBassoonOne" {
    \voiceOne \voiceBassoonOne
  }
  \new Voice = "voiceBassoonTwo" {
    \voiceTwo \voiceBassoonTwo
  }
>>

% soprano saxophones {{{3

staffSopranoSaxophones = \new Staff = "staffSopranoSaxophones"
\with {
  instrumentName = \markup { \column { soprano sax } }
  shortInstrumentName = \markup { \column { sop sax } }
  midiInstrument = "soprano sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceSopranoSaxophoneOne" {
    \voiceOne \voiceSopranoSaxophoneOne
  }
  \new Voice = "voiceSopranoSaxophoneTwo" {
    \voiceTwo \voiceSopranoSaxophoneTwo
  }
>>

% alto saxophones {{{3

staffAltoSaxophones = \new Staff = "staffAltoSaxophones"
\with {
  instrumentName = \markup { \column { alto sax } }
  shortInstrumentName = \markup { \column { alt sax } }
  midiInstrument = "alto sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceAltoSaxophoneOne" {
    \voiceOne \voiceAltoSaxophoneOne
  }
  \new Voice = "voiceAltoSaxophoneTwo" {
    \voiceTwo \voiceAltoSaxophoneTwo
  }
>>

% tenor saxophones {{{3

staffTenorSaxophones = \new Staff = "staffTenorSaxophones"
\with {
  instrumentName = \markup { \column { tenor sax } }
  shortInstrumentName = \markup { \column { ten sax } }
  midiInstrument = "tenor sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef tenor
  \new Voice = "voiceTenorSaxophoneOne" {
    \voiceOne \voiceTenorSaxophoneOne
  }
  \new Voice = "voiceTenorSaxophoneTwo" {
    \voiceTwo \voiceTenorSaxophoneTwo
  }
>>

% barytone saxophones {{{3

staffBarytoneSaxophones = \new Staff = "staffBarytoneSaxophones"
\with {
  instrumentName = \markup { \column { barytone sax } }
  shortInstrumentName = \markup { \column { bar sax } }
  midiInstrument = "baritone sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceBarytoneSaxophoneOne" {
    \voiceOne \voiceBarytoneSaxophoneOne
  }
  \new Voice = "voiceBarytoneSaxophoneTwo" {
    \voiceTwo \voiceBarytoneSaxophoneTwo
  }
>>

% woodwind quartet {{{3

% upper {{{4

staffWoodwindQuartetUpper = \new Staff = "staffWoodwindQuartetUpper"
\with {
  instrumentName = \markup { \column { flute oboe } }
  shortInstrumentName = \markup { \column { fl ob } }
} <<
  \clef treble
  \new Voice = "voiceWoodwindQuartetSoprano"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodwindQuartetSoprano
  }
  \new Voice = "voiceWoodwindQuartetAlto"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodwindQuartetAlto
  }
>>

% lower {{{4

staffWoodwindQuartetLower = \new Staff = "staffWoodwindQuartetLower"
\with {
  instrumentName = \markup { \column { clarinet bassoon } }
  shortInstrumentName = \markup { \column { cl bn } }
} <<
  \clef bass
  \new Voice = "voiceWoodwindQuartetTenor"
  \with {
    midiInstrument = "clarinet"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodwindQuartetTenor
  }
  \new Voice = "voiceWoodwindQuartetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodwindQuartetBass
  }
>>

% woodwind quintet {{{3

% upper {{{4

staffWoodwindQuintetUpper = \new Staff = "staffWoodwindQuintetUpper"
\with {
  instrumentName = \markup { \column { flute oboe } }
  shortInstrumentName = \markup { \column { fl ob } }
} <<
  \clef treble
  \new Voice = "voiceWoodwindQuintetSoprano"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodwindQuintetSoprano
  }
  \new Voice = "voiceWoodwindQuintetMezzo"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodwindQuintetMezzo
  }
>>

% middle {{{4

staffWoodwindQuintetMiddle = \new Staff = "staffWoodwindQuintetMiddle"
\with {
  instrumentName = \markup { \column { english horn } }
  shortInstrumentName = \markup { \column { cl bn } }
  midiInstrument = "english horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
}
{
  \clef alto
  \voiceWoodwindQuintetAlto
}

% lower {{{4

staffWoodwindQuintetLower = \new Staff = "staffWoodwindQuintetLower"
\with {
  instrumentName = \markup { \column { clarinet bassoon } }
  shortInstrumentName = \markup { \column { cl bn } }
} <<
  \clef bass
  \new Voice = "voiceWoodwindQuintetTenor"
  \with {
    midiInstrument = "clarinet"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodwindQuintetTenor
  }
  \new Voice = "voiceWoodwindQuintetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodwindQuintetBass
  }
>>

% woodwind sextet {{{3

% upper {{{4

staffWoodwindSextetUpper = \new Staff = "staffWoodwindSextetUpper"
\with {
  instrumentName = "flutes"
  shortInstrumentName = "fls"
} <<
  \clef treble
  \new Voice = "voiceWoodwindSextetSoprano"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodwindSextetSoprano
  }
  \new Voice = "voiceWoodwindSextetMezzo"
  \with {
    midiInstrument = "flute"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodwindSextetMezzo
  }
>>

% middle {{{4

staffWoodwindSextetMiddle = \new Staff = "staffWoodwindSextetMiddle"
\with {
  instrumentName = \markup { \column { oboe en-horn } }
  shortInstrumentName = \markup { \column { ob enhn } }
} <<
  \clef alto
  \new Voice = "voiceWoodwindSextetAlto"
  \with {
    midiInstrument = "oboe"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodwindSextetAlto
  }
  \new Voice ="woodwindsextetTenor"
  \with {
    midiInstrument = "english horn"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodwindSextetTenor
  }
>>

% lower {{{4

staffWoodwindSextetLower = \new Staff = "staffWoodwindSextetLower"
\with {
  instrumentName = \markup { \column { clarinet bassoon } }
  shortInstrumentName = \markup { \column { cl bn } }
} <<
  \clef bass
  \new Voice = "voiceWoodwindSextetBarytone"
  \with {
    midiInstrument = "clarinet"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceWoodwindSextetBarytone
  }
  \new Voice = "voiceWoodwindSextetBass"
  \with {
    midiInstrument = "bassoon"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceWoodwindSextetBass
  }
>>

% saxophone quartet {{{3

% upper {{{4

staffSaxophoneQuartetUpper = \new Staff = "staffSaxophoneUpper"
\with {
  midiInstrument = "soprano sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceSaxophoneQuartetSoprano" {
    \voiceOne \voiceSaxophoneQuartetSoprano
  }
  \new Voice = "voiceSaxophoneQuartetAlto" {
    \voiceTwo \voiceSaxophoneQuartetAlto
  }
>>

% lower {{{4

staffSaxophoneQuartetLower = \new Staff = "staffSaxophoneLower"
\with {
  midiInstrument = "tenor sax"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceSaxophoneQuartetTenor" {
    \voiceOne \voiceSaxophoneQuartetTenor
  }
  \new Voice = "voiceSaxophoneQuartetBass" {
    \voiceTwo \voiceSaxophoneQuartetBass
  }
>>

% brass {{{2

% trumpets {{{3

staffTrumpets = \new Staff = "staffTrumpets"
\with {
  instrumentName = "trumpets"
  shortInstrumentName = "tpts"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceTrumpetOne" {
    \voiceOne \voiceTrumpetOne
  }
  \new Voice = "voiceTrumpetTwo" {
    \voiceTwo \voiceTrumpetTwo
  }
>>

% french horns {{{3

staffFrenchHorns = \new Staff = "staffFrenchHorns"
\with {
  instrumentName = \markup \column { french horns }
  shortInstrumentName = "hns"
  midiInstrument = "french horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceFrenchHornOne" {
    \voiceOne \voiceFrenchHornOne
  }
  \new Voice = "voiceFrenchHornTwo" {
    \voiceTwo \voiceFrenchHornTwo
  }
>>

% trombones {{{3

staffTrombones = \new Staff = "staffTrombones"
\with {
  instrumentName = "trombones"
  shortInstrumentName = "tbns"
  midiInstrument = "trombone"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef varbaritone
  \new Voice = "voiceTromboneOne" {
    \voiceOne \voiceTromboneOne
  }
  \new Voice = "voiceTromboneTwo" {
    \voiceTwo \voiceTromboneTwo
  }
>>

% tubas {{{3

staffTubas = \new Staff = "staffTubas"
\with {
  instrumentName = "tubas"
  shortInstrumentName = "tbas"
  midiInstrument = "tuba"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef subbass
  \new Voice = "voiceTubaOne" {
    \voiceOne \voiceTubaOne
  }
  \new Voice = "voiceTubaTwo" {
    \voiceTwo \voiceTubaTwo
  }
>>

% brass quartet {{{3

% upper {{{4

staffBrassQuartetUpper = \new Staff = "staffBrassQuartetUpper"
\with {
  instrumentName = "trumpets"
  shortInstrumentName = "tpt"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceBrassQuartetSoprano" {
    \voiceOne \voiceBrassQuartetSoprano
  }
  \new Voice = "voiceBrassQuartetAlto" {
    \voiceTwo \voiceBrassQuartetAlto
  }
>>

% lower {{{4

staffBrassQuartetLower = \new Staff = "staffBrassQuartetLower"
\with {
  instrumentName = "fr-horns"
  shortInstrumentName = "hns"
  midiInstrument = "french horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceBrassQuartetTenor" {
    \voiceOne \voiceBrassQuartetTenor
  }
  \new Voice = "voiceBrassQuartetBass" {
    \voiceTwo \voiceBrassQuartetBass
  }
>>

% brass quintet {{{3

% upper {{{4

staffBrassQuintetUpper = \new Staff = "staffBrassQuintetUpper"
\with {
  instrumentName = "trumpets"
  shortInstrumentName = "tpt"
  midiInstrument = "trumpet"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceBrassQuintetSoprano" {
    \voiceOne \voiceBrassQuintetSoprano
  }
  \new Voice = "voiceBrassQuintetMezzo" {
    \voiceTwo \voiceBrassQuintetMezzo
  }
>>

% middle {{{4

staffBrassQuintetMiddle = \new Staff = "staffBrassQuintetMiddle"
\with {
  instrumentName = \markup { \column { french horn } }
  shortInstrumentName = "hn"
  midiInstrument = "french horn"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef alto
  \voiceBrassQuintetAlto
}


% lower {{{4

staffBrassQuintetLower = \new Staff = "staffBrassQuintetLower"
\with {
  instrumentName = \markup { \column { trombone tuba } }
  shortInstrumentName = \markup { \column { tbn tba } }
} <<
  \clef bass
  \new Voice ="brassQuintetTenor"
  \with {
    midiInstrument = "trombone"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceBrassQuintetTenor
  }
  \new Voice = "voiceBrassQuintetBass"
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

staffManualOrganRight = \new Staff = "staffManualOrganRight"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceManualOrganRight
}

% left {{{4

staffManualOrganLeft = \new Staff = "staffManualOrganLeft"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceManualOrganLeft
}

% pedal organ {{{3

% right {{{4

staffPedalOrganRight = \new Staff = "staffPedalOrganRight"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voicePedalOrganRight
}

% left {{{4

staffPedalOrganLeft = \new Staff = "staffPedalOrganLeft"
\with {
  midiInstrument = "reed organ"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef alto
  %\clef bass
  \voicePedalOrganLeft
}

% feet {{{4

staffPedalOrganFeet = \new Staff = "staffPedalOrganFeet"
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

staffAccordionRight = \new Staff = "staffAccordionRight"
\with {
  midiInstrument = "accordion"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceAccordionRight
}

% left {{{4

staffAccordionLeft = \new Staff = "staffAccordionLeft"
\with {
  midiInstrument = "accordion"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceAccordionLeft
}

% bowed strings {{{2

% violins {{{3

staffViolins = \new Staff = "staffViolins"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceViolinOne" {
    \voiceOne \voiceViolinOne
  }
  \new Voice = "voiceViolinTwo" {
    \voiceTwo \voiceViolinTwo
  }
>>

% violas {{{3

staffViolas = \new Staff = "staffViolas"
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceViolaOne" {
    \voiceOne \voiceViolaOne
  }
  \new Voice = "voiceViolaTwo" {
    \voiceTwo \voiceViolaTwo
  }
>>

% cellos {{{3

staffCellos = \new Staff = "staffCellos"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceCelloOne" {
    \voiceOne \voiceCelloOne
  }
  \new Voice = "voiceCelloTwo" {
    \voiceTwo \voiceCelloTwo
  }
>>

% contrabasses {{{3

staffContrabasses = \new Staff = "staffContrabasses"
\with {
  instrumentName = \markup \column { contra- basses }
  shortInstrumentName = "cbs"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef subbass
  \new Voice = "voiceContrabassOne" {
    \voiceOne \voiceContrabassOne
  }
  \new Voice = "voiceContrabassTwo" {
    \voiceTwo \voiceContrabassTwo
  }
>>

% string quartet {{{3

% upper {{{4

staffStringQuartetUpper = \new Staff = "staffStringQuartetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceStringQuartetSoprano" {
    \voiceOne \voiceStringQuartetSoprano
  }
  \new Voice = "voiceStringQuartetAlto" {
    \voiceTwo \voiceStringQuartetAlto
  }
>>

% lower {{{4

staffStringQuartetLower = \new Staff = "staffStringQuartetLower"
\with {
  instrumentName = \markup { \column { viola cello } }
  shortInstrumentName = \markup { \column { va vc } }
} <<
  \clef bass
  \new Voice = "voiceStringQuartetTenor"
  \with {
    midiInstrument = "viola"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuartetTenor
  }
  \new Voice = "voiceStringQuartetBass"
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

staffStringQuartetSymmetricUpper = \new Staff = "staffStringQuartetSymmetricUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceStringQuartetSymmetricSoprano" {
    \voiceOne \voiceStringQuartetSymmetricSoprano
  }
  \new Voice = "voiceStringQuartetSymmetricAlto" {
    \voiceTwo \voiceStringQuartetSymmetricAlto
  }
>>

% lower {{{4

staffStringQuartetSymmetricLower = \new Staff = "staffStringQuartetSymmetricLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceStringQuartetSymmetricTenor" {
    \voiceOne \voiceStringQuartetSymmetricTenor
  }
  \new Voice = "voiceStringQuartetSymmetricBass" {
    \voiceTwo \voiceStringQuartetSymmetricBass
  }
>>

% string quartet with contrabass {{{3

% upper {{{4

staffStringQuartetContrabassUpper = \new Staff = "staffStringQuartetContrabassUpper"
\with {
  instrumentName = \markup { \column { violin viola } }
  shortInstrumentName = \markup { \column { vn va } }
} <<
  \clef treble
  \new Voice = "voiceStringQuartetContrabassSoprano"
  \with {
    midiInstrument = "violin"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuartetContrabassSoprano
  }
  \new Voice = "voiceStringQuartetContrabassAlto"
  \with {
    midiInstrument = "viola"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceStringQuartetContrabassAlto
  }
>>

% lower {{{4

staffStringQuartetContrabassLower = \new Staff = "staffStringQuartetContrabassLower"
\with {
  instrumentName = \markup { \column { cello contrabass } }
  shortInstrumentName = \markup { \column { vc cb } }
} <<
  \clef bass
  \new Voice = "voiceStringQuartetContrabassTenor"
  \with {
    midiInstrument = "cello"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuartetContrabassTenor
  }
  \new Voice = "voiceStringQuartetContrabassBass"
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

staffStringQuintetUpper = \new Staff = "staffStringQuintetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceStringQuintetSoprano" {
    \voiceOne \voiceStringQuintetSoprano
  }
  \new Voice = "voiceStringQuintetMezzo" {
    \voiceTwo \voiceStringQuintetMezzo
  }
>>

% middle {{{4

staffStringQuintetMiddle = \new Staff = "staffStringQuintetMiddle"
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceStringQuintetAlto" {
    \voiceOne \voiceStringQuintetAlto
  }
  \new Voice = "voiceStringQuintetTenor" {
    \voiceTwo \voiceStringQuintetTenor
  }
>>

% lower {{{4

staffStringQuintetLower = \new Staff = "staffStringQuintetLower"
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

staffStringQuintetSymmetricUpper = \new Staff = "staffStringQuintetSymmetricUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceStringQuintetSymmetricSoprano" {
    \voiceOne \voiceStringQuintetSymmetricSoprano
  }
  \new Voice = "voiceStringQuintetSymmetricMezzo" {
    \voiceTwo \voiceStringQuintetSymmetricMezzo
  }
>>

% middle {{{4

staffStringQuintetSymmetricMiddle = \new Staff = "staffStringQuintetSymmetricMiddle"
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

staffStringQuintetSymmetricLower = \new Staff = "staffStringQuintetSymmetricLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceStringQuintetSymmetricTenor" {
    \voiceOne \voiceStringQuintetSymmetricTenor
  }
  \new Voice = "voiceStringQuintetSymmetricBass" {
    \voiceTwo \voiceStringQuintetSymmetricBass
  }
>>

% string quintet with contrabass {{{3

% upper {{{4

staffStringQuintetContrabassUpper = \new Staff = "staffStringQuintetContrabassUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceStringQuintetContrabassSoprano" {
    \voiceOne \voiceStringQuintetContrabassSoprano
  }
  \new Voice = "voiceStringQuintetContrabassMezzo" {
    \voiceTwo \voiceStringQuintetContrabassMezzo
  }
>>

% middle {{{4

staffStringQuintetContrabassMiddle = \new Staff = "staffStringQuintetContrabassMiddle"
\with {
  instrumentName = \markup { \column { viola cello } }
  shortInstrumentName = \markup { \column { va vc } }
} <<
  \clef alto
  \new Voice = "voiceStringQuintetContrabassAlto"
  \with {
    midiInstrument = "viola"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceOne \voiceStringQuintetContrabassAlto
  }
  \new Voice = "voiceStringQuintetContrabassTenor"
  \with {
    midiInstrument = "cello"
    midiMinimumVolume = #1.0
    midiMaximumVolume = #2.0
  } {
    \voiceTwo \voiceStringQuintetContrabassTenor
  }
>>

% lower {{{4

staffStringQuintetContrabassLower = \new Staff = "staffStringQuintetContrabassLower"
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

staffStringSextetUpper = \new Staff = "staffStringSextetUpper"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceStringSextetSoprano" {
    \voiceOne \voiceStringSextetSoprano
  }
  \new Voice = "voiceStringSextetMezzo" {
    \voiceTwo \voiceStringSextetMezzo
  }
>>

% middle {{{4

staffStringSextetMiddle = \new Staff = "staffStringSextetMiddle"
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceStringSextetAlto" {
    \voiceOne \voiceStringSextetAlto
  }
  \new Voice = "voiceStringSextetTenor" {
    \voiceTwo \voiceStringSextetTenor
  }
>>

% lower {{{4

staffStringSextetLower = \new Staff = "staffStringSextetLower"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceStringSextetBarytone" {
    \voiceOne \voiceStringSextetBarytone
  }
  \new Voice = "voiceStringSextetBass" {
    \voiceTwo \voiceStringSextetBass
  }
>>

% string septet {{{3

% violin {{{4

staffStringSeptetViolins = \new Staff = "staffStringSeptetViolins"
\with {
  instrumentName = "violins"
  shortInstrumentName = "vns"
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef treble
  \new Voice = "voiceStringSeptetSoprano" {
    \voiceOne \voiceStringSeptetSoprano
  }
  \new Voice = "voiceStringSeptetMezzo" {
    \voiceTwo \voiceStringSeptetMezzo
  }
>>

% viola {{{4

staffStringSeptetViolas = \new Staff = "staffStringSeptetViolas"
\with {
  instrumentName = "violas"
  shortInstrumentName = "vas"
  midiInstrument = "viola"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef alto
  \new Voice = "voiceStringSeptetAlto" {
    \voiceOne \voiceStringSeptetAlto
  }
  \new Voice = "voiceStringSeptetCounter" {
    \voiceTwo \voiceStringSeptetCounter
  }
>>

% cello {{{4

staffStringSeptetCellos = \new Staff = "staffStringSeptetCellos"
\with {
  instrumentName = "cellos"
  shortInstrumentName = "vcs"
  midiInstrument = "cello"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} <<
  \clef bass
  \new Voice = "voiceStringSeptetTenor" {
    \voiceOne \voiceStringSeptetTenor
  }
  \new Voice = "voiceStringSeptetBarytone" {
    \voiceTwo \voiceStringSeptetBarytone
  }
>>

% contrabass {{{4

staffStringSeptetContrabass = \new Staff = "staffStringSeptetContrabass"
\with {
  instrumentName = \markup \column { contra- bass }
  shortInstrumentName = "cb"
  midiInstrument = "contrabass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef subbass
  \voiceStringSeptetBass
}

% plucked strings {{{2

% harp {{{3

% upper {{{4

staffHarpUpper = \new Staff = "staffHarpUpper"
\with {
  midiInstrument = "orchestral harp"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  %\clef tenor
  \voiceHarpUpper
}

% lower {{{4

staffHarpLower = \new Staff = "staffHarpLower"
\with {
  midiInstrument = "orchestral harp"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voiceHarpLower
}

% lute {{{3

staffLute = \new Staff = "staffLute"
\with {
  instrumentName = "lute"
  shortInstrumentName = "lt"
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
  % 3rd line G clef
  %clefGlyph = #"clefs.G"
  %clefPosition = #0
  %clefTransposition = #0
  %middleCPosition = #-4
  %middleCClefPosition = #-4
} {
  %\override Staff.StaffSymbol.line-count = #7
  \clef alto
  \voiceLute
}

% lute, tablature {{{3

tablatureLute = \new TabStaff = "tablatureLute"
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
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceLute
}

% archlute {{{3

staffArchlute = \new Staff = "staffArchlute"
\with {
  instrumentName = "archlute"
  shortInstrumentName = "arlt"
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  %\override Staff.StaffSymbol.line-count = #7
  \clef tenor
  \voiceArchlute
}

% archlute, tablature {{{3

tablatureArchlute = \new TabStaff = "tablatureArchlute"
\with {
  instrumentName = "archlute"
  shortInstrumentName = "arlt"
  % ---- lute family
  tablatureFormat = #fret-letter-tablature-format
  fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l")
  % -- archlute, 14 courses
  stringTunings = \stringTuning <g, c f a d' g'>
  additionalBassStrings = \stringTuning <f,, g,, a,, b,, c, d, e, f,>
  % ---- midi
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceArchlute
}

% theorbo {{{3

staffTheorbo = \new Staff = "staffTheorbo"
\with {
  instrumentName = "theorbo"
  shortInstrumentName = "teo"
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  %\override Staff.StaffSymbol.line-count = #7
  \clef bass
  \voiceTheorbo
}

% theorbo, tablature {{{3

tablatureTheorbo = \new TabStaff = "tablatureTheorbo"
\with {
  instrumentName = "theorbo"
  shortInstrumentName = "teo"
  % ---- lute family
  tablatureFormat = #fret-letter-tablature-format
  fretLabels = #'("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l")
  % -- theorbo, 14 courses
  stringTunings = \stringTuning <a, d g b e a>
  additionalBassStrings = \stringTuning <g,, a,, b,, c, d, e, f, g,>
  % ---- midi
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceTheorbo
}

% guitar {{{3

staffGuitar = \new Staff = "staffGuitar"
\with {
  instrumentName = "guitar"
  shortInstrumentName = "gtr"
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
  % 3rd line G clef
  %clefGlyph = #"clefs.G"
  %clefPosition = #0
  %clefTransposition = #0
  %middleCPosition = #-4
  %middleCClefPosition = #-4
} {
  %\override Staff.StaffSymbol.line-count = #7
  \clef alto
  \voiceGuitar
}

% guitar, tablature {{{3

tablatureGuitar = \new TabStaff = "tablatureGuitar"
\with {
  instrumentName = "guitar"
  shortInstrumentName = "gtr"
  % ---- guitar
  stringTunings = \stringTuning <e, a, d g b e'>
  % ---- midi
  midiInstrument = "acoustic guitar (steel)"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} { \clef tab
    \tabFullNotation
    \tabChordRepeats
    \voiceGuitar
}

% bass guitar {{{3

staffBassGuitar = \new Staff = "staffGuitarLower"
\with {
  instrumentName = \markup \column { bass guitar }
  shortInstrumentName = "bgtr"
  midiInstrument = "acoustic bass"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  %\override Staff.StaffSymbol.line-count = #7
  \clef subbass
  \voiceBassGuitar
}

% bass guitar, tablature {{{3

tablatureBassGuitar = \new TabStaff = "tablatureBassGuitar"
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
    \voiceBassGuitar
}

% hammered strings {{{2

% dulcimer {{{3

staffDulcimer = \new Staff = "staffDulcimer"
\with {
  instrumentName = "dulcimer"
  shortInstrumentName = "dul"
  midiInstrument = "dulcimer"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceDulcimer
}

% string keyboards {{{2

% viola organista {{{3

% right {{{4

staffViolaOrganistaRight = \new Staff = "staffViolaOrganistaRight"
\with {
  midiInstrument = "violin"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceViolaOrganistaRight
}

% left {{{4

staffViolaOrganistaLeft = \new Staff = "staffViolaOrganistaLeft"
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

staffHarpsichordRight = \new Staff = "staffHarpsichordRight"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceHarpsichordRight
}

% left {{{4

staffHarpsichordLeft = \new Staff = "staffHarpsichordLeft"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceHarpsichordLeft
}

% pedal harpsichord {{{3

% right {{{4

staffPedalHarpsichordRight = \new Staff = "staffPedalHarpsichordRight"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voicePedalHarpsichordRight
}

% left {{{4

staffPedalHarpsichordLeft = \new Staff = "staffPedalHarpsichordLeft"
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

staffPedalHarpsichordFeet = \new Staff = "staffPedalHarpsichordFeet"
\with {
  midiInstrument = "harpsichord"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\clef subbass
  \voicePedalHarpsichordFeet
}

% clavichord {{{3

% right {{{4

staffClavichordRight = \new Staff = "staffClavichordRight"
\with {
  midiInstrument = "clav"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceClavichordRight
}

% left {{{4

staffClavichordLeft = \new Staff = "staffClavichordLeft"
\with {
  midiInstrument = "clav"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceClavichordLeft
}

% piano {{{3

% right {{{4

staffPianoRight = \new Staff = "staffPianoRight"
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

staffPianoLeft = \new Staff = "staffPianoLeft"
\with {
  midiInstrument = "acoustic grand"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  %\showStaffSwitch
  \voicePianoLeft
}

% drums {{{2

% glockenspiel {{{3

staffGlockenspiel = \new Staff = "staffGlockenspiel"
\with {
  midiInstrument = "glockenspiel"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceGlockenspiel
}

% vibraphone {{{3

% right {{{4

staffVibraphoneRight = \new Staff = "staffVibraphoneRight"
\with {
  midiInstrument = "vibraphone"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceVibraphoneRight
}

% left {{{4

staffVibraphoneLeft = \new Staff = "staffVibraphoneLeft"
\with {
  midiInstrument = "vibraphone"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceVibraphoneLeft
}

% marimba {{{3

% right {{{4

staffMarimbaRight = \new Staff = "staffMarimbaRight"
\with {
  midiInstrument = "marimba"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceMarimbaRight
}

% left {{{4

staffMarimbaLeft = \new Staff = "staffMarimbaLeft"
\with {
  midiInstrument = "marimba"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceMarimbaLeft
}

% tubular bells {{{3

% manual {{{4

staffTubularBellsManual = \new Staff = "staffTubularBellsManual"
\with {
  midiInstrument = "tubular bells"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceTubularBellsManual
}

% pedal {{{4

staffTubularBellsPedal = \new Staff = "staffTubularBellsPedal"
\with {
  midiInstrument = "tubular bells"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceTubularBellsPedal
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

% drums keyboards {{{2

% celesta {{{3

% right {{{4

staffCelestaRight = \new Staff = "staffCelestaRight"
\with {
  midiInstrument = "celesta"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef treble
  \voiceCelestaRight
}

% left {{{4

staffCelestaLeft = \new Staff = "staffCelestaLeft"
\with {
  midiInstrument = "celesta"
  midiMinimumVolume = #1.0
  midiMaximumVolume = #2.0
} {
  \clef bass
  \voiceCelestaLeft
}

% staff groups {{{1

% vocal {{{2

% choir quartet {{{3

groupChoirQuartet = \new ChoirStaff <<
  % -- staff 1 : soprano & alto
  \staffChoirQuartetUpper
  \new Lyrics \with { alignAboveContext = "staffChoirQuartetUpper" }
  \lyricsto "voiceChoirQuartetSoprano" \lyricsChoirQuartetSoprano
  \new Lyrics \with { alignBelowContext = "staffChoirQuartetUpper" }
  \lyricsto "voiceChoirQuartetAlto" \lyricsChoirQuartetAlto
  % -- staff 2 : tenor & bass
  \staffChoirQuartetLower
  \new Lyrics \with { alignAboveContext = "staffChoirQuartetLower" }
  \lyricsto "voiceChoirQuartetTenor" \lyricsChoirQuartetTenor
  \new Lyrics \with { alignBelowContext = "staffChoirQuartetLower" }
  \lyricsto "voiceChoirQuartetBass" \lyricsChoirQuartetBass
>>

% choir quintet {{{3

groupChoirQuintet = \new ChoirStaff <<
  % -- staff 1 : soprano & mezzo
  \staffChoirQuintetUpper
  \new Lyrics \with { alignAboveContext = "staffChoirQuintetUpper" }
  \lyricsto "voiceChoirQuintetSoprano" \lyricsChoirQuintetSoprano
  \new Lyrics \with { alignBelowContext = "staffChoirQuintetUpper" }
  \lyricsto "voiceChoirQuintetMezzo" \lyricsChoirQuintetMezzo
  % -- staff 2 : alto
  \staffChoirQuintetMiddle
  \new Lyrics \with { alignBelowContext = "staffChoirQuintetMiddle" }
  \lyricsto "voiceChoirQuintetAlto" \lyricsChoirQuintetAlto
  % -- staff 3 : tenor & bass
  \staffChoirQuintetLower
  \new Lyrics \with { alignAboveContext = "staffChoirQuintetLower" }
  \lyricsto "voiceChoirQuintetTenor" \lyricsChoirQuintetTenor
  \new Lyrics \with { alignBelowContext = "staffChoirQuintetLower" }
  \lyricsto "voiceChoirQuintetBass" \lyricsChoirQuintetBass
>>

% choir sextet {{{3

groupChoirSextet = \new ChoirStaff <<
  % -- staff 1 : soprano & mezzo
  \staffChoirSextetUpper
  \new Lyrics \with { alignAboveContext = "staffChoirSextetUpper" }
  \lyricsto "voiceChoirSextetSoprano" \lyricsChoirSextetSoprano
  \new Lyrics \with { alignBelowContext = "staffChoirSextetUpper" }
  \lyricsto "voiceChoirSextetMezzo" \lyricsChoirSextetMezzo
  % -- staff 2 : alto & tenor
  \staffChoirSextetMiddle
  \new Lyrics \with { alignAboveContext = "staffChoirSextetMiddle" }
  \lyricsto "voiceChoirSextetAlto" \lyricsChoirSextetAlto
  \new Lyrics \with { alignBelowContext = "staffChoirSextetMiddle" }
  \lyricsto "voiceChoirSextetTenor" \lyricsChoirSextetTenor
  % -- staff 3 : barytone & bass
  \staffChoirSextetLower
  \new Lyrics \with { alignAboveContext = "staffChoirSextetLower" }
  \lyricsto "voiceChoirSextetBarytone" \lyricsChoirSextetBarytone
  \new Lyrics \with { alignBelowContext = "staffChoirSextetLower" }
  \lyricsto "voiceChoirSextetBass" \lyricsChoirSextetBass
>>

% choir septet {{{3

groupChoirSeptet = \new ChoirStaff <<
  % -- staff 1 : soprano & mezzo
  \staffChoirSeptetSopranoMezzo
  \new Lyrics \with { alignAboveContext = "staffChoirSeptetSopranoMezzo" }
  \lyricsto "voiceChoirSeptetSoprano" \lyricsChoirSeptetSoprano
  \new Lyrics \with { alignBelowContext = "staffChoirSeptetSopranoMezzo" }
  \lyricsto "voiceChoirSeptetMezzo" \lyricsChoirSeptetMezzo
  % -- staff 2 : alto & counter
  \staffChoirSeptetAltoCounter
  \new Lyrics \with { alignAboveContext = "staffChoirSeptetAltoCounter" }
  \lyricsto "voiceChoirSeptetAlto" \lyricsChoirSeptetAlto
  \new Lyrics \with { alignBelowContext = "staffChoirSeptetAltoCounter" }
  \lyricsto "voiceChoirSeptetCounter" \lyricsChoirSeptetCounter
  % -- staff 3 : tenor & barytone
  \staffChoirSeptetTenorBarytone
  \new Lyrics \with { alignAboveContext = "staffChoirSeptetTenorBarytone" }
  \lyricsto "voiceChoirSeptetTenor" \lyricsChoirSeptetTenor
  \new Lyrics \with { alignBelowContext = "staffChoirSeptetTenorBarytone" }
  \lyricsto "voiceChoirSeptetBarytone" \lyricsChoirSeptetBarytone
  % -- staff 4 : bass
  \staffChoirSeptetBass
  \new Lyrics \with { alignBelowContext = "staffChoirSeptetBass" }
  \lyricsto "voiceChoirSeptetBass" \lyricsChoirSeptetBass
>>

% woodwinds {{{2

% woodwind quartet {{{3

groupWoodwindQuartet = \new StaffGroup <<
  \staffWoodwindQuartetUpper
  \staffWoodwindQuartetLower
>>

% woodwind quintet {{{3

groupWoodwindQuintet = \new StaffGroup <<
  \staffWoodwindQuintetUpper
  \staffWoodwindQuintetMiddle
  \staffWoodwindQuintetLower
>>

% woodwind sextet {{{3

groupWoodwindSextet = \new StaffGroup <<
  \staffWoodwindSextetUpper
  \staffWoodwindSextetMiddle
  \staffWoodwindSextetLower
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
  \staffStringSeptetViolins
  \staffStringSeptetViolas
  \staffStringSeptetCellos
  \staffStringSeptetContrabass
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

% hammered strings {{{2

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

% clavichord {{{3

groupClavichord = \new GrandStaff
\with {
  instrumentName = \markup \column { clavi- chord }
  shortInstrumentName = \markup \column { cl cd }
  connectArpeggios = ##t
} <<
  \staffClavichordRight
  \staffClavichordLeft
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

% drums {{{2

% vibraphone {{{3

groupVibraphone = \new GrandStaff
\with {
  instrumentName = "vibraphone"
  shortInstrumentName = "vb"
  connectArpeggios = ##t
} <<
  \staffVibraphoneRight
  \staffVibraphoneLeft
>>

% marimba {{{3

groupMarimba = \new GrandStaff
\with {
  instrumentName = "marimba"
  shortInstrumentName = "mar"
  connectArpeggios = ##t
} <<
  \staffMarimbaRight
  \staffMarimbaLeft
>>

% tubular bells {{{3

groupTubularBells = \new GrandStaff
\with {
  instrumentName = \markup \column { tubular bells }
  shortInstrumentName = \markup { \column { tub bel } }
  connectArpeggios = ##t
} <<
  \staffTubularBellsManual
  \staffTubularBellsPedal
>>

% drums keyboards {{{2

% celesta {{{3

groupCelesta = \new GrandStaff
\with {
  instrumentName = "celesta"
  shortInstrumentName = "cel"
  connectArpeggios = ##t
} <<
  \staffCelestaRight
  \staffCelestaLeft
>>

% book {{{1

\book {
  % text before the score {{{2
  %\markup \column {
    %\vspace #1
    %\line { woodwinds = flute, oboe, english horn, bassoon }
    %\line { saxophones = soprano, alto, tenor, baritone sax }
    %\vspace #1
  %}
  % score {{{2
  \score {
    % instruments as single & group staves {{{3
    % -- comment or uncomment instruments and groups as needed
    <<
      % vocal {{{4
      %\staffLyricsVocalSoprano
      %\staffLyricsVocalMezzo
      %\staffLyricsVocalAlto
      %\staffLyricsVocalCounter
      %\staffLyricsVocalTenor
      %\staffLyricsVocalBarytone
      %\staffLyricsVocalBass
      %\groupChoirQuartet
      \groupChoirQuintet
      %\groupChoirSextet
      %\groupChoirSeptet
      % woodwinds {{{4
      %\staffFlutes
      %\staffOboes
      %\staffEnglishHorns
      %\staffClarinets
      %\staffBassoons
      %\staffSopranoSaxophones
      %\staffAltoSaxophones
      %\staffTenorSaxophones
      %\staffBarytoneSaxophones
      %\groupWoodwindQuartet
      %\groupWoodwindQuintet
      %\groupWoodwindSextet
      %\groupSaxophoneQuartet
      % brass {{{4
      %\staffTrumpets
      %\staffFrenchHorns
      %\staffTrombones
      %\staffTubas
      %\groupBrassQuartet
      %\groupBrassQuintet
      % wind keyboards {{{4
      %\groupManualOrgan
      %\groupPedalOrgan
      %\groupAccordion
      % bowed strings {{{4
      %\staffViolins
      %\staffViolas
      %\staffCellos
      %\staffContrabasses
      %\groupStringQuartet
      %\groupStringQuartetSymmetric
      %\groupStringQuartetContrabass
      %\groupStringQuintet
      %\groupStringQuintetSymmetric
      %\groupStringQuintetContrabass
      %\groupStringSextet
      %\groupStringSeptet
      % plucked strings {{{4
      %\groupHarp
      %\staffLute
      %\tablatureLute
      %\staffArchlute
      %\tablatureArchlute
      %\staffTheorbo
      %\tablatureTheorbo
      %\staffGuitar
      %\tablatureGuitar
      %\staffBassGuitar
      %\tablatureBassGuitar
      % hammered strings {{{4
      %\staffDulcimer
      % string keyboards {{{4
      %\groupViolaOrganista
      %\groupHarpsichord
      %\groupPedalHarpsichord
      %\groupClavichord
      %\groupPiano
      % drums {{{4
      %\staffGlockenspiel
      %\groupVibraphone
      %\groupMarimba
      %\groupTubularBells
      %\staffDrumkit
      % drums keyboards {{{4
      %\groupCelesta
      % end of instruments and groups {{{4
    >>
    % layout, see beginning of file {{{3
    \layout { }
    % midi {{{3
    \midi {
      % polymeter {{{4
      \context {
        \Score
        %\enablePolymeter
      }
      % one midi channel per voice or staff {{{4
      % -- comment this if you don't need distinct instruments on the same staff
      % -- it will save midi channels (max 16 are available)
      % \context {
      %   \Staff
      %   \remove "Staff_performer"
      % }
      % \context {
      %   \Voice
      %   \consists "Staff_performer"
      % }
      % end score {{{3
    }
  }
  % paper {{{2
  \paper {
    system-separator-markup = \slashSeparator
  }
  % end book {{{2
}
