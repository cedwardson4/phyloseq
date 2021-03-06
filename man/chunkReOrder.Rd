% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-methods.R
\name{chunkReOrder}
\alias{chunkReOrder}
\title{Chunk re-order a vector so that specified newstart is first.}
\usage{
chunkReOrder(x, newstart = x[[1]])
}
\description{
Different than relevel.
}
\examples{
# Typical use-case
# chunkReOrder(1:10, 5)
# # Default is to not modify the vector
# chunkReOrder(1:10)
# # Another example not starting at 1
# chunkReOrder(10:25, 22)
# # Should silently ignore the second element of `newstart`
# chunkReOrder(10:25, c(22, 11))
# # Should be able to handle `newstart` being the first argument already
# # without duplicating the first element at the end of `x`
# chunkReOrder(10:25, 10)
# all(chunkReOrder(10:25, 10) == 10:25)
# # This is also the default
# all(chunkReOrder(10:25) == 10:25)
# # An example with characters
# chunkReOrder(LETTERS, "G") 
# chunkReOrder(LETTERS, "B") 
# chunkReOrder(LETTERS, "Z") 
# # What about when `newstart` is not in `x`? Return x as-is, throw warning.
# chunkReOrder(LETTERS, "g") 
}
\keyword{internal}
