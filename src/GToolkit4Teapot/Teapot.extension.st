Extension { #name : #Teapot }

{ #category : #'*GToolkit4Teapot' }
Teapot >> gtRoutesFor: aView [
	<gtView>
	^ aView list
		title: 'Routes' translated;
		items: [ dynamicRouter routes ];
		itemText: [ :each | each printString ]
]
