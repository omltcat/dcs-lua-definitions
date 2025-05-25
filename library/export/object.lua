---@meta

---Table of object data.
---@class (exact) ObjectInfo
---@field Name string Name of object.
---@field Country country.id [country.id](lua://country.id) See Scripts/database/db_countries.lua.
---@field Coalition string Coalition name.
---@field CoalitionID coalition.side [coalition.side](lua://coalition.side)
---@field Heading number Heading in radians.
---@field Pitch number Pitch in radians.
---@field Bank number Bank angle in radians.
---@field Position vec3 Position of object in internal DCS coordinates.
---@field PositionAsMatrix pos3 Matrix postion of object in DCS coordinates.
---@field UnitName string Unit name from mission (UTF8).  Only for units (Planes, Helicopters, Tanks, etc).
---@field GroupName string Unit name from mission (UTF8) Only for units (Planes, Helicopters, Tanks, etc).  
---@field Type wsType Object type.
ObjectInfo = { 
    ---Position of object in GEO coordinates.
    ---@class (exact) LatLongAlt
    ---@field Lat number Latitude.
    ---@field Long number Longitude.
    ---@field Alt number Altitude.
    LatLongAlt = {}, ---@diagnostic disable-line: inject-field

    ---Object flags.
    ---
    ---Only for units (Planes, Helicopters, Tanks, etc).
    ---@class (exact) Flags
    ---@field RadarActive boolean True if the unit has it's radar turned on.
    ---@field Human boolean True if the unti is human controlled.
    ---@field Jamming boolean True if the unit uses EMI jamming.
    ---@field IRJamming boolean True if the unit uses IR jamming.
    ---@field Born boolean True if the unit is activated.
    ---@field AI_ON boolean True if the unit's AI is active.
    ---@field Invisible boolean True if the unit is invisible.
    ---@field Static boolean True if the unit is a static object.
    Flags = {}, ---@diagnostic disable-line: inject-field
    }

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsObjectExportAllowed](lua://Export.LoIsObjectExportAllowed) is true.<br>
--- - Server must have 'Allow object export' enabled.
--- ___
---Returns an [ObjectInfo](lua://ObjectInfo) table of information of given object Id.
---___
---@param id integer Id of object to get information for.
---@return ObjectInfo objectInfo [ObjectInfo](lua://ObjectInfo)
function LoGetObjectById(id) end


---@alias WorldObjectTypes
---| `"units"`
---| `"ballistic"`
---| `"airdromes"`

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsObjectExportAllowed](lua://Export.LoIsObjectExportAllowed) is true.<br>
--- - Server must have 'Allow object export' enabled.
--- ___
---Returns an array of [ObjectInfo](lua://ObjectInfo) tables based on the given object type. <br>
---Object type and be one of the following: "units", ballistic" or "airdromes".
---
---Returned table index is the Id of the object.
---___
---@param objectType WorldObjectTypes [WorldObjectTypes](lua://WorldObjectTypes) Type of world objects to get.
---@return ObjectInfo[] objects Array of [ObjectInfo](lua://ObjectInfo).
function LoGetWorldObjects(objectType) end
