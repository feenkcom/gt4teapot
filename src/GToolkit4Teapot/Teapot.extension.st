Extension { #name : #Teapot }

{ #category : #'*GToolkit4Teapot' }
Teapot >> gtRoutesFor: aView [
	<gtView>	
	^aView list
		title: 'Routes' translated;		 
		items: [ dynamicRouter routes ]; 
		itemFormat: [:each | each printString ]
]
