MathJax = {
  output: {
    displayOverflow: 'linebreak',  // break long lines
    linebreaks: {                  // options for when overflow is linebreak
      inline: true,                   // true for browser-based breaking of in-line equations
      width: '100%',                  // a fixed size or a percentage of the container width
      lineleading: .2,                // the default lineleading in em units
      LinebreakVisitor: null,         // The LinebreakVisitor to use
    }
  }
}
