This is UI Library that i made in some days. Im not such a lua scripter so it was a bit hard for me. I hope you will like it!
Oh. And if you think this library is kinda empty, then go ahead and message me on discord what should i add!
My Discord Tag If You Dont Know: Agoxu2.0#6852

Quick Library
```lua
:CreateWindow(Name) -- Makes The Window
:CreateButton(Name,function) --Makes Button
:CreateTextBox(Name,function(text)) --Makes TextBox
:CreateToggle(Name,function(bool)) --Makes Toggle
:CreateLabel(Name) --Makes Label
```

Quick Example How To Use It.
```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Agoxu0/Agoxu-UILIB/main/Library.lua"))() -- Gets the library.
local main = library:CreateWindow("The Title!") -- Creates the window
main:CreateButton("Button!",function() -- Creates the button
    print("Pressed!")
end)
main:CreateTextBox("TextBox!",function(text) -- Creates the textbox
    print(text)
end)
main:CreateToggle("Toggle!",function(bool) -- Creates the toggle
    print(bool)
end)
main:CreateLabel("Label!") -- Creates the label
```
Closed:

![image](https://raw.githubusercontent.com/Agoxu0/Agoxu-UILIB/main/Images./image_2022-11-26_153807785.png)


Open:

![image](https://raw.githubusercontent.com/Agoxu0/Agoxu-UILIB/main/Images./image_2022-11-26_153825218.png)
