
% ------------ global variables ------------

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
}

diatonicScale = { c d e f g a b }

% ------------ silences ------------

silencePeriod = {
  %\override MultiMeasureRest.staff-position = #0
  \repeat unfold 3 { R1 \bar "|" R \bar "||" }
  R \bar "|" R \bar "."
  \break
}

invisibleSilencePeriod = {
  s1*8
}

silencePeriodMinus = {
  R1*7
}

invisibleSilencePeriodMinus = {
  s1*7
}

% ------------ drones ------------

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

% ------------ intros ------------

% ------------ codas ------------

% ------------ arpeggios ------------

% ------------ themes ------------

themeMelody = {
  r1   | r1   \bar "||"
  s1   | s1   \bar "||"
  s1   | s1   \bar "||"
  s1   | s1   \bar "."
  \break 
}

% ------------ counterpoints ------------

% ------------ subjects ------------

% ------------ countersubjects ------------

% ------------ answers ------------

% ------------ episodes ------------

% ------------ drums ------------
