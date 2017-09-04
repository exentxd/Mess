local NEW_MAX_OF_LERP = 0.99

local New_Detection_Risk_outfit_string = BlackMarketManager.get_suspicion_offset_of_outfit_string
local New_Detection_Risk_peer = BlackMarketManager.get_suspicion_offset_of_peer
local New_Detection_Risk_local = BlackMarketManager.get_suspicion_offset_of_local
local New_Detection_Risk_from_custom_data = BlackMarketManager.get_suspicion_offset_from_custom_data

function BlackMarketManager:get_suspicion_offset_of_outfit_string(outfit_string, lerp)
	return New_Detection_Risk_outfit_string(self, outfit_string, NEW_MAX_OF_LERP)
end
function BlackMarketManager:get_suspicion_offset_of_peer(peer, lerp)
	return New_Detection_Risk_peer(self, peer, NEW_MAX_OF_LERP)
end
function BlackMarketManager:get_suspicion_offset_of_local(lerp, ignore_armor_kit)
	return New_Detection_Risk_local(self, NEW_MAX_OF_LERP, ignore_armor_kit)
end
function BlackMarketManager:get_suspicion_offset_from_custom_data(data, lerp)
	return New_Detection_Risk_from_custom_data(self, data, NEW_MAX_OF_LERP)
end