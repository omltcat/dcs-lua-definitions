---@meta


---Mission load begin event.
function onMissionLoadBegin() end

function onMissionLoadProgress(progress, message)
end

function onMissionLoadEnd()
end

function onSimulationStart()
end

function onSimulationStop()
end

function onSimulationFrame()
end

function onSimulationPause()
end

function onSimulationResume()
end

function onGameEvent(eventName,arg1,arg2,arg3,arg4)
    --"friendly_fire", playerID, weaponName, victimPlayerID
    --"mission_end", winner, msg
    --"kill", killerPlayerID, killerUnitType, killerSide, victimPlayerID, victimUnitType, victimSide, weaponName
    --"self_kill", playerID
    --"change_slot", playerID, slotID, prevSide
    --"connect", playerID, name
    --"disconnect", playerID, name, playerSide, reason_code
    --"crash", playerID, unit_missionID
    --"eject", playerID, unit_missionID
    --"takeoff", playerID, unit_missionID, airdromeName
    --"landing", playerID, unit_missionID, airdromeName
    --"pilot_death", playerID, unit_missionID
end

function onNetConnect(localPlayerID)
end

function onNetMissionChanged(newMissionName)
end

function onNetMissionEnd()
end

function onNetDisconnect(reason_msg, err_code)
end

-- disconnect reason codes:
--   net.ERR_INVALID_ADDRESS
--   net.ERR_CONNECT_FAILED
--   net.ERR_WRONG_VERSION
--   net.ERR_PROTOCOL_ERROR
--   net.ERR_TAINTED_CLIENT
--   net.ERR_INVALID_PASSWORD
--   net.ERR_BANNED
--   net.ERR_BAD_CALLSIGN
--   net.ERR_TIMEOUT
--   net.ERR_KICKED


function onPlayerConnect(id)
end

function onPlayerDisconnect(id, err_code)
    -- this is never called for local playerID
end

function onPlayerStart(id)
    -- a player entered the simulation
    -- this is never called for local playerID
end

function onPlayerStop(id)
    -- a player left the simulation (happens right before a disconnect, if player exited by desire)
    -- this is never called for local playerID
end

function onPlayerChangeSlot(id)
    -- a player successfully changed the slot
    -- this will also come as onGameEvent('change_slot', playerID, slotID),
    -- if allowed by server.advanced.event_Connect setting
end


--- These 3 functions are different from the rest:
--- 1. they are called directly from the network code, so try to make them as fast as possible
--- 2. they return a result
-- The code shows the default implementations.

function onPlayerTryConnect(addr, name, ucid, playerID) --> true | false, "disconnect reason"
    return true
end

function onPlayerTrySendChat(playerID, msg, to) -- -> filteredMessage | "" - empty string drops the message
    return msg
end

function onPlayerTryChangeSlot(playerID, side, slotID) -- -> true | false
    return true
end