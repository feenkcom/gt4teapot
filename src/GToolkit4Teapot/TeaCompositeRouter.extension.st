Extension { #name : #TeaCompositeRouter }

{ #category : #'*GToolkit4Teapot' }
TeaCompositeRouter >> gtRoutersFor: aView [
	<gtView>
	
	routers ifNil: [ ^ aView empty ].
	
	^ aView tree
		title: 'Routes' translated;
		items: [ routers ];
		children: #gtRoutersChildren
]
