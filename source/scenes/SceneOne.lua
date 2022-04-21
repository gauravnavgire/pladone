--
-- SceneOne.lua
--
-- Use this as a starting point for your game's scenes. Copy this file to your root "scenes" directory,
-- rename it as you like, and then replace all instances of "SceneOne" with your scene's name.
--

SceneOne = {}
class("SceneOne").extends(NobleScene)

-- It is recommended that you declare, but don't yet define, your scene-specific varibles and methods here. Use "local" where possible.
--
local variable1 = nil
SceneOne.variable2 = nil
-- ...
--

SceneOne.backgroundColor = Graphics.kColorBlack		-- This is the background color of this scene.

-- This runs when your scene's object is created, which is the first thing that happens when transitining away from another scene.
function SceneOne:init()
	SceneOne.super.init(self)

	variable1 = 100
	SceneOne.variable2 = "This is Gaurav"
	-- ...

	-- Your code here
end

-- When transitioning from another scene, this runs as soon as this scene needs to be visible (this moment depends on which transition type is used).
function SceneOne:enter()
	SceneOne.super.enter(self)
	-- Your code here
end

-- This runs once a transition from another scene is complete.
function SceneOne:start()
	SceneOne.super.start(self)
	-- Your code here
end

-- This runs once per frame.
function SceneOne:update()
	SceneOne.super.update(self)
	-- Your code here
end

-- This runs once per frame, and is meant for drawing code.
function SceneOne:drawBackground()
	SceneOne.super.drawBackground(self)
	-- Your code here
end

-- This runs as as soon as a transition to another scene begins.
function SceneOne:exit()
	SceneOne.super.exit(self)
	-- Your code here
end

-- This runs once a transition to another scene completes.
function SceneOne:finish()
	SceneOne.super.finish(self)
	-- Your code here
end

function SceneOne:pause()
	SceneOne.super.pause(self)
	-- Your code here
end
function SceneOne:resume()
	SceneOne.super.resume(self)
	-- Your code here
end

-- You can define this here, or within your scene's init() function.
SceneOne.inputHandler = {

	-- A button
	--
	AButtonDown = function()			-- Runs once when button is pressed.
		-- Your code here
	end,
	AButtonHold = function()			-- Runs every frame while the player is holding button down.
		-- Your code here
	end,
	AButtonHeld = function()			-- Runs after button is held for 1 second.
		-- Your code here
	end,
	AButtonUp = function()				-- Runs once when button is released.
		-- Your code here
	end,

	-- B button
	--
	BButtonDown = function()
		-- Your code here
		Noble.transition(ExampleScene)
	end,
	BButtonHeld = function()
		-- Your code here
	end,
	BButtonHold = function()
		-- Your code here
	end,
	BButtonUp = function()
		-- Your code here
	end,

	-- D-pad left
	--
	leftButtonDown = function()
		-- Your code here
	end,
	leftButtonHold = function()
		-- Your code here
	end,
	leftButtonUp = function()
		-- Your code here
	end,

	-- D-pad right
	--
	rightButtonDown = function()
		-- Your code here
	end,
	rightButtonHold = function()
		-- Your code here
	end,
	rightButtonUp = function()
		-- Your code here
	end,

	-- D-pad up
	--
	upButtonDown = function()
		-- Your code here
	end,
	upButtonHold = function()
		-- Your code here
	end,
	upButtonUp = function()
		-- Your code here
	end,

	-- D-pad down
	--
	downButtonDown = function()
		-- Your code here
	end,
	downButtonHold = function()
		-- Your code here
	end,
	downButtonUp = function()
		-- Your code here
	end,

	-- Crank
	--
	cranked = function(change, acceleratedChange)	-- Runs when the crank is rotated. See Playdate SDK documentation for details.
		-- Your code here
	end,
	crankDocked = function()						-- Runs once when when crank is docked.
		-- Your code here
	end,
	crankUndocked = function()						-- Runs once when when crank is undocked.
		-- Your code here
	end
}