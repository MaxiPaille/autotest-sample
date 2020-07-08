
function run()
	Log("Starting 'Drag' test")

	local viewport = GetGameObjectFromPath("Canvas/Scroll View")
	local tile = GetGameObjectFromPath("Canvas/Scroll View/Viewport/Content/Tile")
	local button = GetGameObjectFromPath("Canvas/Button")

	Drag(viewport, tile, button, 0.3) -- Drag the viewport GameObject from tile GameObject position to button GameObject position in 300ms
	-- DragFromPosition(viewport, Vector2(0, 0), Vector2(1920,1080), 1) -- Drag the viewport GameObject from (0,0) screen position to (1920,1080) screen position in 1s

	Log("'Drag' test success")
end
