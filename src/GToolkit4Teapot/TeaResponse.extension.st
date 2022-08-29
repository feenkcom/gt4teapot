Extension { #name : #TeaResponse }

{ #category : #'*GToolkit4Teapot' }
TeaResponse >> gtHeadersFor: aView [
	<gtView>
	^ (self headers gtItemsFor: aView)
		title: 'Headers';
		priority: 30
]

{ #category : #'*GToolkit4Teapot' }
TeaResponse >> gtJsonFor: aView [
	<gtView>
	body ifNil: [ ^ aView empty ].
	body isCollection ifFalse: [ ^ aView empty ].

	^ aView explicit
		title: 'JSON';
		priority: 20;
		actionButtonIcon: BrGlamorousIcons tree asElement
			action: [ :aButton | aButton phlow spawnObject: self body ];
		stencil: [ | editorElement textEditor text |
			textEditor := BrTextEditorModel new.
			textEditor styler: JSONParser gtStyler.
			editorElement := BrEditorElement new.
			editorElement editor: textEditor.
			text := String
					streamContents: [ :aStream | 
						STONWriter new
							on: aStream;
							jsonMode: true;
							prettyPrint: true;
							referencePolicy: #ignore;
							nextPut: self body ].
			text := text asRopedText.
			text
				glamorousCodeFontDo: #beNotOverwritableByStyler;
				glamorousCodeSizeDo: #beNotOverwritableByStyler.
			textEditor text: text.
			editorElement
				padding: (BlInsets all: 10);
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical matchParent ].
			editorElement ]
]

{ #category : #'*GToolkit4Teapot' }
TeaResponse >> isSuccess [
	^ #(200 201 202 204) includes: self code
]
