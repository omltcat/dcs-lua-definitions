---@meta

---@class trigger
trigger = {}

---@enum trigger.smokeColor
trigger.smokeColor =  {
    Green = 0,
    Red = 1,
    White = 2,
    Orange = 3,
    Blue = 4
}

---@enum trigger.flareColor
trigger.flareColor = {
    Green = 0,
    Red = 1,
    White = 2,
    Yellow = 3
}

---@class trigger.action
trigger.action = {}
---Creates an explosion at a given point at the specified power. 
---@param vec3 vec3
---@param power number
function trigger.action.explosion(vec3, power) end

---Creates a signal flare at the given point in the specified color. <br> 
---The flare will be launched in the direction of the azimuth variable. <br>
---trigger.flareColor: 
--- - Green   0
--- - Red     1
--- - White   2
--- - Yellow  3
---@param vec3 vec3 -- The point where the flare will be launched.
---@param flareColor trigger.flareColor -- The color of the flare.
---@param azimuth number -- The direction in which the flare will be launched.
function trigger.action.signalFlare(vec3, flareColor, azimuth) end

---Creates an arrow from the startPoint to the endPoint on the F10 map. The arrow will be "pointing at" the startPoint. There is no control over other dimensions of the arrow. <br>
---Coalition Ids to be used: 
--- - -1 All
--- - 0 Neutral
--- - 1 Red
--- - 2 Blue <br>
---Id MUST be unique and is shared with the ids used with mark panels. <br>
---Likewise trigger.action.removeMark is used to remove shapes created. <br>
---startPoint and endPoint MUST be a vec3 table. {x, y z}. <br>
---Color format is {r, g, b, a} with values 0 to 1. A red line with 50% alpha would be {1, 0, 0, 0.5} <br>
---Color is the color used for the outline around the shape. <br>
---Colorfill corresponds to the shading of the shape <br>
---LineType corresponds to an enumerator value. LineTypes: 
--- - 0 No Line
--- - 1 Solid
--- - 2 Dashed
--- - 3 Dotted
--- - 4 Dot Dash
--- - 5 Long Dash
--- - 6 Two Dash <br>
---readOnly denotes whether in the future if clients will be allowed to edit or remove the shape. <br>
---Message corresponds to a message box that will appear when the shape is added.
---@param coalition coalition.side|integer -- The coalition id.
---@param id integer -- The unique id.
---@param startPoint vec3 -- The start point of the arrow.
---@param endPoint vec3 -- The end point of the arrow.
---@param color table -- The color of the outline.
---@param fillColor table -- The color used for shading the shape.
---@param lineType integer -- The type of the line.
---@param readOnly? boolean -- Whether the arrow is read only.
---@param message? string -- The message to display when the arrow is added.
function trigger.action.arrowToAll(coalition, id, startPoint, endPoint, color, fillColor, lineType, readOnly, message) end

---Creates the defined shape on the F10 map. Uses the same definitions as the specific functions to create different shapes with the only difference being the first parameter is used to define the shape. This function does have an additional type of shape of "freeform" which allows you to create an 3+ vertices shape in any format you wish. <br>
---Shape Ids:
--- - 1 Line
--- - 2 Circle
--- - 3 Rect
--- - 4 Arrow
--- - 5 Text
--- - 6 Quad
--- - 7 Freeform <br>
---Coalition Ids to be used. <br>
--- - -1 All
--- - 0 Neutral
--- - 1 Red
--- - 2 Blue <br>
---Id MUST be unique and is shared with the ids used with mark panels. Likewise trigger.action.removeMark is used to remove shapes created. <br>
---Points of the polygon. (notice: can not use unpack() ) <br>
---Use as many points as needed here, ther is not a set amount. <br>
---Color format is {r, g, b, a} with values 0 to 1. A red line with 50% alpha would be {1, 0, 0, 0.5} <br>
---Color is the color used for the outline around the shape. <br>
---Colorfill corresponds to the shading of the shape. <br>
---LineType corresponds to an enumerator value. LineTypes:
--- - 0  No Line
--- - 1  Solid
--- - 2  Dashed
--- - 3  Dotted
--- - 4  Dot Dash
--- - 5  Long Dash
--- - 6  Two Dash <br>
---readOnly denotes whether in the future if clients will be allowed to edit or remove the shape. <br>
---Message corresponds to an message box that will appear when the shape is added. <br>
---@param shapeId number -- The coalition id.
---@param coalition coalition.side|integer -- The coalition id.
---@param id integer -- The unique id.
---@param point1 vec3 -- The start of the polygon.
---@param point2 vec3 -- The next of the polygon.
---@param pointN vec3 -- Any rest of the points of the polygon.
---@param color table -- The color of the outline.
---@param fillColor table -- The color used for shading the shape.
---@param lineType integer -- The type of the line.
---@param readOnly? boolean -- Whether the circle is read only.
---@param message? string -- The message to display when the circle is added.
function trigger.action.markupToAll(shapeId, coalition, id, point1, point2, pointN, color, fillColor, lineType, readOnly, message) end

