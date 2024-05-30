# DCS World Lua Definitions

This is a [definition addon](https://luals.github.io/wiki/definition-files/) for [VS Code Lua extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua). It provides types, classes, functions and enumerators from DCS World Scripting Engine, to help with code completion and prevent errors.

```lua
-- For example
-- VS Code will now know this is a Unit object
local tomcat = Unit.getByName("Colt 1-1")

-- And it will yell at you if you try to do this
tomcat:getSize()
-- Because getSize is a function for the Group class, not Unit
```

## Credits

These definitions are pulled from Hoggit Wiki [Simulator Scripting Engine Documentation](https://wiki.hoggitworld.com/view/Simulator_Scripting_Engine_Documentation) and permission was granted by Grimes before sharing or this repo. I take no credit for the content. I simply converted it to a format for Lua extension and did some structuring and cleaning.

## Current State

At this point, *most* of the mission scripting and GUI (hook) environment definitions are in place. As I started with the most commonly used ones, some may still be missing. If you find any missing or incorrect definitions, you are welcome to open an issue or a pull request. We are still missing GUI Callbacks definitions.

When this project is more complete, I will PR it to [LLS-Addons](https://github.com/LuaLS/LLS-Addons) so that it can be installed directly from the Lua extension's Addon Manager.

## Installation (for now)

Install the [Lua extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for VS Code.

Create a folder somewhere to store all the Lua addons and clone this repo.

```sh
mkdir lua-addons
cd lua-addons
git clone https://github.com/omltcat/dcs-lua-definitions.git
```

Then add it to VS Code settings:

```json
"Lua.workspace.userThirdParty": [
  "/path/to/lua-addons"
]
```

## Recommended Extensions

- [DCS Lua Runner](https://marketplace.visualstudio.com/items?itemName=omltcat.dcs-lua-runner)
  - Made by me. Execute Lua code in running DCS missions straight from VS Code.