{-# LANGUAGE NoImplicitPrelude #-}

module HTidy
    ( filterHtml
    ) where

import BasicPrelude

import Text.HTML.TagSoup

import Data.String.Conv

filterHtml :: IO ()
filterHtml = putStr . renderTags . toStrict . parseTags =<< getContents
    where
        toStrict = fmap . fmap $ toS
