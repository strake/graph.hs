module Data.Graph where

import Data.Bitraversable

class Bitraversable graph => Graph graph where
    traverseGraph :: Applicative p => (a -> [α] -> [α] -> p b) -> graph α a -> graph α b
