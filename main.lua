require "states"

currentState = {
  -- there isn't love.load or love.exit so...
  load = nil,
  exit = nil
}

function setCurrentState (state, ...)
  currentState.load = state.load
  currentState.exit = state.exit
  love.update = state.update
  love.draw = state.draw
end

function love.load ()
  testState = states.formatRaw("testState")
  setCurrentState(testState)
  currentState.load()
end
