package.path = package.path .. ";Lua Scripts/Components/?.lua;Lua Scripts/?.lua;Lua Scripts/%Include/?.lua;"
require "NewComponent"
--require "OtherComponent"
require "include"

Chef.Window.SetSize(Chef.Vector2u(1920, 1080))

mapHandler = Chef.MapHandler()
mapHandler:LoadMap("Maps\\RefferenceMap.tmx")
music = Chef.Music()
music.PlaySound("Sounds\\music.wav", true)

object = Chef.GameObject("Green")
comp = object:AddLuaComponent(NewComponent)
object.transform.position = Chef.Vector2f(160, 79)

sprite = object:AddSprite()
sprite:SetSprite("Sprites\\player.png")
sprite.drawOrder = 1

vec2 = Chef.Vector2f(7,5)

-- This is the main loop of the engine, it will be called every frame
main = {}
function main.UpdateLoop()

end