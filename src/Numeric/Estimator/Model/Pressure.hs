{- |
Description: This module implements the
<http://en.wikipedia.org/wiki/U.S._Standard_Atmosphere#1976_version 1976 U.S. Standard Atmosphere>,
for altitudes from sea level to 86km.
-}

module Numeric.Estimator.Model.Pressure (pressureToHeight, heightToPressure) where

import Atmosphere

-- | Given a barometric pressure measurement in Pascals, return altitude in meters.
pressureToHeight :: (Floating a, Ord a) => a -> a
pressureToHeight = siAltitudeFromPressure

-- | Given altitude in meters, return a barometric pressure measurement in Pascals.
heightToPressure :: (Floating a, Ord a) => a -> a
heightToPressure = atmosPressure . siAtmosphere