---Creates a circle on the map with a given radius, color, fill color, and outline. <br>
---Coalition Ids to be used: 
--- - -1 All
--- - 0 Neutral
--- - 1 Red
--- - 2 Blue <br>
---Id MUST be unique and is shared with the ids used with mark panels. <br>
---Likewise trigger.action.removeMark is used to remove shapes created. <br>
---center MUST be a vec3 table. {x, y z} <br>
---radius is the radius of the circle in meters. <br>
---Color format is {r, g, b, a} with values 0 to 1. A red line with 50% alpha would be {1, 0, 0, 0.5} <br>
---Color is the color used for the outline around the shape. <br>
---Colorfill corresponds to the shading of the shape <br>
---LineType corresponds to an enumerator value. LineTypes: 
--- - 0 No Line
--- - 1 Solid
--- - 2 Dashed
--- - 3 Dotted
--- - 4 Dot Dash
--- - 5 Long Dash
--- - 6 Two Dash <br>
---readOnly denotes whether in the future if clients will be allowed to edit or remove the shape. <br>
---Message corresponds to a message box that will appear when the shape is added.
---@param coalition coalition.side|integer -- The coalition id.
---@param id integer -- The unique id.
---@param center vec3 -- The center of the circle.
---@param radius number -- The radius of the circle.
---@param color table -- The color of the outline.
---@param fillColor table -- The color used for shading the shape.
---@param lineType integer -- The type of the line.
---@param readOnly? boolean -- Whether the circle is read only.
---@param message? string -- The message to display when the circle is added.
function trigger.action.circleToAll(coalition, id, center, radius, color, fillColor, lineType, readOnly, message) end

---Creates a line on the F10 map from one point to another. <br>
---Coalition Ids to be used: 
--- - -1 All
--- - 0 Neutral
--- - 1 Red
--- - 2 Blue <br>
---Id MUST be unique and is shared with the ids used with mark panels. <br>
---Likewise trigger.action.removeMark is used to remove shapes created. <br>
---startPoint and endPoint MUST be a vec3 table. {x, y z} <br>
---Color format is {r, g, b, a} with values 0 to 1. A red line with 50% alpha would be {1, 0, 0, 0.5} <br>
---LineType corresponds to an enumerator value. LineTypes: 
--- - 0 No Line
--- - 1 Solid
--- - 2 Dashed
--- - 3 Dotted
--- - 4 Dot Dash
--- - 5 Long Dash
--- - 6 Two Dash <br>
---readOnly denotes whether in the future if clients will be allowed to edit or remove the shape. <br>
---Message corresponds to a message box that will appear when the shape is added.
---@param coalition coalition.side|integer -- The coalition id.
---@param id integer -- The unique id.
---@param startPoint vec3 -- The start point of the line.
---@param endPoint vec3 -- The end point of the line.
---@param color table -- The color of the line.
---@param lineType integer -- The type of the line.
---@param readOnly? boolean -- Whether the line is read only.
---@param message? string -- The message to display when the line is added.
function trigger.action.lineToAll(coalition, id, startPoint, endPoint, color, lineType, readOnly, message) end

---Creates a shape defined by the 4 points on the F10 map. <br>
---Coalition Ids to be used: 
--- - -1 All
--- - 0 Neutral
--- - 1 Red
--- - 2 Blue <br>
---Id MUST be unique and is shared with the ids used with mark panels. <br>
---Likewise trigger.action.removeMark is used to remove shapes created. <br>
---Each point MUST be a vec3 table. {x, y z} <br>
---Color format is {r, g, b, a} with values 0 to 1. A red line with 50% alpha would be {1, 0, 0, 0.5} <br>
---Color is the color used for the outline around the shape. <br>
---Colorfill corresponds to the shading of the shape <br>
---LineType corresponds to an enumerator value. LineTypes: 
--- - 0 No Line
--- - 1 Solid
--- - 2 Dashed
--- - 3 Dotted
--- - 4 Dot Dash
--- - 5 Long Dash
--- - 6 Two Dash <br>
---readOnly denotes whether in the future if clients will be allowed to edit or remove the shape. <br>
---Message corresponds to a message box that will appear when the shape is added.
---@param coalition coalition.side|integer -- The coalition id.
---@param id integer -- The unique id.
---@param point1 vec3 -- The first point of the shape.
---@param point2 vec3 -- The second point of the shape.
---@param point3 vec3 -- The third point of the shape.
---@param point4 vec3 -- The fourth point of the shape.
---@param color table -- The color of the outline.
---@param fillColor table -- The color used for shading the shape.
---@param lineType integer -- The type of the line.
---@param readOnly? boolean -- Whether the shape is read only.
---@param message? string -- The message to display when the shape is added.
function trigger.action.quadToAll(coalition, id, point1, point2, point3, point4, color, fillColor, lineType, readOnly, message) end

