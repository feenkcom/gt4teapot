Class {
	#name : #BaselineOfGToolkit4Teapot,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4Teapot
}

{ #category : #baseline }
BaselineOfGToolkit4Teapot >> baselineOf: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'Teapot' with: [ spec repository: 'github://zeroflag/teapot/source' ].
			spec package: 'GToolkit4Teapot' with: [ spec requires: #(Teapot) ] ]
]
