| file content |file := FileStream readOnlyFileNamed: 'questions.csv'.content := file contentsOfEntireFile.file close.Transcript show: content.