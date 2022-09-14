Class {
	#name : #HandleTest,
	#superclass : #TestCase,
	#category : #DiceTp
}

{ #category : #tests }
HandleTest >> testAddHandles [

|handle_a handle_b h|
handle_a := HandleDice new addDice: (Dice withFaces: 6); addDice: (Dice withFaces: 6) ; yourself .
handle_b := HandleDice new addDice: (Dice withFaces: 4); addDice: (Dice withFaces: 4) ; yourself .

"h := handle_a + handle_b ."
h:= 2 D20 + 3 D4.
self assert: h diceNumber equals: 5.
]

{ #category : #tests }
HandleTest >> testHandleDice [
|d c h|
d:=Dice withFaces: 6.
c:= Dice withFaces: 6.
h:=HandleDice new .

h addDice:  d.
self assert: h diceNumber equals: 1.

h addDice:c.

self assert: h diceNumber equals: 2.


]

{ #category : #tests }
HandleTest >> testRoll [
|handle|
handle := HandleDice new addDice: (Dice withFaces: 6); addDice: (Dice withFaces: 10).

self assert: ( handle roll between: handle diceNumber  and: handle sumOfFaces  ).
]

{ #category : #tests }
HandleTest >> testSimpleHandle [
self assert: 2 D20 diceNumber equals: 2.
]

{ #category : #tests }
HandleTest >> testSumFaces [
	|d c h|
d:=Dice withFaces: 3.
c:= Dice withFaces: 4.
h:=HandleDice new .

h addDice:  d;  addDice: c.
self assert: h sumOfFaces equals: 16.
]
