Class {
	#name : #BaselineOfGToolkit4Teapot,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4Teapot
}

{ #category : #baseline }
BaselineOfGToolkit4Teapot >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'Teapot' with: [
				spec repository: 'github://feenkcom/teapot:v2.6.0-gt/source' ].

		spec package: 'GToolkit4Teapot' with: [
			spec requires: #('Teapot') ].
	]
]
