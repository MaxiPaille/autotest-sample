import("SampleAssembly") -- Import the 'Sample' component's assembly (SampleAssembly)

function run()
	Log("Starting 'Value' test")

	local sampleManager = GetGameObjectFromPath("SampleManager")
	sample = GetComponent(sampleManager, Sample) -- Get the 'Sample' component on the SampleManager GameObject

	Wait(3) -- Wait for 3s

	if sample.value ~= 100 then
		Error("sample.value should be 100")
	end

	Log("'Value' test success")
end
