---@meta

---@class net
net = {}

---Executes a lua string in a given lua environment in the game.
---@param state 'mission'|'gui'|'server'|'export'|'config' -- The lua environment in the game.<br>
--- `'mission'`: holds current mission <br>
--- `'server'`: GUI (hooks) environment <br>
--- `'export'`: runs $WRITE_DIR/Scripts/Export.lua and the relevant export API <br>
--- `'config'`: the state in which $INSTALL_DIR/Config/main.cfg is executed, as well as $WRITE_DIR/Config/autoexec.cfg. Used for configuration settings <br>
---@param dostring string -- The lua string to be executed.
---@return string -- The result of the lua string execution.
function net.dostring_in(state, dostring) end

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
---@return string playerName Name of player from given ID
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

--- Returns a statistic from a given player.<br>
--- Attributes:
---```
--- net.PS_PING  -- (0) ping (in ms)
--- net.PS_CRASH -- (1) number of crashes
--- net.PS_CAR   -- (2) number of destroyed vehicles
--- net.PS_PLANE -- (3) number of destroyed planes/helicopters
--- net.PS_SHIP  -- (4) number of destroyed ships
--- net.PS_SCORE -- (5) total score
--- net.PS_LAND  -- (6) number of landings
--- net.PS_EJECT -- (7) number of ejects
---```
--- @param playerID number The ID of the player.
--- @param statID number The ID of the statistic to retrieve.
--- @return number The requested statistic for the specified player.
function net.get_stat(playerID, statID) end

---Converts a lua value to a JSON string.
---@param lua any 
---@return string
function net.lua2json(lua) end

---Converts a JSON string to a lua table.
---@param json string
---@return table
function net.json2lua(json) end

---Kicks a player from the server. Can display a message to the user.
---@param playerId integer -- The id of the player to be kicked.
---@param message string? -- The message to player received after kicked.
---@return boolean
function net.kick(playerId, message) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Loads the specified mission.<br>
---Example: Loads a mission from your saved games/missions folder. 
---```
---net.load_mission(lfs.writeDir() .. 'Missions\\' .. 'MyTotallyAwesomeMission.miz')
---```
---@param fileName string -- The path and name of the mission file to load.
---@return boolean -- True if the mission was successfully loaded, false otherwise.
function net.load_mission(fileName) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Loads the next mission from the server mission list.
---@return boolean -- True if the next mission was successfully loaded, false if at the end of the list.
function net.load_next_mission() end

---Sends a chat message.
---@param message string
---@param all boolean
function net.send_chat(message, all) end

---Sends a chat message to the player with the passed id.<br>
---If the optional fromId is set, then the player will appear to receive a message from that player.
---@param message string
---@param playerId number
---@param fromId number?
function net.send_chat_to(message, playerId, fromId) end

---Returns the playerID of the local player. Always returns 1 for server. 
---___
---@return number playerID Id of local player.
function net.get_my_player_id() end

---Returns the playerID of the server. Currently always 1. 
---___
---@return number playerID Id of server player.
function net.get_server_id() end

---Returns the sideId and slotId of a given player. Is the same as net.get_player_info(playerID, 'side') and net.get_player_info(playerID, 'slot')
---___
---@param playerID number ID of player.
---@return coalition.side sideID Players coalition side ID.
---@return number slotID Players slot ID
function net.get_slot(playerID) end

---net.log("string") will write an "INFO" entry to the DCS log file, with the message "LuaNET (Main): string"<br>
---The full set of arguments supported for net.log() are currently undocumented. 
---@param msg string The string to write to log file.
function net.log(msg) end

---Receive chat message locally[, pretending it was sent by another player].
--- - from = 0 means from the system
---___
---@param message string Message to receive.
---@param from number If message should come from system.
function net.recv_chat(message, from) end

---@class chatHistory
---@field abstime number Chat time.
---@field side coalition.side Coalition chat is from.
---@field playerName string Name of player that sent chat.
---@field message string Chat message.

---Returns last chat messages starting from a given index.
---___
---Example:
---```lua
--- local chatIndex = 0;
--- local chatHistory = {}
--- chatHistory, chatIndex = net.get_chat_history(chatIndex)
---```
---@param from number Index to start getting chat history from.
---@return chatHistory[] chatHistory Chat history table.
---@return number chatIndex Index of chat.
function net.get_chat_history(from) end

---@class netBanPlayerInfo
---@field ucid string Unique Client Identifier.
---@field ipaddr string IP address string.
---@field name string Player name at the time of the ban.
---@field banned_from number Unix time of ban start.
---@field banned_until number Unix time of ban end.

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Returns an array of active ban records.
---___
---Each record contains:
--- - 'ucid': Unique Client IDentifier
--- - 'ipaddr': IP address string
--- - 'name': player name at the time of the ban
--- - 'reason': ban reason string
--- - 'banned_from': unix-time of ban start
--- - 'banned_until': unix-time of ban end
---___
---@return netBanPlayerInfo[] netPlayerBans Array of netBanPlayerInfo tables.   
function net.banlist_get() end


--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Adds a ban and kicks the player of 'id'. <br>
---'period' is the duration of ban in seconds.
---___
---@param id string UCID of player to ban.
---@param period integer Number of seconds to ban the player.
---@param reason string Why the player is getting banned.
---@return boolean success Was the player successfully banned.
function net.banlist_add(id, period, reason) end


--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Lifts the ban from a player with the given 'ucid'.
---___
---@param ucid string UCID of player to lift ban.
---@return boolean success Was the player successfully removed from the ban list.
function net.banlist_remove(ucid) end

---@class netMissionList
---@field listLoop boolean Is the missiion list looping.
---@field listShuffle boolean Does the mission list shuffle missions.
---@field missionList string[] Array of mission list names.
---@field current string Name of the current mission.

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Returns a table with current mission list.
---___
---Fields:
--- - 'listLoop': bool
--- - 'listShuffle': bool
--- - 'missionList': array of mission filenames
--- - 'current' : index of the current mission
---___
---@return netMissionList missionList  Table with the current mission list.
function net.missionlist_get() end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Adds a mission to the list.
---___
---@param miz_filename string Name of the file to add to the mission list.  
---@return boolean success Was the mission successfully added to the list.
function net.missionlist_append(miz_filename) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Deletes a mission from the list at the given index.
---___
---@param miz_index integer Index of mission to remove.
---@return boolean success Was the mission successfully removed from the list.
function net.missionlist_delete(miz_index) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Moves a mission to a new location in the list.
---___
---@param old_index integer Index of mission to move.
---@param new_index integer Index to move the mission to.
---@return boolean success Was the mission successfully moved.
function net.missionlist_move(old_index, new_index) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Set the server to shuffle, or not to shuffle, the mission list.
---___
---@param bool boolean Shuffle the list or not.
function net.missionlist_set_shuffle(bool) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Set the server to loop, or not to loop, the mission list.
---___
---@param bool boolean Loop the list or not.
function net.missionlist_set_loop(bool) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Runs a mission at the given index.
---___
---@param miz_index integer Index of mission to run.
---@return boolean success Was the mission successfully started or not.
function net.missionlist_run(miz_index) end

--- # SERVER ONLY
--- - Not available in the Mission scripting environment.
---___
---Clear the entire mission list.
---___
---@return boolean success Was the mission list successfully cleared.
function net.missionlist_clear() end