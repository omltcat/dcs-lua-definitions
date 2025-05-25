---@meta

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the players plane Id.
---___
---@return integer playerPlayId Player's plane Id.
function LoGetPlayerPlaneId() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's indicated airspeed in m/s.
---___
---@return number playerAirSpeed Player's indicated airspeed in m/s.
function LoGetIndicatedAirSpeed() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's angle of attack in radians.
---___
---@return number playerAOA Player's angle of atack in radians.
function LoGetAngleOfAttack() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's angle of side slip in radians.
---___
---@return number playerAOSS Player's angle of side slip.
function LoGetAngleOfSideSlip() end


---@class (exact) AccelerationUnits
---@field x number X acceleration in G.
---@field y number Y acceleration in G.
---@field z number z acceleration in G.
AccelerationUnits = {}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's table of [AccelerationUnits](lua://AccelerationUnits).
---___
---@return AccelerationUnits accelerationUnits Table of [AccelerationUnits](lua://AccelerationUnits).
function LoGetAccelerationUnits() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's verticle velocity in m/s.
---___
---@return number playerVerticleVelocity Player's verticle velocity in m/s.
function LoGetVerticalVelocity() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player ADI in radians.
---___
---@return number playerADI Player's ADI in radians.
function LoGetADIPitchBankYaw() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the players true airspeed in m/s.
---___
---@return number playerTrueAirspeed Player's true airspeed in m/s.
function LoGetTrueAirSpeed() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the players altitude above sea level in meters.
---___
---@return number playerASL Player's altitude above seal level in meters.
function LoGetAltitudeAboveSeaLevel() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the players altitude above ground level in meters.
---___
---@return number playerAGL Player's altitude above ground level in meters.
function LoGetAltitudeAboveGroundLevel() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's mach number.
---___
---@return number playerMachNumber Player's mach number.
function LoGetMachNumber() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's radar altimeter in meters.
---___
---@return number radarAltimeter Player's radar altimeter in meters.
function LoGetRadarAltimeter() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's magnetic yaw in radians.
---___
---@return number playerMagneticYaw Player's magnetic yaw in radians.
function LoGetMagneticYaw() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's glide deviation.
---___
---@deprecated Returns nil.
---@return number playerGlideDeviation Player's glide deviation.
function LoGetGlideDeviation() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's side deviation.
---___
---@deprecated Returns nil.
---@return number playerSideDeviation Player's side deviation.
function LoGetSideDeviation() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Retuens the player's slip ball position.
---___
---@deprecated Returns nil.
---@return number playerSlipBallPosition Player's slip ball position.
function LoGetSlipBallPosition() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the basic atmosphere pressure in mm hg.
---___
---@deprecated Returns nil.
---@return number basicAtmospherePressure Basic atmosphere pressure in mm hg.
function LoGetBasicAtmospherePressure() end


---@class (exact) ControlPanelHSI
---@field ADF_raw number ADF in radians.
---@field RMI_raw number RMI in radians.
---@field Heading_raw number Heading in radians.
---@field HeadingPointer number Heading pointer in radians.
---@field Course number Course in radians.
---@field BearingPointer number Bearing pointer in radians.
---@field CourseDeviation number Course deviation in radians.
ControlPanelHSI = {}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns a table of the player's HSI data.
---___
---@deprecated Returns nil.
---@return ControlPanelHSI controlPanelHSI Player's [ControlPanelHSI](lua://ControlPanelHSI) data.
function LoGetControlPanel_HSI() end


--Engine related information.
---@class (exact) EngineInfo
---@field fuel_internal number Internal fuel quantity in kg.
---@field fuel_external number External fuel quantity in kg.
EngineInfo = {
    ---Left and right engine RPM percentage.
    ---@class (exact) EngineRPM
    ---@field Left number Percentage of left engine RPM.
    ---@field Right number Percentage of right enging RPM.
    EngineRPM = {}, ---@diagnostic disable-line: inject-field

    ---Left and right engine temp in degrees celcius.
    ---@class (exact) EngineTemperature
    ---@field Left number Temp of left engine in degrees celcius.
    ---@field Right number Temp of right engine in degrees celcius.
    EngineTemperature = {}, ---@diagnostic disable-line: inject-field

    ---Left and right engine hydraulic pressure in kg per square centimeter.
    ---@class (exact) EngineHydraulicPressure
    ---@field Left number Hydraulic pressure of left engin in kg per square centimeter.
    ---@field Right number Hydraulic pressure of right engine in kg per square centimeter.
    EngineHydraulicPressure = {}, ---@diagnostic disable-line: inject-field

    ---Left and Right engine fuel consumption in kg/sec.
    ---@class (exact) EngineFuelConsumption
    ---@field Left number Fuel consumption of left engine in kg/sec.
    ---@field Right number Fuel consumption of right engine in kg/sec.
    EngineFuelConsumption = {} ---@diagnostic disable-line: inject-field
}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's engine information.
---___
---@return EngineInfo engineInfo Player's [EngineInfo](lua://EngineInfo) table.
function LoGetEngineInfo() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns an [ObjectInfo](lua://ObjectInfo) table for your own aircraft.
---
---Not depended on anti-cheat setting in Export/Config.lua
---___
---@return ObjectInfo objectInfo [ObjectInfo](lua://ObjectInfo) for your aircraft.
function LoGetSelfData() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the current camera position
---___
---@return pos3 cameraPosition Current camera position in .
function LoGetCameraPosition() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Sets the current camera position
---___
---@param position pos3 [pos3](lua://pos3) Position to set view camera.
function LoSetCameraPosition(position) end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Sets a command value.
---___
---@param command number Number of the command to set.
---@param value number Command value from -1.0 to 1.0.
function LoSetCommand(command, value) end


---Aircrafts MCP state.
---@class (exact) MCPState
---@field LeftEngineFailure boolean
---@field RightEngineFailure boolean
---@field HydraulicsFailure boolean
---@field ACSFailure boolean
---@field AutopilotFailure boolean
---@field AutopilotOn boolean
---@field MasterWarning boolean
---@field LeftTailPlaneFailure boolean
---@field RightTailPlaneFailur boolean
---@field LeftAileronFailure boolean
---@field RightAileronFailure boolean
---@field CanopyOpen boolean
---@field CannonFailure boolean
---@field StallSignalization boolean
---@field LeftMainPumpFailure boolean
---@field RightMainPumpFailure boolean
---@field LeftWingPumpFailure boolean
---@field RightWingPumpFailure boolean
---@field RadarFailure boolean
---@field EOSFailure boolean
---@field MLWSFailure boolean
---@field RWSFailure boolean
---@field ECMFailure boolean
---@field GearFailure boolean
---@field MFDFailure boolean
---@field HUDFailure boolean
---@field HelmetFailure boolean
---@field FuelTankDamage boolean
MCPState = {}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns a player's [MCPState](lua://MCPState) information.
---___
---@return MCPState playerMCPState Player's [MCPState](lua://MCPState) information.
function LoGetMCPState() end


---@class (exact) WaypointTable
---@field this_point_num integer This waypoint's number.
---@field world_point vec3 Position of waypoint in meters.
---@field speed_req number Spoeed required at this waypoint in m/s.
---@field estimated_time number # ??? in seconds.
---@field next_point_num number Next waypoint number. If -1 then this is the end of the route.
---@field point_action string Name of action. (ATTACKPOINT, TURNPOINT, LANDING, TAKEOFF)
WaypointTable = {}

---@class (exact) RouteResult
---@field goto_point integer Next waypoint.
---@field route WaypointTable[] Array of waypoints.
RouteResult = {}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's [RouteResult](lua://RouteResult) waypoints.
---___
---@return RouteResult routeResult Player's [RouteResult](lua://RouteResult) information.
function LoGetRoute() end


---@alias NavSystemMasterMode string
---| `"NAV"` Navigation.
---| `"BVR"` Beyond visual range AA mode.
---| `"CAC"` Close air combat. 
---| `"LNG"` Longitudinal mode.
---| `"A2G"` Air to ground mode.
---| `"OFF"` Mode is absent.

---@alias NavSystemSubMode string
---| `"ROUTE"` NAV Submode -
---| `"ARRIVAL"` NAV Submode -
---| `"LANDING"` NAV Submode -
---| `"OFF"` NAV Submode -
---| `"GUN"` BRV Submode - Gunmode
---| `"RWS"` BRV Submode - RangeWhileSearch
---| `"TWS"` BRV Submode - TrackWhileSearch
---| `"STT"` BRV Submode - SingleTrackTarget (Attack submode)
---| `"OFF"` BRV Submode - 
---| `"GUN"` CAC Submode -
---| `"VERTICAL_SCAN"` CAC Submode -
---| `"BORE"` CAC Submode -
---| `"HELMET"  ` CAC Submode -
---| `"STT"` CAC Submode -
---| `"OFF"` CAC Submode -
---| `"GUN"` LNG Submode -
---| `"OFF"` LNG Submode -
---| `"FLOOD"` LNG Submode - F-15 only
---| `"GUN"` A2G Submode - 
---| `"ETS"     ` A2G Submode - Emitter Targeting System On
---| `"PINPOINT"` A2G Submode -   
---| `"UNGUIDED"` A2G Submode - unguided weapon (free fall bombs, dispensers , rockets) 
---| `"OFF"` A2G Submode -

---@alias NavACSMode string
---| `"FOLLOW_ROUTE"`
---| `"BARO_HOLD"`      
---| `"RADIO_HOLD"`      
---| `"BARO_ROLL_HOLD"`    
---| `"HORIZON_HOLD"`  
---| `"PITCH_BANK_HOLD"`
---| `"OFF"`

---@class (exact) SystemMode
---@field master NavSystemMasterMode [NavSystemMasterMode](lua://NavSystemMasterMode).
---@field submode NavSystemSubMode [NavSystemSubMode](lua://NavSystemSubMode).
SystemMode = {
    --- Required parameters of flight.
    ---@class (exact) NavSystemPREREQUISITE
    ---@field roll number Required roll.
    ---@field pitch number Required pitch.
    ---@field speed number Require speed.
    ---@field vertical_speed number Required vertical speed.
    ---@field altitude number Required altitude.
    NavSystemPREREQUISITE = {}, ---@diagnostic disable-line: inject-field

    ---Current state of the Automatic Control System.
    ---@class (exact) NavACS
    ---@field mode NavACSMode [NavACSMode](lua://NavACSMode).
    ---@field autothrust boolean If autothrust is on or not.
    NavACS = {}, ---@diagnostic disable-line: inject-field
}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's ACS [SystemMode](lua://SystemMode) information.
---___
---@deprecated Returns nil.
---@return SystemMode systemMode Player's ACS [SystemMode](lua://SystemMode) information.
function LoGetNavigationInfo() end


---Station information.
---___
---Stations may contain a container (i.e. a rack) or a weapon.
---___
---@class (exact) StationInfo
---@field CLSID string CLSID of container or item.
---@field container boolean Is item a container or not.
---@field count integer Number of weapons.
---@field weapon wsType [wsType](lua://wsType) of weapon.
---@field adapter wsType [wsType](lua://wsType) of adapter (only if station is a container).
---@field wstype wsType [wsType](lua://wsType) of container (only if station is a container).
StationInfo = {}

---Player's payload information
---@class (exact) PayloadInfo
---@field CurrentStation integer Current station.
---@field Stations StationInfo[] Array of [StationInfo](lua://StationInfo).<br>The index of the station is the station number on the aircraft.
PayloadInfo = {
    ---Cannon information.
    ---@class (exact) Cannon
    ---@field shells integer Number of shells.
    Cannon = {} ---@diagnostic disable-line: inject-field
}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's [PayloadInfo](lua://PayloadInfo).
---___
---@return PayloadInfo payLoadInfo Player's [PayloadInfo](lua://PayloadInfo).
function LoGetPayloadInfo() end


---Player's wingman information.
---@class (exact) WingmenInfo
---@field ordered_task string Name of ordered task.
---@field current_task string Name of current task.
---@field ordered_target integer World Id of ordered target.
---@field current_target integer World Id of current target.
---@field wingmen_id number World Id of wingman.
---@field wingmen_position pos3 Position of wingmen.
WingInfo = {}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns an array of  [WingmenInfo](lua://WingmenInfo).
---___
---@return WingmenInfo[] wingmenInfo Array of [WingmenInfo](lua://WingmenInfo).
function LoGetWingInfo() end


---Mechanical information.
---@class (exact) MechInfo
MechInfo = {
    ---Canopy status.
    ---@class (exact) canopy
    ---@field status integer Canopy status.
    ---@field value number Canopy value.
    canopy = {}, ---@diagnostic disable-line: inject-field
    
    ---Control surface status.
    ---@class (exact) controlsurfaces
    controlsurfaces = { ---@diagnostic disable-line: inject-field
        ---Eleron status.
        ---@class (exact) eleron
        ---@field left number Left elron state.
        ---@field right number Right eleron state.
        eleron = {}, ---@diagnostic disable-line: inject-field
        
        ---Elevator status.
        ---@class (exact) evelator
        ---@field left number Left elevator status.
        ---@field right number Right elevator status.
        elevator = {}, ---@diagnostic disable-line: inject-field
        
        ---Rudder status.
        ---@class (exact) rudder
        ---@field left number Left rudder status.
        ---@field right number Right rudder status.
        rudder = {}, ---@diagnostic disable-line: inject-field
    },

    ---Flaps status.
    ---@class (exact) flaps
    ---@field status integer Flap status.
    ---@field value number Flap value.
    flaps = {}, ---@diagnostic disable-line: inject-field
    
    ---Gear status.
    ---@class (exact) gear
    ---@field status number Gear status.
    ---@field value number Gear value.
    gear = { ---@diagnostic disable-line: inject-field
        ---Nose rod status.
        ---@class (exact) nose
        ---@field rod number Nose gear rod status.
        nose = {}, ---@diagnostic disable-line: inject-field
        
        ---Left gear status.
        ---@class (exact) left
        ---@field rod number Left gear rod status.
        left = {}, ---@diagnostic disable-line: inject-field
        
        ---Right gear status.
        ---@class (exact) right
        ---@field rod number Right gear rod status.
        right = {}, ---@diagnostic disable-line: inject-field
    },

    ---Parachute status.
    ---@class (exact) parachute
    ---@field status integer Parachute status.
    ---@field value number Parachute value.
    parachute = {}, ---@diagnostic disable-line: inject-field
    
    ---Refueling boom status.
    ---@class (exact) refuelingboom
    ---@field status integer Refueling boom status.
    ---@field value number Refueling boom value.
    refuelingboom = {}, ---@diagnostic disable-line: inject-field
    
    ---Speed brakes status.
    ---@class (exact) speedbrakes
    ---@field status integer Speed brakes status.
    ---@field value number Speed brakes value.
    speedbrakes = {}, ---@diagnostic disable-line: inject-field
    
    ---Wheel brakes status.
    ---@class (exact) wheelbrakes
    ---@field status integer Wheel brakes status.
    ---@field value number Wheel brakes value.
    wheelbrakes = {}, ---@diagnostic disable-line: inject-field
}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's [MechInfo](lua:///MechInfo) information.
---___
---@return MechInfo mechInfo Player's [MechInfo](lua://MechInfo) information.
function LoGetMechInfo() end


---Radio beacon status data.
---@class (exact) RadioBeaconStatus
---@field airfield_near any
---@field airfield_far any
---@field course_deviation_beacon_lock any
---@field glideslope_deviation_beacon_lock any

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's [RadioBeaconStatus](lua://RadioBeaconStatus) information.
---___
---@return RadioBeaconStatus radioBeaconStatus Player's [RadioBeaconStatus](lua://RadioBeaconStatus) information.
---@deprecated Returns nil.
function LoGetRadioBeaconsStatus() end


---Vector velocity in world axis.
---@class (exact) VectorVelocity
---@field x number x vector velocity (world axis).
---@field y number y vector velocity (world axis).
---@field z number z vector velocity (world axis).

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns [VectorVelocity](lua://VectorVelocity) of self velocity (world axis).
---___
---@return VectorVelocity vectorVelocity [VectorVelocity](lua://VectorVelocity) of self volcity (world axis).
function LoGetVectorVelocity() end


---Vector wind velocity in world axis.
---@class (exact) VectorWindVelocity
---@field x number x vector wind velocity (world axis).
---@field y number y vector wind velocity (world axis).
---@field z number z vector wind velocity (world axis).

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns [VectorWindVelocity](lua://VectorWindVelocity) of self velocity (world axis).
---___
---@return VectorWindVelocity vectorWindVelocity [VectorWindVelocity](lua://VectorWindVelocity) of self volcity (world axis).
function LoGetVectorWindVelocity() end


---Returns the player chaff and flare inventory.
---@class (exact) Snares
---@field chaff integer Current number of chaff.
---@field flare integer Current number of flare.

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's [Snares](lua://Snares) (chaff and flare) inventory.
---___
---@return SystemMode systemMode Player's [Snares](lua://Snares) (chaff and flare) inventory.
function LoGetSnares() end


---Angular velocity euler angles , rad per sec.
---@class (exact) AngularVelocity
---@field x number x angular velocity (euler angles , rad per sec).
---@field y number y angular velocity (euler angles , rad per sec).
---@field z number z angular velocity (euler angles , rad per sec).

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns [AngularVelocity](lua://AngularVelocity) of self angular velocity euler angles , rad per sec.
---___
---@return AngularVelocity angularVelocity [AngularVelocity](lua://AngularVelocity) of self volcity (world axis).
function LoGetAngularVelocity() end


--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Return value unkonwn number.
---___
---@return number heightWithObjects Unknown
function LoGetHeightWithObjects() end


---Player flight model data.
---@class (exact) FMData
---@field pitch number Pitch.
---@field yaw number Yaw.
---@field roll number Roll.
FMData = {
        ---Speed
    ---@class (exact) speed
    ---@field x number x vector.
    ---@field y number y vector.
    ---@field z number z vector.
    speed = {}, ---@diagnostic disable-line: inject-field

    ---Angular speed
    ---@class (exact) angular_speed
    ---@field x number x vector.
    ---@field y number y vector.
    ---@field z number z vector.
    angualr_speed = {}, ---@diagnostic disable-line: inject-field

    ---Acceleration
    ---@class (exact) acceleration
    ---@field x number x vector.
    ---@field y number y vector.
    ---@field z number z vector.
    acceleration = {}, ---@diagnostic disable-line: inject-field

    ---Angular acceleration
    ---@class (exact) angular_acceleration
    ---@field x number x vector.
    ---@field y number y vector.
    ---@field z number z vector.
    angular_acceleration = {}, ---@diagnostic disable-line: inject-field

    ---G factor
    ---@class (exact) G_factor
    ---@field x number x vector.
    ---@field y number y vector.
    ---@field z number z vector.
    G_factor = {}, ---@diagnostic disable-line: inject-field
}

--- ## PREREQUISITE
--- - Only available on clients (multiplayer) when [Export.LoIsOwnshipExportAllowed](lua://Export.LoIsOwnshipExportAllowed) is true.<br>
--- - Server must have 'Allow player export' enabled.
--- ___
---Returns the player's flight model [FMData](lua://FMData) information.
---___
---@return FMData fmData Player's flight model data [FMData](lua://FMData) information.
function LoGetFMData() end
