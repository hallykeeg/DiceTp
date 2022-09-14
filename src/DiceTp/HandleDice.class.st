Class {
	#name : #HandleDice,
	#superclass : #Object,
	#instVars : [
		'dices',
		'diceNumber'
	],
	#category : #DiceTp
}

{ #category : #arithmetic }
HandleDice >> + aHandle [
|h| 
h:= HandleDice new.
 self dices do: [ :dice | h addDice: dice ].
 aHandle dices do: [ :dice | h addDice: dice ].
^ h.



]

{ #category : #adding }
HandleDice >> addDice: aDice [
dices add: aDice .
]

{ #category : #accessing }
HandleDice >> diceNumber [
^ dices size  .
]

{ #category : #accessing }
HandleDice >> dices [
^dices.
]

{ #category : #initialization }
HandleDice >> initialize [ 
 dices := OrderedCollection new.
]

{ #category : #printing }
HandleDice >> printOn: aStream [
super printOn: aStream .
aStream nextPutAll: '(',self diceNumber printString ,')'.
]

{ #category : #play }
HandleDice >> roll [
 ^ dices inject: 0 into: [ :sum :each | sum + each roll ].
]

{ #category : #somme }
HandleDice >> sumOfFaces [
^ dices inject: 0 into: [ :sum :each | sum +  ( (1 to: each faces) inject: 0 into: [ :somme :chaqueNombre| somme + chaqueNombre] )  ].
]
