---@meta


---Logging works as follows:
--- - Each log message is accompanied with 2 attributes: a subsystem, and level.
--- - After each message gets into the logger it passes (asynchronously) through a series of output filters which decide where the message will be written to.
---___
---log.* API is also available from the Saved Games\DCS\Config\autoexec.cfg file so you can control log output in you local machine.
---@class (exact) log
---@field ALERT 2 Alert level logging.
---@field ERROR 8 Error level logging.
---@field WARNING 16 Warning level logging.
---@field INFO 64 Info level logging.
---@field DEBUG 128 Debug level logging.
---@field ALL 255 Alert, error, warning, info and debug level logging.
---@field TRACE 256 Trace level logging. A special level which is excluded from the dcs.log file.
---@field MESSAGE 0 Log message.
---@field TIME_UTC 1 Log UTC time.
---@field TIME_LOCAL 129 Log local time.
---@field TIME_RELATIVE 128 Log relative time.
---@field MODULE 4 Log module name. This is a subsystem module, not a DLC module.
---@field LEVEL 2 Log log level.
---@field FULL 271 Log message, UTC time, module name and log level.
log = {}


---@alias logLevel
---| `log.ALERT`
---| `log.ERROR`
---| `log.WARNING`
---| `log.INFO`
---| `log.DEBUG`
---| `log.ALL` Includes ALERT, ERROR, WARNING, INFO and DEBUG.
---| `log.TRACE` A special level which is excluded from the dsc.log file.



---@alias logOutput
---| `log.MESSAGE`
---| `log.TIME_UTC`
---| `log.TIME_LOCAL`
---| `log.TIME_RELATIVE`
---| `log.MODULE` This is a subsystem module, not a DLC module.
---| `log.LEVEL`
---| `log.FULL` Means log.MESSAGE + log.TIME_UTC + log.MODULE + log.LEVEL.


---Sends the message to the logger. If there are any arguments after message, the actual string is formed as string.format(message, ...).
---___
---@param subsystem_name string Name of the subsystem to log.  May use any name.
---@param log_level logLevel [logLevel](lua://logLevel) to log message to.
---@param message string If there are any arguments after message, the actual string is formed as string.format(message, ...)
---@param ... unknown string.format arguments.
---@diagnostic disable-next-line:inject-field
function log.write(subsystem_name, log_level, message, ...) end

---Output log.DEBUG message from the current environment.<br>
---Note: With the default log level settings, debug messages are not written to the dcs.log file.
---@param message string
---@diagnostic disable-next-line:inject-field
function log.debug(message) end

---Output log.INFO message from the current environment to the dcs.log file.
---@param message string
---@diagnostic disable-next-line:inject-field
function log.info(message) end

---Output log.WARNING message from the current environment to the dcs.log file.
---@param message string
---@diagnostic disable-next-line:inject-field
function log.warning(message) end

---Output log.ERROR message from the current environment to the dcs.log file.
---@param message string
---@diagnostic disable-next-line:inject-field
function log.error(message) end

---Output log.ALERT message from the current environment to the dcs.log file.
---@param message string
---@diagnostic disable-next-line:inject-field
function log.alert(message) end


---Sends the message to the logger. If there are any arguments after message, the actual string is formed as string.format(message, ...)
---___
---So, in order to save net.trace(msg) messages to a file, you should issue a call:
---```
---log.set_output('lua-net', 'LuaNET', log.TRACE, log.MESSAGE + log.TIME_UTC)
---```
---This will write to a Logs/lua-net.log file
---
---Or, to save everything lua-network-related:
---```
---log.set_output('lua-net', 'LuaNET', log.TRACE + log.ALL, log.MESSAGE + log.TIME_UTC + log.LEVEL)
---```
---To close the log file, you must use
---```
---log.set_output('lua-net', '', 0, 0)
---```
---___
---@param log_file_name_wo_ext string Name of log file without extension. Resulting log will be written to $WRITE_DIR/Logs/.log.
---@param rule_subsystem_name string Name of the subsystem whose messages to write or empty string to match all subsystems.
---@param rule_level_mask logLevel|integer [logLevel](lua://logLevel) of logging.
---@param ... logOutput|integer Sum of [logOutput](lua://logOutput) flags.
---@diagnostic disable-next-line:inject-field
function log.set_output(log_file_name_wo_ext, rule_subsystem_name, rule_level_mask, ...) end

