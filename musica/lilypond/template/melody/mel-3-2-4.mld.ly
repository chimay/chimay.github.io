% vim: set expandtab shiftwidth=2 softtabstop=2

% key & time & tempo {{{1

keytimetempo = {
  \key c \major
  \numericTimeSignature
  \time 3/4
  \tempo 2. = 50
}

% silences {{{1

silencePeriod = {
  %\override MultiMeasureRest.staff-position = #0
  \repeat unfold 3 { R2. | R \bar "|" }
  R | R \bar "||"
  \break
}

silencePeriodMinus = {
  R2.*7
}

silencePeriodMinusTwo = {
  R2.*6
}

% invisible silences {{{1

skipPeriod = {
  s2.*8
  \break
}

skipPeriodMinus = {
  s2.*7
}

skipPeriodMinusTwo = {
  s2.*6
}

% drones {{{1

droneC = {
  \repeat unfold 3 { c2. ~ | c ~ }
  c ~ | c
}

droneG = {
  \transpose c g \droneC
}

droneE = {
  \transpose c e \droneC
}

% anacrusis {{{1

anacrusis = {
  \partial 1
  r2 g'8 f e d
  \bar "|"
}

anacrusisDrumkit = \drummode {
  \partial 1
  bd8 sn hh hhc hhho hhp cymc cymr
  \bar "|"
}

% intros {{{1

% codas {{{1

% themes {{{1

theme_example = {
  cs4 ef g    |  c e g \bar "|"
  c4 d e      |  f g a \bar "|"
  c e g       |  c e g \bar "|"
  c e g       |  c2.   \bar "||"
  \break
}

theme_test = {
  \change Staff = "bass"
  cs4 ef g    |  c e g \bar "|"
  c4 d e      |  f g a \bar "|"
  \change Staff = "treble"
  c e g       |  c e g \bar "|"
  c e g       |  c2.   \bar "||"
  \break
}

% dual {{{1

% polyphony {{{1

% harmony {{{1

% cantus firmus {{{1

% counterpoints {{{1

% subjects {{{1

% countersubjects {{{1

% answers {{{1

% episodes {{{1

% arpeggios {{{1

% drums {{{1

