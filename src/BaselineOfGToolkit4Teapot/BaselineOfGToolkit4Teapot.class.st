Class {
	#name : #BaselineOfGToolkit4Teapot,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4Teapot
}

{ #category : #baseline }
BaselineOfGToolkit4Teapot >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'TeapotForGToolkit'
				with: [ spec repository: 'github://feenkcom/teapot:feenk/source' ].
			spec package: 'GToolkit4Teapot' with: [ spec requires: #(TeapotForGToolkit) ] ]
]
