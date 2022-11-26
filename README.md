This it UI Library that i made in some days. Im not such a lua scripter so it was a bit hard for me. I hope you will like it!

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
local library = loadstring(game:HttpGet(""))()
local main = library:CreateWindow("The Title!")
local button = main:CreateButton("The Button!",function()
    print("Pressed!")
end)
local textbox = main:CreateTextBox("The TextBox!",function(text)
    print(text)
end)
local toggle = main:CreateToggle("The Toggle!",function(bool)
    print(bool)
end)
local label = main:CreateLabel("The Lable!")
```
