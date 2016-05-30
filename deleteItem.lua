--My First Wow Addon 2016-05-14
--Delete a specific item from player inventory without confirmation
--Created from pieces of codes extracted from forums about wow and lua topics
--Actualy is in beta testing phase 

SLASH_DELETEITEM1="/deleteItem"
SlashCmdList["DELETEITEM"] = function(msg)
	for bag=0, NUM_BAG_SLOTS do
		for bagSlots=1, GetContainerNumSlots(bag) do
			local itemlink = GetContainerItemLink(bag, bagSlots)
			local unusedTexture, itemCount = GetContainerItemInfo(bag, bagSlots)
			if (itemlink) then
				for v in string.gmatch(msg, "[^,]+") do
					  if (string.trim(v)==string.trim(itemlink)) then
					  	PickupContainerItem(bag,bagSlots)
						DeleteCursorItem()
					  end
				end
		  	end
		end
	end
end
