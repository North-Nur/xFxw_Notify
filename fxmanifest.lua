shared_script "@bt_defender/module/shared.lua"





--> @ ██╗  ██╗███████╗██╗  ██╗██╗    ██╗    ███████╗ ██████╗ ██╗     ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
--> @ ╚██╗██╔╝██╔════╝╚██╗██╔╝██║    ██║    ██╔════╝██╔═══██╗██║     ██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--> @  ╚███╔╝ █████╗   ╚███╔╝ ██║ █╗ ██║    ███████╗██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
--> @  ██╔██╗ ██╔══╝   ██╔██╗ ██║███╗██║    ╚════██║██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
--> @ ██╔╝ ██╗██║     ██╔╝ ██╗╚███╔███╔╝    ███████║╚██████╔╝███████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║███████║
--> @ ╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝     ╚══════╝ ╚═════╝ ╚══════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
--> @ 📝 xFxw Solutions .                                                                                                           

--[[
    --> @ 💬 Export from xFxw - Solutions => discord:[ !🧠 ID : 958338691561054249 || https://discord.gg/pHXNpTdkNq ] 
    --> @ ☕ Thank You For Your Support. 
]]--

fx_version 'cerulean' -- adamant
game 'gta5'
lua54 'yes'

description 'xFxw Notify'
version '2.0.0'
author 'xFxw Solutions'

ui_page 'view/code.html'

client_scripts { 
	'core/client.lua',
} 
 
server_scripts { 
	'core/server.lua',
} 

files {
	'config.js',
	'view/code.html',
	'view/code.js',
	-- 'view/code.css',
	
	'view/sound/*.ogg',
	'view/sound/*.wav',
	'view/sound/*.mp3',
}