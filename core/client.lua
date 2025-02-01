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

ESX = nil 
Citizen.CreateThread(function() 
	while ESX == nil do 
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
		Citizen.Wait(1) 
	end 
	PlayerData = ESX.GetPlayerData() 
end) 
 
-- สําหรับ mythic_notify 
-- RegisterNetEvent , AddEventHandler ใส่เป็น mythic_notify:client:SendAlert 
RegisterNetEvent('mythic_notify:client:SendAlert')
AddEventHandler('mythic_notify:client:SendAlert', function(data)
	SendAlert(data.type, data.text, data.timeout)
end)

RegisterNetEvent('pNotify:SendNotification')
AddEventHandler('pNotify:SendNotification', function(data)
	SendAlert(data.type, data.text, data.timeout)
	
end)


function SendAlert(typeNotify, textNotify, timeOut)
	SendNUIMessage({
		target = 'notify',
		typeNotify = typeNotify or "info",
		textNotify = textNotify,
		timeOut = timeOut or 4000,
	})
end

----------------> ## export ## <------------------

------------------- client -----------------------
-- TriggerEvent("mythic_notify:client:SendAlert", {
-- 	text = translateText,
-- 	type = translateType,
-- 	timeout = translateWait
-- })
------------------- server -----------------------

-- _source : local _source = source

-- TriggerServerEvent("mythic_notify:client:SendAlert", _source , {
-- 	text = translateText,
-- 	type = translateType,
-- 	timeout = translateWait,
-- })

-- xPlayer : local xPlayer = ESX.GetPlayerFromId(source)

-- xPlayer.triggerEvent("mythic_notify:client:SendAlert", {
-- 	text = translateText,
-- 	type = translateType,
-- 	timeout = translateWait,
-- })

-- TriggerEvent("mythic_notify:client:SendAlert", {
--     text = "ข้อความที่ต้องการแจ้ง",
--     type = "inform", -- หรือ "error", "success" ตามต้องการ
--     timeout = 5000
-- })



