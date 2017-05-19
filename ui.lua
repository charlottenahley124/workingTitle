local game = require "game"

local drawGrid = function ()
  for i,v in ipairs(game.map) do
    for j,w in ipairs(v) do
      if w ~= 0 then
        love.graphics.rectangle("line", j*32, i*32, 32, 32)
      end
    end
  end
end

return {
  drawGrid = drawGrid
}
