Extension { #name : #Integer }

{ #category : #'*DiceTp' }
Integer >> D10 [ 
^ self D:10.
]

{ #category : #'*DiceTp' }
Integer >> D12 [ 
^ self D:12.
]

{ #category : #'*DiceTp' }
Integer >> D20 [
^ self D:20.
]

{ #category : #'*DiceTp' }
Integer >> D4 [ 
^ self D:4.
]

{ #category : #'*DiceTp' }
Integer >> D6 [ 
^ self D:6.
]

{ #category : #'*DiceTp' }
Integer >> D8 [ 
^ self D:8.
]

{ #category : #'*DiceTp' }
Integer >> D:aNumber [
	|h|

h:= HandleDice new.
(1 to: self) do: [ :each | h addDice: (Dice withFaces: aNumber ) ].
^ h.
]
