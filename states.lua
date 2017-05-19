states = { -- warning: this is global
  stateGroups = {
    -- stateName | updateName | drawName
    testState = {"testLoad", "testUpdate", "testDraw", "testExit"}
  },
  load = {
    testLoad = require "testLoad"
  },
  update = {
    testUpdate = require "testUpdate"
  },
  draw = {
    testDraw = require "testDraw"
  },
  exit = {
    testExit = require "testExit"
  },


  formatRaw = function (stateName)
    newState = {}
    for i,v in ipairs(states.types) do
      newState[v] = states[v][states.stateGroups[stateName][i]]
    end

    return newState
  end,

  types = {
    "load",
    "update",
    "draw",
    "exit"
  }
}
