
function run()
	Restart()
		
	Log("Starting 'Event as error' test")

	RegisterEventAsError("barrier") -- Receiving 'barrier' event from nom will stop the script execution with an error

	Wait(20) -- Wait for 20s

	UnregisterEventAsError("barrier") -- Event is no longer processed as an error

	Log("'Event as error' test success")
end
