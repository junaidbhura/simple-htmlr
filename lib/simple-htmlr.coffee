module.exports =
	activate: ->
		atom.commands.add 'atom-workspace', 'simple-htmlr:bold', => @bold()
		atom.commands.add 'atom-workspace', 'simple-htmlr:italics', => @italics()
		atom.commands.add 'atom-workspace', 'simple-htmlr:underline', => @underline()

	# Bold
	bold: ->
		editor = atom.workspace.getActiveTextEditor()
		buffer = editor.getBuffer()
		selections = editor.getSelections()

		buffer.transact ->
			for selection in selections
				text = selection.getText()
				selection.insertText("<strong>#{text}</strong>")

	# Italics
	italics: ->
			editor = atom.workspace.getActiveTextEditor()
			buffer = editor.getBuffer()
			selections = editor.getSelections()

			buffer.transact ->
				for selection in selections
					text = selection.getText()
					selection.insertText("<em>#{text}</em>")

	# Underline
	underline: ->
			editor = atom.workspace.getActiveTextEditor()
			buffer = editor.getBuffer()
			selections = editor.getSelections()

			buffer.transact ->
				for selection in selections
					text = selection.getText()
					selection.insertText("<u>#{text}</u>")
