\name{flog.carp}
\alias{flog.carp}
\title{Always return the log message}
\arguments{
  \item{carp}{logical Whether to carp output or not}

  \item{name}{character The name of the logger}
}
\description{
  Indicate whether the logger will always return the log
  message despite the threshold.
}
\details{
  This is a special option to allow the return value of the
  flog.* logging functions to return the generated log
  message even if the log level does not exceed the
  threshold. Note that this minorly impacts performance
  when enabled. This functionality is separate from the
  appender, which is still bound to the value of the logger
  threshold.
}
\section{Usage}{
  # Indicate whether the given logger should carp\cr
  flog.carp(name=ROOT)

  # Set whether the given logger should carp\cr
  flog.carp(carp, name=ROOT)
}
\examples{
flog.carp(TRUE)
x <- flog.debug("Returns this message but won't print")
flog.carp(FALSE)
y <- flog.debug("Returns nothing and prints nothing")
}
\author{
  Brian Lee Yung Rowe
}
\keyword{data}

