local gatepos = {x = 902, y = 876, z = 15, stackpos=1}

function onUse(cid, item, frompos, item2, topos)

local getgate = getThingfromPos(gatepos)
	if item.itemid == 1945 and getgate.itemid == 1355 then
		doRemoveItem(getgate.uid, 1)
		doTransformItem(item.uid, item.itemid+1)
	elseif item.itemid == 1946 and getgate.itemid == 0 then
		doCreateItem(1355, 1, gatepos)
		doTransformItem(item.uid, item.itemid-1)
	else
		doPlayerSendCancel(cid,"Sorry, not possible.")
	end
return 1
end