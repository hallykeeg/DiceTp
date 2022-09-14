Class {
	#name : #DiceTest,
	#superclass : #TestCase,
	#category : #DiceTp
}

{ #category : #tests }
DiceTest >> testDiceCreation [

self assert: (Dice withFaces: 20 ) faces equals: 20.


]

{ #category : #tests }
DiceTest >> testDiceRoll [
 10 timesRepeat: [  	self assert: (Dice new roll between: 1 and: 6)].
]

{ #category : #tests }
DiceTest >> testInitializeIsOk [
 self assert: Dice new faces equals: 6.
]
