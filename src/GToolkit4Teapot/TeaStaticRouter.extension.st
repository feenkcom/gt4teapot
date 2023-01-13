Extension { #name : #TeaStaticRouter }

{ #category : #'*GToolkit4Teapot' }
TeaStaticRouter >> gtDirectoryFor: aView [
	<gtView>
	delegate ifNil: [ ^ aView empty ].
	(delegate respondsTo: #gtDirectoryFor:) ifFalse: [ ^ aView empty ].

	^ aView forward
		title: 'Directory';
		priority: 15;
		object: [ delegate ];
		view: #gtDirectoryFor:
]

{ #category : #'*GToolkit4Teapot' }
TeaStaticRouter >> gtRoutersChildren [

	^ #(  )
]
