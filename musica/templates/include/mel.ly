
% ------------ silences ------------

silencePeriod = {
  \override MultiMeasureRest.staff-position = #0
  \repeat unfold 3 { R2. \bar "|" R \bar "||" }
  R \bar "|" R \bar "."
  \break
}

silencePeriodMinus = {
  R2.*7
}

invisibleSilencePeriod = {
  s2.*8
}

invisibleSilencePeriodMinus = {
  s2.*7
}

% ------------ drones ------------

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

% ------------ intros ------------

% ------------ codas ------------

% ------------ arpeggios ------------

% ------------ themes ------------

% ------------ counterpoints ------------

% ------------ subjects ------------

% ------------ countersubjects ------------

% ------------ answers ------------

% ------------ episodes ------------

% ------------ drums ------------
