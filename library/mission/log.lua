---@meta

---Logging works as follows:
--- - Each log message is accompanied with 2 attributes: a subsystem, and level.
--- - After each message gets into the logger it passes (asynchronously) through a series of output filters which decide where the message will be written to.
---___
---log.* API is also available from the Saved Games\DCS\Config\autoexec.cfg file so you can control log output in you local machine.
---@class log
---@field ALERT integer Alerta level logging.
---@field ERROR integer Error level logging.
---@field WARNING integer Warning level logging.
---@field INFO integer Info level logging.
---@field DEBUG integer Debug level logging.
---@field ALL integer Alert, error, warning, info and debug level logging.
---@field TRACE integer Trace level logging. A special level which is excluded from the dsc.log file.
---@field MESSAGE integer Log message.
---@field TIME_UTC integer Log UTC time.
---@field TIME_LOCAL integer Log local time.
---@field TIME_RELATIVE integer Log relative time.
---@field MODULE integer Log module name. This is a subsystem module, not a DLC module.
---@field LEVEL integer Log log level.
---@field FULL integer Log message, UTC time, module name and log level.
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
function log.write(subsystem_name, log_level, message, ...) end


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
function log.set_output(log_file_name_wo_ext, rule_subsystem_name, rule_level_mask, ...) end

