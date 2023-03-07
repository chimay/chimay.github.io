
% ------------ global variables ------------

global = {
  \key c \major
  \numericTimeSignature
  \time 3/4
}

diatonicScale = { c d e f g a b }

% ------------ silences ------------

silencePeriod = {
  %\override MultiMeasureRest.staff-position = #0
  \repeat unfold 3 { R2. \bar "," R \bar "|" }
  R \bar "," R \bar "||"
  \break
}

invisibleSilencePeriod = {
  s2.*8
}

silencePeriodMinus = {
  R2.*7
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

themeMelody = {
  r2.   | r2.   \bar "||"
  s2.   | s2.   \bar "||"
  s2.   | s2.   \bar "||"
  s2.   | s2.   \bar "."
  \break 
}

% ------------ counterpoints ------------

% ------------ subjects ------------

% ------------ countersubjects ------------

% ------------ answers ------------

% ------------ episodes ------------

% ------------ drums ------------
