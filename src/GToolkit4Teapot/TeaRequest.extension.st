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
TeaRequest >> gtJsonFor: aView [
	<gtView>
	znRequest ifNil: [ ^ aView empty ].
	znRequest hasEntity ifFalse: [ ^ aView empty ].
	znRequest contentType main = 'application' ifFalse: [ ^ aView empty ].
	znRequest contentType sub = 'json' ifFalse: [ ^ aView empty ].
	^ aView forward
		title: 'JSON';
		priority: 10;
		object: [ znRequest ];
		view: #gtJsonFor:
]

{ #category : #'*GToolkit4Teapot' }
TeaRequest >> gtTextContentsFor: aView [
	<gtView>
	znRequest ifNil: [ ^ aView empty ].
	znRequest hasEntity ifFalse: [ ^ aView empty ].
	znRequest contentType isBinary ifTrue: [ ^ aView empty ].
	^ aView forward
		title: 'Contents';
		priority: 40;
		object: [ znRequest ];
		view: #gtTextContentsFor:
]

{ #category : #'*GToolkit4Teapot' }
TeaRequest >> gtViewRequestLineTextFor: aView [
	<gtView>
	znRequest ifNil: [ ^ aView empty ].

	^ aView forward
		title: 'Request';
		priority: 45;
		object: [ znRequest ];
		view: #gtViewRequestLineTextFor:
]

{ #category : #'*GToolkit4Teapot' }
TeaRequest >> printOn: stream [
	super printOn: stream.

	znRequest ifNil: [ ^ self ].

	stream nextPut: $(.
	znRequest requestLine printMethodAndUriOn: stream.
	stream nextPut: $)
]
