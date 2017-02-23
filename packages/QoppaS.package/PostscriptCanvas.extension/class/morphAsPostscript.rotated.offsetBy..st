*QoppaS-Paperwork
morphAsPostscript:aMorph rotated:rotateFlag offsetBy:offset
 | psCanvas |
  psCanvas := self new.
  psCanvas reset.
  psCanvas bounds: (0@0 extent: (aMorph bounds extent + (2 * offset))).
  psCanvas topLevelMorph:aMorph.
  psCanvas resetContentRotated: rotateFlag.
  World submorphs do: [:aSubmorph |
    (aSubmorph isKindOf: MenuMorph) ifTrue: [
		aMorph addMorph: aSubmorph]].
  psCanvas fullDrawMorph: aMorph .
  ^psCanvas contents.
