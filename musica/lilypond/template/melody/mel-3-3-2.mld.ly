% vim: set expandtab shiftwidth=2 softtabstop=2

% key & time {{{1

keytime = {
  \key c \major
  \numericTimeSignature
  \time 3/4
}

% silences {{{1

silencePeriod = {
  %\override MultiMeasureRest.staff-position = #0
  R2. | R | R \bar "|"
  R   | R | R \bar "||"
  \break
}

silencePeriodMinus = {
  R2.*5
}

% invisible silences {{{1

skipPeriod = {
  s2.*6
  \break
}

skipPeriodMinus = {
  s2.*5
}

% drones {{{1

droneC = {
  c2. ~ | c ~ | c ~
  c ~   | c ~ | c
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
  g8 f e d
}

anacrusisDrumkit = \drummode {
  \partial 2
  r2
}

% intros {{{1

% codas {{{1

% themes {{{1

themeMelody = {
  c2. | d | e  \bar "|"
  c   | d | e  \bar "||"
  \break
}

% dual {{{1

% harmony {{{1

% cantus firmus {{{1

% counterpoints {{{1

% subjects {{{1

% countersubjects {{{1

% answers {{{1

% episodes {{{1

% arpeggios {{{1

% drums {{{1

