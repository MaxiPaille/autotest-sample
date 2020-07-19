function run()
	Restart()

	Log("Starting 'Input' test")

	local inputField = GetGameObjectFromPath("Canvas/InputField")
	InputText(inputField, "Test text")

	Log("'Input' test success")
end