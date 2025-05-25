---@meta

---@deprecated Returns nil.
function LoGetTWSInfo() end

--[[
	flags = ,				   -- field with constants detemining  method of the tracking 
								--	whTargetRadarView		= 0x0002;	-- Radar review (BVR) 
								--	whTargetEOSView			= 0x0004;	-- EOS   review (BVR)
								--	whTargetRadarLock		= 0x0008;	-- Radar lock (STT)  == whStaticObjectLock (pinpoint) (static objects,buildings lock)
								--	whTargetEOSLock			= 0x0010;	-- EOS   lock (STT)  == whWorldObjectLock (pinpoint)  (ground units lock)
								--	whTargetRadarTrack		= 0x0020;	-- Radar lock (TWS)
								--	whTargetEOSTrack		= 0x0040;	-- Radar lock (TWS)  == whImpactPointTrack (pinpoint) (ground point track)
								--	whTargetNetHumanPlane	= 0x0200;	-- net HumanPlane
								--	whTargetAutoLockOn  	= 0x0400;	-- EasyRadar  autolockon
								--	whTargetLockOnJammer  	= 0x0800;	-- HOJ   mode
]]

---Table of target information.
---@class (exact) TargetInfo
---@field ID integer World ID (may be 0 ,when ground point track).
---@field type wsType [wsTypeswsType](lua://) World database classification
---@field country country [country](lua://country)
---@field position pos3 Target position.
---@field velocity {x: number, y: number, z: number} Velocity of target in m/s.
---@field distance number Distance in meters.
---@field convergence_velocity number Closing speed in m/s.
---@field mach number Mach number.
---@field delta_psi number Aspect angle in radians.
---@field fim number Horizontal viewing angle from your body in radians.
---@field fin number Vertical viewing angle from your body in radians.
---@field flags table --TODO: Need to flush this out.
---@field reflection number Target cross section in square meters.
---@field course number Target course in radians.
---@field isjamming boolean Does target have ECM on or not.
---@field start_of_lock number Time of the beginning of lock.
---@field forces {x: number, y: number, z: number} Vector of targets acceleration units
---@field updates integer Number of radar updates.
---@field jammer_burned boolean Whether or not targets jammer is burned.

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsSensorExportAllowed](lua://Export.LoIsSensorExportAllowed) is true.<br>
--- - Server must have 'Allow sensor export' enabled.
---___
--- Returns an array of current targets.
---___
---@deprecated Returns nil.
---@return TargetInfo[] targetInfo Array of current targets. [TargetInfo](lua://TargetInfo).
function LoGetTargetInformation() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsSensorExportAllowed](lua://Export.LoIsSensorExportAllowed) is true.<br>
--- - Server must have 'Allow sensor export' enabled.
---___
---Returns an array of current locked targets.
---___
---@deprecated Returns nil.
---@return TargetInfo[] targetInfo Array of current locked targets. [TargetInfo](lua://TargetInfo).
function LoGetLockedTargetInformation() end


---@deprecated Returns nil.
function LoGetF15_TWS_Contacts() end


---@deprecated Returns nil.
function LoGetSightingSystemInfo() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsSensorExportAllowed](lua://Export.LoIsSensorExportAllowed) is true.<br>
--- - Server must have 'Allow sensor export' enabled.
---___
---Returns an array of wingman target locations.
---___
---@return vec3[] wingTargets Array of wingman target locations.
function LoGetWingTargets() end
