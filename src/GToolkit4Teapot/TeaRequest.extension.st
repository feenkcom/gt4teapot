Extension { #name : #TeaRequest }

{ #category : #'*GToolkit4Teapot' }
TeaRequest >> gtHeadersFor: aView [
	<gtView>
	znRequest ifNil: [ ^ aView empty ].

	^ aView forward
		title: 'Headers';
		priority: 30;
		object: [ znRequest ];
		view: #gtHeadersFor:
]

{ #category : #'*GToolkit4Teapot' }
TeaRequest >> printOn: stream [
	super printOn: stream.

	znRequest ifNil: [ ^ self ].

	stream nextPut: $(.
	znRequest requestLine printMethodAndUriOn: stream.
	stream nextPut: $)
]
