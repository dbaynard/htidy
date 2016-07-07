{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE PartialTypeSignatures, NamedWildCards #-}

module HTidy
    ( filterHtml
    ) where

import BasicPrelude

import Data.Conduit
import Data.Conduit.Binary
import System.IO
import Text.XML.Stream.Parse
import Text.XML.Stream.Render

filterHtml :: IO ()
filterHtml = runConduit $ sourceHandle stdin $$ parse =$= render =$= sinkHandle stdout
    where
        parse = parseBytes def
        render = renderBytes def{rsPretty = True}


