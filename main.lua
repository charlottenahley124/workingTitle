require "states"

current = {
  load = nil,
  exit = nil
}

function setCurrentState (state, ...)
  current.heap = state.heap
  current.load = state.load
  current.exit = state.exit
  love.update = state.update
  love.draw = state.draw
end

function love.load ()
  testState = states.formatRaw("testState")
  setCurrentState(testState)
end
