local drawGrid = function (map)
  for i,v in ipairs(map) do
    for j,w in ipairs(v) do
      if w ~= 0 then
        love.graphics.rectangle("line", (j-1)*32, (i-1)*32, 32, 32)
      end
    end
  end
end

return {
  drawGrid = drawGrid
}
