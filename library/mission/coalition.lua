---@meta

---@class coalition
coalition = {}
---@enum coalition.side
coalition.side = {
    NEUTRAL = 0,
    BLUE = 2,
    RED = 1
}

---@enum coalition.service
coalition.service = {
    AWACS = 1,
    FAC = 3,
    ATC = 0,
    MAX = 4,
    TANKER = 2
}


---Dynamically spawns a group of the specified category for the specified country. <br> 
---Group data table is in the same format as created by the mission editor.<br> 
---See country page and group class page for the list of countries by id and group categories.<br> 
---The coalition of the group is defined by the coalition its country belongs to.<br> 
---If the group or any unit within shares a name of an existing group or unit, the existing group or unit will be destroyed when the new group is created.<br> 
---Function can NOT spawn new aircraft with a skill level of "client". However in single player a group can be spawned with the skill level of "Player". When this occurs the existing player aircraft will be destroyed.<br> 
---If no groupId or unitId is specified or the Ids are shared with existing groups or units, a new Id will be created for the new group.
---@param countryId country.id -- The id of the country.
---@param groupCategory Group.Category -- The category of the group.
---@param groupData table -- The data of the group.
---@return Group -- The newly created group.
function coalition.addGroup(countryId, groupCategory, groupData) end

---Dynamically spawns a static object belonging to the specified country into the mission. <br>
---This function follows the same rules as coalition.addGroup except for the object table not perfectly matching the format of a static object as seen in the mission file.<br> 
---Static Objects name cannot be shared with an existing object, if it is the existing object will be destroyed on the spawning of the new object.<br> 
---If unitId is not specified or matches an existing object, a new Id will be generated.<br> 
---Coalition of the object is defined based on the country the object is spawning to.<br> 
---@param countryId country.id -- The id of the country.
---@param groupData table -- The data of the group.
---@return StaticObject -- The newly created static object.
function coalition.addStaticObject(countryId, groupData) end

---Returns a table of unit objects that are currently occupied by players. Function is useful in multiplayer to easily filter client aircraft from everything else.
---@param coalitionId coalition.side -- The id of the coalition.
---@return Unit[] -- A table of unit objects that are currently occupied by players.
function coalition.getPlayers(coalitionId) end

---Returns the enumerator coalitionId that a specified country belongs to.
---@param countryId country.id -- The id of the country.
---@return coalition.side -- The coalitionId that the specified country belongs to.
function coalition.getCountryCoalition(countryId) end

---Returns a table of group objects belonging to the specified coalition. <br>
---If the groupCategory enumerator is provided the table will only contain groups that belong to the specified category. If this optional variable is not provided, all group types will be returned.
---@param coalitionId coalition.side -- The id of the coalition.
---@param groupCategory Group.Category? -- Optional. The category of the group.
---@return Group[] -- A table of group objects.
function coalition.getGroups(coalitionId, groupCategory) end

---Returns a table of static objects (StaticObject[]) belonging to the specified coalition.
---@param coalitionId coalition.side -- The id of the coalition.
---@return StaticObject[] -- A table of static objects.
function coalition.getStaticObjects(coalitionId) end