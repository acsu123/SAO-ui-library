# SAO UI LIB
by acsu123#9826 <[source here](https://github.com/acsu123/SAO_uLib/blob/main/source.lua)>.I made an example(down the page) c:, if you found any bug dm me and will fix it :^) (Documentation below this ;-;)
![This is an image](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1c575788-be7c-400f-a498-62ed0561990e/d81ie5b-70e1f3e6-4906-4b31-b1d6-10551d7960dc.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzFjNTc1Nzg4LWJlN2MtNDAwZi1hNDk4LTYyZWQwNTYxOTkwZVwvZDgxaWU1Yi03MGUxZjNlNi00OTA2LTRiMzEtYjFkNi0xMDU1MWQ3OTYwZGMuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.sw-q3LOpReEgm0aVG2xnaqd_6k0caGUyUqhnv3GlFrs)
# Documentation
## Require ui lib
```lua
local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/SAO_uLib/main/source.lua'))()
```
## Play an ui intro
```lua
local intro = lib:Intro()
repeat wait() until intro:Done()
```
> useless but cool
## Create a window
```lua
local win = lib:Window({<Color3>, <bool>})
```
```
You can disable Color or Drag if you dont want
Color3 : <new,fromRGB,fromHSV> : main ui color
Drag : true/false : make the ui can dragable
```
## Send a notification
```lua
win:Nof(<string>,<number>)
```
```
<string> : "like this"
<number> : 4 -- time in second
```
> if you dont add <number> it will never despawn until player click button to close it
## Create a tab
```lua
local tab = win:Tab(tab text <string>,img id <string>)
```
```
<string> 1 : "tab name"
<string> 2 : "rbxassetid://1022962506" -- something like this but useless see example(down the page)
```
## Create a section
```lua
local section = tab:Section(<string>)
```
```
<string> : "section name"
```
## Make a line
```lua
section:Line()
```
  ## Make a Button
```lua
section:Button(button name<string>, callback <function>)
```
## Make a Toggle
```lua
section:Toggle(toggle name <string>,state <bool>,callback <function>)
```
## Make a Label
```lua
local label = section:Label(text <string>)
--change text:
label:New(new text <string>)
```
## Make a Slider
```lua
section:Slider(name slider <string>,min <number>,max <number>,middle <number>, callback <function>)
```
## Make a Dropdown
```lua
local dropdown = section:Dropdown(name dropdown <string>,list <table>, callback <function>)
--change dropdown:
dropdown:New(new list <table>)
```
## Make a Textbox
```lua
section:Textbox(name textbox <string>,holder text <string>, callback <function>)
```
## example
```lua
local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/SAO_uLib/main/source.lua'))()
local intro = lib:Intro()
repeat wait() until intro:Done()

local win = lib:Window({Color = Color3.new(1, 0.666667, 0), Drag = true})
local tab1 = win:Tab("Tab 1")
local tab2 = win:Tab("Tab 2")
local tab3 = win:Tab("Tab 3")
local tab4 = win:Tab("Tab 4")
local tab5 = win:Tab("Tab 5")

local sec1 = tab1:Section("sec 1")
local sec2 = tab1:Section("sec 2")
local sec3 = tab1:Section("sec 3")
for i = 4, 9 do
	tab1:Section("sec "..i)
end

win:Nof("by acsu123#9826",6)

sec1:Line()
sec1:Button("test", function()
	print("click")
end)
sec1:Line()
sec1:Toggle("tog true",true, function(bool)
	print(bool)
end)
sec1:Toggle("tog false",false, function(bool)
	print(bool)
end)
sec1:Button("test 2", function()
	print("click 2")
	win:Nof("hi",6)
end)

local la = sec1:Label("ngu")
la:New("dep trai")

sec1:Slider("test",1,10,6,function(num)
	print(num)
end)

local drop = sec1:Dropdown("Enemy", {"as","ma","quang","huy"},function(e)
	print(e)
end)
drop:New({1,9,4,5,6,8})

sec1:Textbox("name","here",function(g)
	print(g)
end)
```
