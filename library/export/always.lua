---@meta


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns the value of server.advanced.allow_object_export.
---___
---@return boolean isAllowed Is object export allowed.
function LoIsObjectExportAllowed() end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns the value of server.advanced.allow_sensor_export.
---___
---@return boolean isAllowed Is sensor export allowed.
function LoIsSensorExportAllowed() end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns the value of  server.advanced.allow_ownship_export
---___
---@return boolean isAllowed Is ownership export allowed.
function LoIsOwnshipExportAllowed() end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns pilot name.
---___
---@return string pilotName Pilot name.
function LoGetPilotName() end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns altitude above terrain surface in meters.
---___
---@param x number x coord in meters.
---@param z number z coord in meters.
---@return number altitude Altitude above terrain in meters.
function LoGetAltitude(x, z) end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns weapon name by given type.
---___
---@param level1 integer Level 1 type.
---@param level2 integer Level 2 type.
---@param level3 integer Level 3 type.
---@param level4 integer Level 4 type.
---@return string name Name of weapon.
function LoGetNameByType(level1, level2, level3, level4) end


---Lo coordinates.
---@class (exact) LoCoordinates
---@field x number x coordinate.
---@field y number y coordinate.
---@field z number z coordinate.
LoCoordinates = {}

--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Converts GEO coordinates to Lo coordinates.
---___
---@param longitude number GEO longitude.
---@param latitude number GEO latitude.
---@return LoCoordinates loCoordinates [LoCoordinates](lua://LoCoordinates)
function LoGeoCoordinatesToLoCoordinates(longitude, latitude) end


---Geo coordinates.
---@class (exact) GeoCoordinates
---@field longitude number Longitude.
---@field latitude number Latitude.
GeoCoordinates = {}

--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Converts Lo coordinates into GEO coordinates.
---___
---@param x number DCS x coordinate in meters.
---@param z number DCS z coordinate in meters.
---@return GeoCoordinates geoCoordinates [GeoCoordinates](lua://GeoCoordinates) Converted GEO coordinates.
function LoLoCoordinatesToGeoCoordinates(x, z) end


---DCS version information.
---@class (exact) VersionInfo
---@field ProductName string Name of product.  i.e. DCS
VersionInfo = {
    --- Product version details.
    --- - `[1]`: Major
    --- - `[2]`: Minor
    --- - `[3]`: Revision
    --- - `[4]`: Build
    ---@class (exact) ProductVersion
    ---@field [1] integer Major version.
    ---@field [2] integer Minor version.
    ---@field [3] integer Revision number.
    ---@field [4] integer Build number.
    ProductVersion = {}, ---@diagnostic disable-line: inject-field

    --- File version details.
    --- - `[1]`: Major
    --- - `[2]`: Minor
    --- - `[3]`: Revision
    --- - `[4]`: Build
    ---@class (exact) FileVersion
    ---@field [1] integer Major version.
    ---@field [2] integer Minor version.
    ---@field [3] integer Revision number.
    ---@field [4] integer Build number.
    FileVersion = {} ---@diagnostic disable-line: inject-field
}

--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns DCS version information.
---___
---@return VersionInfo versionInfo [VersionInfo](lua://VersionInfo) DCS version information.
function LoGetVersionInfo() end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---TODO: What are the parameters?
---___
---@return number windVelocity Wind at given point in m/s.
function LoGetWindAtPoint() end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns current model time in seconds.
---___
---@return integer modelTime Model time in seconds.  
function LoGetModelTime() end


--- ## PREREQUISITE
--- - Always available in Export environment.
--- ___
---Returns mission start time in seconds.
---___
---@return integer missionStartTime Mission stert time in seconds.
function LoGetMissionStartTime() end
