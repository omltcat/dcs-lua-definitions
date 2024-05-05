---@meta

---@class net
net = {}

---Forces the player to occupy the set slot.<br>
---SlotId matches unit Ids of client aircraft. The exception being Combined Arms slots and multicrew slots. The latter of which have "_X" appended to denote the seat.
---SideID:
--- - 0 : spectators
--- - 1 : Red
--- - 2 : Blue
---@param playerID integer -- The id of the player.
---@param sideId integer -- The id of the side.
---@param slotId integer|string -- The id of the slot.
---@return boolean
function net.force_player_slot(playerID, sideId, slotId) end

---Returns the name of a given player.<br>Is the same as `net.get_player_info(playerID, 'name')`.
---@param playerID integer -- from `net.get_player_list()`
---@return string
function net.get_name(playerID) end

---Returns a table of players currently connected to the server.
---@return integer[]
function net.get_player_list() end

---@class netPlayerInfo
---@field id integer
---@field name string
---@field side integer|0|1|2
---@field slot integer
---@field ping integer
---@field ipaddr string
---@field ucid string

---Returns a table of attributes for a given playerId. If optional attribute present only that value is returned.
---Attributes:
--- - `id`    : playerID
--- - `name`  : player name
--- - `side`  : 0 - spectators, 1 - red, 2 - blue
--- - `slot`  : slotID of the player
--- - `ping`  : ping of the player in ms
--- - `ipaddr`: IP address of the player, SERVER ONLY
--- - `ucid`  : Unique Client Identifier, SERVER ONLY
---@param playerID integer -- The id of the player.
---@param attribute string? -- The attribute to be returned (optional).
---@return netPlayerInfo -- The table of attributes for the player.
function net.get_player_info(playerID, attribute) end

---Converts a lua value to a JSON string.
---@param lua any
---@return string
function net.lua2json(lua) end

---Converts a JSON string to a lua table.
---@param json string
---@return table
function net.json2lua(json) end