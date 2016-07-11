{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE PartialTypeSignatures, NamedWildCards #-}

module HTidy
    ( filterHtml
    ) where

import BasicPrelude

import Data.Conduit
import Data.Conduit.Binary
import System.IO

import Text.HTML.DOM
import Text.XML.Stream.Parse
import Text.XML.Stream.Render

filterHtml :: IO ()
filterHtml = runConduit $ sourceHandle stdin $$ parse =$= render =$= sinkHandle stdout
    where
        parse = eventConduit
        render = renderBytes def{rsPretty = True}


