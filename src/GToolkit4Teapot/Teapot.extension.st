Extension { #name : #Teapot }

{ #category : #'*GToolkit4Teapot' }
Teapot >> gtRoutes [
	^ dynamicRouter routes
]

{ #category : #'*GToolkit4Teapot' }
Teapot >> gtRoutesFor: aView [
	<gtView>
	^ aView list
		title: 'Routes' translated;
		priority: 10;
		items: [ dynamicRouter routes ];
		itemText: [ :each | each printString ]
]

{ #category : #'*GToolkit4Teapot' }
Teapot >> gtStaticFilesFor: aView [
	<gtView>
	staticRouter ifNil: [ ^ aView empty ].

	^ aView forward
		title: 'Static Files';
		priority: 20;
		object: [ staticRouter ];
		view: #gtDirectoryFor:
]

{ #category : #'*GToolkit4Teapot' }
Teapot >> publicUrl [
	^ self server url
]