---Creates a rectangle on the map from the startpoint in one corner to the endPoint in the opposite corner. <br>
---Coalition Ids to be used: 
--- - -1 All
--- - 0 Neutral
--- - 1 Red
--- - 2 Blue <br>
---Id MUST be unique and is shared with the ids used with mark panels. <br>
---Likewise trigger.action.removeMark is used to remove shapes created. <br>
---startPoint and endPoint MUST be a vec3 table. {x, y z} <br>
---Color format is {r, g, b, a} with values 0 to 1. A red line with 50% alpha would be {1, 0, 0, 0.5} <br>
---Color is the color used for the outline around the shape. <br>
---Colorfill corresponds to the shading of the shape <br>
---LineType corresponds to an enumerator value. LineTypes: 
--- - 0 No Line
--- - 1 Solid
--- - 2 Dashed
--- - 3 Dotted
--- - 4 Dot Dash
--- - 5 Long Dash
--- - 6 Two Dash <br>
---readOnly denotes whether in the future if clients will be allowed to edit or remove the shape. <br>
---Message corresponds to a message box that will appear when the shape is added.
---@param coalition coalition.side|integer -- The coalition id.
---@param id integer -- The unique id.
---@param startPoint vec3 -- The start point of the rectangle.
---@param endPoint vec3 -- The end point of the rectangle.
---@param color table -- The color of the outline.
---@param fillColor table -- The color used for shading the shape.
---@param lineType integer -- The type of the line.
---@param readOnly? boolean -- Whether the rectangle is read only.
---@param message? string -- The message to display when the rectangle is added.
function trigger.action.rectToAll(coalition, id, startPoint, endPoint, color, fillColor, lineType, readOnly, message) end

---Adds a mark point to all on the F10 map with attached text. <br>
---2.5 added the two new variables of readOnly and message. Read only if true will make it so users cannot remove the mark. Message is a message that is displayed when a mark is added. Set to for no message to be added.
---@param id integer -- The id of the mark point.
---@param text string -- The text to attach to the mark point.
---@param vec3 table -- The 3D vector representing the position of the mark point.
---@param readOnly? boolean -- Whether the mark point is read only.
---@param message? string -- The message to display when a mark is added.
function trigger.action.markToAll(id, text, vec3, readOnly, message) end

---Adds a mark point to a coalition on the F10 map with attached text. <br> 
---2.5 added the two new variables of readOnly and message. Read only if true will make it so users cannot remove the mark. Message is a message that is displayed when a mark is added. Set to for no message to be added.
---@param id integer -- The id of the mark point.
---@param text string -- The text to attach to the mark point.
---@param vec3 vec3 -- The 3D vector representing the position of the mark point.
---@param coalition coalition.side -- The id of the coalition.
---@param readOnly boolean? -- Whether the mark point is read only.
---@param message string? -- The message to display when a mark is added.
function trigger.action.markToCoalition(id, text, vec3, coalition, readOnly, message) end

---Adds a mark point to a group on the F10 map with attached text. <br>
---2.5 added the two new variables of readOnly and message. Read only if true will make it so users cannot remove the mark. Message is a message that is displayed when a mark is added. Set to for no message to be added.
---@param id integer -- The id of the mark point.
---@param text string -- The text to attach to the mark point.
---@param vec3 table -- The 3D vector representing the position of the mark point.
---@param groupId number -- The id of the group.
---@param readOnly? boolean -- Whether the mark point is read only.
---@param message? string -- The message to display when a mark is added.
function trigger.action.markToGroup(id, text, vec3, groupId, readOnly, message) end

---Plays a sound file to all players on the specified coalition. The sound file must be placed inside of the miz file in order to be played.
---@param coalition coalition.side -- The coalition of players.
---@param soundfile string -- The sound file to play.
function trigger.action.outSoundForCoalition(coalition, soundfile) end

---Plays a sound file to all players in the specified group. Group is specified by their groupId. The sound file must be placed inside of the miz file in order to be played.
---@param groupId integer -- The id of the group.
---@param soundfile string -- The sound file to play.
function trigger.action.outSoundForGroup(groupId, soundfile) end

---Displays the passed string of text for the specified time to all players.
---@param text string -- The text to be displayed to all players.
---@param displayTime number -- The duration for which the text will be displayed.
---@param clearview? boolean -- Defines whether or not to use the old message display format which overwrites existing messages.
function trigger.action.outText(text, displayTime, clearview) end

