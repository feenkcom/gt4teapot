Extension { #name : #TeaResponse }

{ #category : #'*GToolkit4Teapot' }
TeaResponse >> isSuccess [
	^ #(200 201 202 204) includes: self code
]
