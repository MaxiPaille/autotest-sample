import("UnityEngine.UI")

function run()
	Log("Starting 'Button' test")

	local button = GetGameObjectFromPath("Canvas/Button")
	local feedback = GetGameObjectFromPath("Canvas/Feedback")

	CheckForDisable(feedback)
	Click(button)  -- Click on the button (throw error if no Button component clickable on the GameObject)
	-- Tap(button) -- Tap on the GameObject's center (do not require a Button component and will never throw error)
	CheckForEnable(feedback)

	Log("'Button' test success")
end