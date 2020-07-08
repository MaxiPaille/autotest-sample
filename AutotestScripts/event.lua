
function run()
	Log("Starting 'Event' test")

	WaitForEvent("barrier", 10) -- Wait for 'barrier' event for 10 secondes maximum
	-- WaitForEvent("barrier")  -- Wait for 'barrier' event indefinitely

	Log("'Event' test success")
end
