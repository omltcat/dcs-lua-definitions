---@meta

---@class Unit: CoalitionObject
---@field id_ integer
Unit = {}
---@enum Unit.Category
Unit.Category = {
    AIRPLANE      = 0,
    HELICOPTER    = 1,
    GROUND_UNIT   = 2,
    SHIP          = 3,
    STRUCTURE     = 4
}

---Returns the unit object by its name (not player name)
---@param name string
---@return Unit
function Unit.getByName(name) end


---Returns an ammo table for all types of loaded ammunition on a given object.
---@return table -- Ammo table is indexed by ammo type and contains a weapon description table and a count variable defining "how many" is on board.
function Unit:getAmmo() end

---Returns a localized string of the unit's callsign.<br>
---In the case of airbases, the callsign of world airbases is defined by the game. Callsigns for units, farps, or ships can be specified by the user with the mission editor or scripting engine.
---@return string
function Unit:getCallsign() end

---Returns the controller of the specified object. <br>
---Ships and ground units can only be controlled at a group level. Airplanes and helicopters can be controlled at both a group and unit level.
---@return Controller
function Unit:getController() end

---Returns the current value for an animation argument on the external model of the given object.<br>
---Each model animation has an id tied to with different values representing different states of the model.<br>
---Animation arguments can be figured out by opening the respective 3d model in the modelviewer.<br>
---For example, you can determine the rotation and orientation of the barrel of a Tank's cannon by checking its animation arguments.<br>
---More practically, you can determine whether or not a helicopter's doors are open.<br>
---If draw argument value is invalid for the unit in question a value of 0 will be returned.<br>
---@param arg integer
---@return number
function Unit:getDrawArgumentValue(arg) end

---Returns the Group object that the Unit belongs to.
---@return Group
function Unit:getGroup() end

---Returns the current "life" of a unit, also referred to as "hit points".<br>
---All units in DCS have a value that defines how much life is left.<br>
---If this value is less than 1 the unit is considered "dead".<br>
---Ground and ship units that are on fire and in the process of "cooking off" will return a life value of 0 until the object explodes.<br>
---Aircraft are more complex due to sub-systems and damage models which will effect the life value.<br><br>
---The following example will show the percentage of life left for a given unit. :<br>
---```
---local tank = Unit.getByName('tank1')
---local life = tank:getLife()/tank:getLife0()
---```
---@return number
function Unit:getLife() end

---Returns the initial life value of a unit.<br>
---All units spawn with "max HP" and this value will never change.<br>
---Can be used with Unit.getLife() to determine the percentage of a unit's life as each unit has a unique life value.<br><br>
---The following example will show the percentage of life left for a given unit. :<br>
---```
---local tank = Unit.getByName('tank1')
---local life = tank:getLife()/tank:getLife0()
---```
---@return number
function Unit:getLife0() end

---Returns a string value of the name of the player if the unit is currently controlled by a player.
---@return string -- The name of the player controlling the unit, or nil if the unit is controlled by AI.
function Unit:getPlayerName() end

---Returns a boolean value if the unit is activated. Units set to late activation would return false if checked by this function.
---@return boolean
function Unit:isActive() end