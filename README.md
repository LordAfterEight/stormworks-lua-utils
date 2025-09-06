# stormworks-lua-utils
This is a collection of lua "class" definitions that make it easy to construct a UI for display on monitors in the game Stormworks: Build and Rescue. In the `src` folder there are several `.lua` files, containing the definitions.

# Usage
Go into one of the `.lua` files and copy the insanely but necessarily long line of code. Paste it at the top of your lua file, then ignore and *DON'T* touch it.

# Examples
### Button
This example creates a button and displays it at x=10 and y=20 with the size 30x15px and the text "Press".
```lua
... -- class definition from button.lua

button = button.new("Press", 10,20,30,15)

function onTick()
  -- These three inputs are needed for buttons to function correctly. Otherwise they will be displayed but won't react to touch
  in_x = input.getNumber(3)    -- Necessary to get the x coordinate of the cursor
  in_y = input.getNumber(4)    -- Necessary to get the y coordinate of the cursor
  in_p = input.getBool(1)      -- Necessary to get the On/Off signal from the monitor when it is being touched

  output.setBool(1, button.state)
end

function onDraw()
  button.draw(button)
end
```
The complete, resulting code looks like this:

![example code](https://github.com/LordAfterEight/stormworks-lua-utils/blob/main/pictures/example_button_code.png?raw=true)

Ingame, on a 5x3 monitor:

![example code](https://github.com/LordAfterEight/stormworks-lua-utils/blob/main/pictures/example_button_ingame.png?raw=true)
