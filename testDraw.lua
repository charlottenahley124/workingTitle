local ui = require "ui"

return function ()
	love.graphics.translate(unpack(test.viewOffset))
	love.graphics.draw(test.grid, 0, 0)
end
