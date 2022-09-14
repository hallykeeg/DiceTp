Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #DiceTp
}

{ #category : #actiondice }
Dice class >> withFaces: nbFace [

^ self new faces: nbFace .
]

{ #category : #accessing }
Dice >> faces [ 
^faces .
]

{ #category : #accessing }
Dice >> faces:nbFace [
faces:=nbFace .
]

{ #category : #initialization }
Dice >> initialize [ 
 faces :=6.
]

{ #category : #printing }
Dice >> printOn:stream [
super printOn: stream .
stream nextPutAll: '('; print: self faces printString; nextPutAll: ')'.
]

{ #category : #play }
Dice >> roll [
^ faces atRandom.
]
