
module ReiType.Dev.Main where

open import Conventions


data ReiKind : Set where
  Fun Base : ReiKind

data ReiType : ReiKind -> Set where
  Unit : ReiType Base
  _⇒_ : ReiType Base -> ReiType Base -> ReiType Fun
  List : ReiType Base -> ReiType Base
  FunPtr : ReiType Fun -> ReiType Base

infixr 100 _⇒_

record ReiFunction : Set where
  constructor _::_
  field name : Text
  field type : ReiType Fun

infixr 30 _::_


