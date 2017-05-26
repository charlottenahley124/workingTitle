states = { -- warning: this is global
  -- states (or stateGroups) are groups of substates (load, update, draw or exit states)
  -- They come in two forms: formatted and unformatted
  -- formatted means that the state is useable, a formatted state is an array where each field is a substate
  -- unformatted states are a list of strings where the names corrispond to the names of functions stored in their respective type catagory
  -- the reason why unformatted states exist is so that manufacturing new states is easy, and I was too lazy to use something like json to store the info
  -- also an important feature of this system which should be preserved in subsequent iterations of this code is shared substates between stateGroups
	stateGroups = {
    -- stateName | updateName | drawName
    testState = {"testLoad", "testUpdate", "testDraw", "testExit"}
  },

  -- subtype catagories
  load = {
    testLoad = require "testLoad"
  },
  update = {
    testUpdate = require "testUpdate"
  },
  draw = {
    testDraw = require "testDraw"
    -- draws a 
  },
  exit = {
    testExit = require "testExit"
  },


  formatRaw = function (stateName, stateTable)
    -- formats unformatted states 
    stateTable = stateTable or stateGroups
    -- if stateTable is not specified then it defaults to state groups
    newState = {}
    for i,v in ipairs(states.types) do
      newState[v] = states[v][states.stateTable[stateName][i]]
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
