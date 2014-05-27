rendering
textMorphForModel:  aTextModel
	^ (super textMorphForModel: aTextModel)
		font: StandardFonts windowTitleFont;
		yourself