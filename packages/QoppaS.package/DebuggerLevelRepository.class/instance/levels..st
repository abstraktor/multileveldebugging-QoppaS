as yet unclassified
levels: someLevels
	levels := someLevels.
	
	levels do: [ :level | level repo: self]