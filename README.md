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
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Agoxu0/Agoxu-UILIB/main/Library.lua"))()
local main = library:CreateWindow("The Title!")
local button = main:CreateButton("Button!",function()
    print("Pressed!")
end)
local textbox = main:CreateTextBox("TextBox!",function(text)
    print(text)
end)
local toggle = main:CreateToggle("Toggle!",function(bool)
    print(bool)
end)
local label = main:CreateLabel("Label!")
```
Closed:

![image](https://raw.githubusercontent.com/Agoxu0/Agoxu-UILIB/main/Images./image_2022-11-26_153807785.png)


Open:

![image](https://raw.githubusercontent.com/Agoxu0/Agoxu-UILIB/main/Images./image_2022-11-26_153825218.png)
