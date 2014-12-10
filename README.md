# State-space estimation algorithms

[![Build Status](https://travis-ci.org/GaloisInc/estimator.svg?branch=master)](https://travis-ci.org/GaloisInc/estimator)

The goal of this library is to simplify implementation and use of
state-space estimation algorithms, such as Kalman Filters. The
interface for constructing models is isolated as much as possible from
the specifics of a given algorithm, so swapping out a Kalman Filter
for a Bayesian Particle Filter should involve a minimum of effort.

This implementation is designed to support symbolic types, such as
from [sbv](http://hackage.haskell.org/package/sbv) or
[ivory](http://hackage.haskell.org/package/ivory). As a result you can
generate code in another language, such as C, from a model written
using this package; or run static analyses on your model.

Also included is a sophisticated sensor fusion example in
`Numeric.Estimator.Model.SensorFusion`, which may be useful in its own
right.
