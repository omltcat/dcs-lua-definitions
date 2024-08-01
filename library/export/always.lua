---@meta

---Returns the value of server.advanced.allow_object_export.
---___
---@return boolean isAllowed Is object export allowed.
function LoIsObjectExportAllowed() end

---Returns the value of server.advanced.allow_sensor_export.
---___
---@return boolean isAllowed Is sensor export allowed.
function LoIsSensorExportAllowed() end

---Returns the value of  server.advanced.allow_ownship_export
---___
---@return boolean isAllowed Is ownership export allowed.
function LoIsOwnshipExportAllowed() end

function LoGetPilotName() end
function LoGetAltitude() end
function LoGetNameByType() end
function LoGeoCoordinatesToLoCoordinates() end
function LoCoordinatesToGeoCoordinates() end
function LoGetVersionInfo() end
function LoGetWindAtPoint() end
function LoGetModelTime() end
function LoGetMissionStartTime() end
