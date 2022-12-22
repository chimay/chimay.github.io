\version "2.22.2"

\header {
  title = "chambre"
}

\layout {
    \context { \Score
        skipBars = ##t
        }
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
}

voiceFluteOne = \relative c'' {
  \global
  % En avant la musique !
  c 
}

voiceFluteTwo = \relative c' {
  \global
  % En avant la musique !
 
}


voiceBassoonOne = \relative c {
  \global
  % En avant la musique !
  
}

voiceBassoonTwo = \relative c {
  \global
  % En avant la musique !
  
}

voiceViolinOne = \relative c'' {
  \global
  % En avant la musique !
  
}

voiceViolinTwo = \relative c'' {
  \global
  % En avant la musique !
  
}

voiceViolaOne = \relative c' {
  \global
  % En avant la musique !
  
}

voiceViolaTwo = \relative c' {
  \global
  % En avant la musique !
  
}

voiceCelloOne = \relative c {
  \global
  % En avant la musique !
  
}

voiceCelloTwo = \relative c {
  \global
  % En avant la musique !
  
}

voiceContrabass = \relative c, {
  \global
  % En avant la musique !
  
}

voiceRightPianoOne = \relative c'' {
  \global
  % En avant la musique !
  
}

voiceRightPianoTwo = \relative c'' {
  \global
  % En avant la musique !
  
}

voiceLeftPianoOne = \relative c' {
  \global
  % En avant la musique !
  
}

voiceLeftPianoTwo = \relative c' {
  \global
  % En avant la musique !
  
}

voiceRightHarpsichordOne = \relative c'' {
  \global
  % En avant la musique !
  
}

voiceRightHarpsichordTwo = \relative c'' {
  \global
  % En avant la musique !
  
}

voiceLeftHarpsichordOne = \relative c' {
  \global
  % En avant la musique !
  
}

voiceLeftHarpsichordTwo = \relative c' {
  \global
  % En avant la musique !
  
}

voiceUpperHarp = \relative c'' {
  \global
  % Music follows here.
  
}

voiceLowerHarp = \relative c' {
  \global
  % Music follows here.
  
}


voiceFluteStaff = \new Staff \with {
  instrumentName = "Flûte"
  midiInstrument = "flute"
} { \clef french << \voiceFluteOne \\ \voiceFluteTwo >> }

voiceBassoonStaff = \new Staff \with {
  instrumentName = "Basson"
  midiInstrument = "bassoon"
} { \clef varbaritone << \voiceBassoonOne \\ \voiceBassoonTwo >> }

voiceViolinStaff = \new Staff \with {
  instrumentName = "Violon"
  midiInstrument = "violin"
} << \voiceViolinOne \\ \voiceViolinTwo >>

voiceViolaStaff = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "viola"
} { \clef alto << \voiceViolaOne \\ \voiceViolaTwo >> }

voiceCelloStaff = \new Staff \with {
  instrumentName = "Violoncelle"
  midiInstrument = "cello"
} { \clef varbaritone << \voiceCelloOne \\ \voiceCelloTwo >> }

voiceContrabassStaff = \new Staff \with {
  instrumentName = "Contrebasse"
  midiInstrument = "contrabass"
} { \clef bass \voiceContrabass }

voicePianoStaff = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } << \voiceRightPianoOne \\ \voiceRightPianoTwo >>
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass << \voiceLeftPianoOne \\ \voiceLeftPianoTwo >> }
>>

voiceHarpsichordStaff = \new PianoStaff \with {
  instrumentName = "Clavecin"
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } << \voiceRightHarpsichordOne \\ \voiceRightHarpsichordTwo >>
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } { \clef bass << \voiceLeftHarpsichordOne \\ \voiceLeftHarpsichordTwo >> }
>>

voiceHarpStaff = \new PianoStaff \with {
  instrumentName = "Harpe"
} <<
  \new Staff = "upper" \with {
    midiInstrument = "orchestral harp"
  } \voiceUpperHarp
  \new Staff = "lower" \with {
    midiInstrument = "orchestral harp"
  } { \clef bass \voiceLowerHarp }
>>


\score {
  <<
    \new StaffGroup <<
      \voiceFluteStaff
      \voiceBassoonStaff
    >>
    \new StaffGroup <<
      \voiceViolinStaff
      \voiceViolaStaff
      \voiceCelloStaff
      \voiceContrabassStaff
    >>
    \voicePianoStaff
    \voiceHarpsichordStaff
    \voiceHarpStaff
  >>
  \layout { }
  \midi {
    \tempo 4=70
  }
}
