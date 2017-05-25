local ui = require "ui"

test = {}

return function ()
	test = {}
	test.map = {
		{0, 1, 0},
		{1, 1, 1},
		{0, 1, 0}
	}
	test.viewOffset = {0, 0}
	-- starting camera position
	test.grid = love.graphics.newCanvas(#(test.map)*32, #(test.map[1])*32)
	love.graphics.setCanvas(test.grid)
	-- make canvas for the grid
	love.graphics.clear()
	love.graphics.setBlendMode("alpha", "premultiplied")
	love.graphics.setColor(255, 255, 255)
	-- make sure everything is default so there is no funny business
	ui.drawGrid(test.map)
	love.graphics.setCanvas()
end
