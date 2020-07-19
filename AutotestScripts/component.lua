import("UnityEngine.UI")

function run()
	Restart()
		
	Log("Starting 'Component' test")

	local button = GetGameObjectFromPath("Canvas/Button/Text")
	local buttonText = GetComponent(button, Text)

	if buttonText.text ~= "Click me" then
		Error("TextMissmatch", "buttonText.text should be 'Click me' but is '" .. buttonText.text .. "'")
	end

	Log("'Component' test success")
end