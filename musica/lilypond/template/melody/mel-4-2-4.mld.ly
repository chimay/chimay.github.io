% vim: set expandtab shiftwidth=2 softtabstop=2

% key & time & tempo {{{1

keytimetempo = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo 2. = 50
}

% silences {{{1

silencePeriod = {
  %\override MultiMeasureRest.staff-position = #0
  \repeat unfold 3 { R1 | R \bar "|" }
  R | R \bar "||"
  \break
}

silencePeriodMinus = {
  R1*7
}

silencePeriodMinusTwo = {
  R1*6
}

% invisible silences {{{1

skipPeriod = {
  s1*8
  \break
}

skipPeriodMinus = {
  s1*7
}

skipPeriodMinusTwo = {
  s1*6
}

% drones {{{1

droneC = {
  \repeat unfold 3 { c1 ~ | c ~ }
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
  \partial 2
  g'8 f e d
}

anacrusisDrumkit = \drummode {
  \partial 2
  hh2
}

% intros {{{1

% codas {{{1

% themes {{{1

themeMelody = {
  c1   | d   \bar "|"
  c    | d   \bar "|"
  c    | d   \bar "|"
  c    | d   \bar "||"
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

