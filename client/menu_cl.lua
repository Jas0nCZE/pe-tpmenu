ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

local lastLocation = nil

OpenTeleportMenu = function()
  ESX.UI.Menu.CloseAll()
  ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'tp_menu', {
    title    = 'Menu de Teletransporte',
		align    = 'left',
		elements = {
			{label = 'Cocaina 1 (arriba)', x = 1865.995, y = 4966.276, z = 52.77544, value = 'tp_menu_1'},
			{label = 'Cocaina 2 (abajo)', x = 1828.967, y = 4828.576, z = 43.95826, value = 'tp_menu_2'},
			{label = 'Cocaina 3 (izquierda)', x = 1806.13, y = 4941.2, z = 44.14217, value = 'tp_menu_3'},
			{label = 'Cocaina 4 (derecha)', x = 1890.936, y = 4897.236, z = 47.02007, value = 'tp_menu_4'},
			{label = 'Mansion 1 (arriba)', x = -1615.491, y = 758.5254, z = 189.243, value = 'tp_menu_5'},
			{label = 'Mansion 2 (abajo)', x = -1491.634, y = 905.1045, z = 181.955, value = 'tp_menu_6'},
			{label = 'Mansion 3 (izquierda)', x = -1560.348, y = 873.5776, z = 181.8447, value = 'tp_menu_7'},
			{label = 'Mansion 4 (derecha)', x = -1494.494, y = 797.6514, z = 181.9049, value = 'tp_menu_8'},
			{label = 'Barco Oxidado 1 (arriba)', x = -506.3586, y = -2708.288, z = 8.757886, value = 'tp_menu_9'},
			{label = 'Barco Oxidado 2 (abajo)', x = -386.2806, y = -2588.45, z = 13.65285, value = 'tp_menu_10'},
			{label = 'Edificio en Constuccion 1 (abajo)', x = -144.7307, y = -946.7075, z = 254.1316, value = 'tp_menu_11'},
			{label = 'Edificio en Constuccion 2 (arriba)', x = -144.8069, y = -944.1163, z = 269.1354, value = 'tp_menu_12'},		
      {label = 'Edificio en Constuccion 3 (abajo)', x = -169.4555, y = -1014.094, z = 254.1316, value = 'tp_menu_13'},		
      {label = 'Edificio en Constuccion 4 (arriba)', x = -154.8749, y = -980.5922, z = 269.2277, value = 'tp_menu_14'},		
      {label = 'Porta Aviones 1 (abajo)', x = 3079.454, y = -4798.594, z = 6.077248, value = 'tp_menu_15'},		
      {label = 'Porta Aviones 2 (abajo)', x = 3051.925, y = -4686.042, z = 6.077287, value = 'tp_menu_16'},		
      {label = 'Porta Aviones 3 (abajo)', x = 3054.325, y = -4630.473, z = 6.077313, value = 'tp_menu_17'},	
      {label = 'Porta Aviones 4 (arriba)', x = 3067.328, y = -4821.731, z = 15.26162, value = 'tp_menu_18'},	    	   
      {label = 'Porta Aviones 5 (arriba)', x = 3061.143, y = -4598.463, z = 15.26144, value = 'tp_menu_19'},
      {label = 'Porta Aviones 6 (concector)', x = 3092.968, y = -4713.977, z = 15.26262, value = 'tp_menu_20'}, 
      {label = 'Joyeria 1 (adentro)', x = -630.2645, y = -228.8618, z = 38.05703, value = 'tp_menu_21'}, 
      {label = 'Joyeria 2 (afuera)', x = -625.3295, y = -271.1391, z = 38.83772, value = 'tp_menu_22'},
      {label = 'Motel 1 (arriba)', x = 1560.236, y = 3511.088, z = 35.99739, value = 'tp_menu_23'},    
      {label = 'Motel 2 (abajo)', x = 1511.035, y = 3597.107, z = 35.38511, value = 'tp_menu_24'},     
      {label = 'Motel 3 (derecha)', x = 1491.737, y = 3562.17, z = 35.24825, value = 'tp_menu_25'}, 
      {label = 'Motel 4 (izquierda)', x = 1624.944, y = 3604.831, z = 35.38614, value = 'tp_menu_26'},  
      {label = 'Campamento Hipiie 1 (atras)', x = 1553.889, y = 6329.151, z = 24.08257, value = 'tp_menu_27'},  
      {label = 'Campamento Hipiie 2 (adelante)', x = 1420.73, y = 6344.647, z = 23.98895, value = 'tp_menu_28'}, 
      {label = 'Fabrica de pollos 1 (derecha)', x = -180.1417, y = 6163.516, z = 31.13676, value = 'tp_menu_29'}, 
      {label = 'Fabrica de pollos 2 (derecha)', x = -153.8849, y = 6141.42647, z = 32.33514, value = 'tp_menu_30'}, 
      {label = 'Fabrica de pollos 3 (izquierda)', x = -70.74002, y = 6262.201, z = 31.09016, value = 'tp_menu_31'},
      {label = 'Fabrica de pollos 4 (izquierda)', x = -64.72571, y = 6238.821, z = 31.09074, value = 'tp_menu_32'},
      {label = 'Monte Chiliad 1 (arriba)', x = 501.6643, y = 5604.624, z = 797.9103, value = 'tp_menu_33'},
      {label = 'Monte Chiliad 2 (abajo)', x = 466.5112, y = 5542.145, z = 785.1421, value = 'tp_menu_34'},
      {label = 'Pueblo de Moteros 1 (abajo)', x = 68.2282, y = 3613.144, z = 39.83201, value = 'tp_menu_35'},
      {label = 'Pueblo de Moteros 2 (arriba)', x = 84.22371, y = 3764.098, z = 39.68896, value = 'tp_menu_36'},
      {label = 'Pueblo de Moteros 3 (derecha)', x = 103.3801, y = 3688.217, z = 39.75484, value = 'tp_menu_37'},
      {label = 'Pueblo de Moteros 4 (izquierda)', x = 16.3149, y = 3673.069, z = 39.76116, value = 'tp_menu_38'},
      {label = 'Ultima localizacion', value = 'last_location'}
	}}, function(data, menu)
    local ped = PlayerPedId()
    if data.current.value == 'tp_menu_1' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_2' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_3' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_4' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_5' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_6' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_7' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_8' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_9' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_10' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_11' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_12' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_13' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_14' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_15' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_16' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_17' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)
    elseif data.current.value == 'tp_menu_18' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_19' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_20' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_21' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_22' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_23' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_24' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_25' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_26' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_27' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)    
    elseif data.current.value == 'tp_menu_28' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)   
    elseif data.current.value == 'tp_menu_29' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)   
    elseif data.current.value == 'tp_menu_30' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)   
    elseif data.current.value == 'tp_menu_31' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)   
    elseif data.current.value == 'tp_menu_32' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_33' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)   
    elseif data.current.value == 'tp_menu_34' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped) 
    elseif data.current.value == 'tp_menu_35' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_36' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped) 
    elseif data.current.value == 'tp_menu_37' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped)  
    elseif data.current.value == 'tp_menu_338' then
      SetEntityCoords(ped, data.current.x,data.current.y,data.current.z, false, false, false, true)
      lastLocation = GetEntityCoords(ped) 
    elseif data.current.value == 'last_location' then
      if lastLocation ~= nil then
        SetEntityCoords(ped, lastLocation.x, lastLocation.y, lastLocation.z, false, false, false, true)
      else 
        exports['t-notify']:Custom({
          style  =  'error',
          message  =  'Todavia no se ha guardado \n ninguna localizacion',
          duration = 1500
        })
      end
    end
	end, function(data, menu)
		menu.close()
	end)
end

RegisterCommand('tpmenu', function()
  OpenTeleportMenu()
end)

RegisterKeyMapping('tpmenu', 'Abre el menu de teletransporte', 'keyboard', 'f5')

AddEventHandler('onResourceStop', function(resource)
  if resource == GetCurrentResourceName() then
      ESX.UI.Menu.CloseAll()
  end
end)