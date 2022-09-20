Extension { #name : #TeaRoute }

{ #category : #'*GToolkit4Teapot' }
TeaRoute >> gtRoutersChildren [

	^ #(  )
]

{ #category : #'*GToolkit4Teapot' }
TeaRoute >> gtUrlPattern [

	^ requestMatcher gtUrlPattern
]