---Displays the passed string of text for the specified time to all players belonging to the specified coalition.
---@param coalition coalition.side -- The coalition of players.
---@param text string -- The text to display.
---@param displayTime number -- The time to display the text.
---@param clearview? boolean -- Whether to use the old message display format.
function trigger.action.outTextForCoalition(coalition, text, displayTime, clearview) end

---Displays the passed string of text for the specified time to all players in the specified group. 
---@param groupId integer -- The id of the group to which the text will be displayed.
---@param text string -- The text to be displayed to the group.
---@param displayTime number -- The duration for which the text will be displayed.
---@param clearview? boolean -- Defines whether or not to use the old message display format which overwrites existing messages.
function trigger.action.outTextForGroup(groupId, text, displayTime, clearview) end

---Displays the passed string of text for the specified time to all players in the specified unit. The unit is defined by its unitId.
---Boolean clearview defines whether or not to use the old message display format. The old message display overwrites existing messages and is good for displaying anything that must be updated at a high rate like lap times.
---@param unitId integer -- The id of the unit to which the text will be displayed.
---@param text string -- The text to be displayed to the unit.
---@param displayTime number -- The duration for which the text will be displayed.
---@param clearview? boolean -- Defines whether or not to use the old message display format which overwrites existing messages.
function trigger.action.outTextForUnit(unitId, text, displayTime, clearview) end

--- Removes a mark panel from the F10 map.
--- @param id integer
function trigger.action.removeMark(id) end

---Updates the position of a mark that was defined at the first point given to create it. Can be used to "move" an existing mark from one place to the next without deleting it and creating a new one.
---@param id integer -- The unique id of the mark to be updated.
---@param vec3 table -- The new position for the mark in the form of a vec3 table {x, y, z}.
function trigger.action.setMarkupPositionStart(id, vec3) end

---Updates the color of the specified mark to be the new value.
---@param id integer -- The unique id of the mark to be updated.
---@param color table -- The new color for the mark. Color format is {r, g, b, alpha} with values ranging from 0 to 1.
function trigger.action.setMarkupColor(id, color) end

---Updates the colorfill of the specified mark to be the new value. Color format is {r, g, b, alpha} with values ranging from 0 to 1.
---@param id number -- The id of the mark.
---@param colorFill table -- The new colorfill for the mark.
function trigger.action.setMarkupColorFill(id, colorFill) end

---Updates the text value of the passed mark to the passed text value. If the id of the passed mark does not have any text then nothing will happen.
---@param id integer -- The unique id of the mark to be updated.
---@param text string -- The new text value for the mark.
function trigger.action.setMarkupText(id, text) end

---Sets the internal cargo for the specified unit at the specified mass. Overrides any previously set value.
---Can be used in conjunction with troop transport to simulate cargo being added to the aircraft.
---Applicable to airplanes and helicopters. Mass is defined in kilograms.
---Example:
---```
---local mass = 5000
---trigger.action.setUnitInternalCargo('Cargo Plane', mass)
---```
---@param unitName string -- The name of the unit.
---@param mass number -- The mass of the cargo in kilograms.
function trigger.action.setUnitInternalCargo(unitName, mass) end

---Creates a text imposed on the map at a given point. Text scales with the map.
---@param coalition coalition.side|integer -- Coalition Ids to be used. -1 for All, 0 for Neutral, 1 for Red, 2 for Blue.
---@param id integer -- Id MUST be unique and is shared with the ids used with mark panels. Likewise trigger.action.removeMark is used to remove shapes created.
---@param point vec3 -- Point MUST be a vec3 table. {x, y z}
---@param color table -- Color format is {r, g, b, a} with values 0 to 1. A red line with 50% alpha would be {1, 0, 0, 0.5}. It defines the color of the text to be displayed.
---@param fillColor table -- colorFill will be the color of a rectangle over the area that the text covers.
---@param fontSize number -- Size of the font to be used.
---@param readOnly boolean -- readOnly denotes whether in the future if clients will be allowed to edit or remove the shape.
---@param text string -- text corresponds to the message that is displayed on the map.
function trigger.action.textToAll(coalition, id, point, color, fillColor, fontSize, readOnly, text) end

---@class trigger.misc
trigger.misc = {}

---Returns the value of a user flag.
---@param flagNumOrName string -- The number or name of the user flag.
---@return integer -- The value of the user flag.
function trigger.misc.getUserFlag(flagNumOrName) end

---Returns a trigger zone table of a given name.
---@param zoneName string -- The name of the trigger zone.
---@return zone? -- The trigger zone table. Format: { point = vec3, radius = distance }
function trigger.misc.getZone(zoneName) end

---Sets a user flag to the specified value.
---@param flagNumOrName string -- The number or name of the user flag.
---@param userFlagValue boolean|integer -- The value to set the user flag to.
function trigger.action.setUserFlag(flagNumOrName, userFlagValue) end