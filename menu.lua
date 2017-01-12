function menu()
	image.blit(img_selecteur,90+(selecteur*100)-100,86)
	for i = 1,3 do
		image.blit(img_menu[i],90+(i*100)-100,86)
	end
	
	if buttons.released.right then
		selecteur = selecteur + 1
	end
	if buttons.released.left then
		selecteur = selecteur - 1
	end
	if selecteur > 3 then
		selecteur = 1
	end
	if selecteur < 1 then
		selecteur = 3
	end
	
	if buttons.released.cross then
		if selecteur == 1 then--Choice
			task = 2
		elseif selecteur == 2 then--Credits
			task = 4
		else
			task = 10000
		end
	end
	
end

function menu_os()
	image.blit(img_selecteur,40+(selecteur*100)-100,86)
	for i = 1,4 do
		image.blit(img_os[i],40+(i*100)-100,86)
	end
	
	if buttons.released.right then
		selecteur = selecteur + 1
	end
	if buttons.released.left then
		selecteur = selecteur - 1
	end
	if selecteur > 4 then
		selecteur = 1
	end
	if selecteur < 1 then
		selecteur = 4
	end
	
	if buttons.released.cross then
		if selecteur == 1 then--Windows
			info.os = "windows"
		elseif selecteur == 2 then--Mac
			info.os = "macintosh"
		elseif selecteur == 2 then--Linux
			info.os = "linux"
		else--All
			info.os = "all"
		end
		task = 3
	end
	if buttons.released.circle then
		task = 1
	end
	
end


function menu_icon()
	
	image.blit(img_selecteur,40+(selecteur*100)-100,86)
	for i = 1,4 do
		image.blit(img_icon[i],40+(i*100)-100,86)
	end
	
	if buttons.released.right then
		selecteur = selecteur + 1
	end
	if buttons.released.left then
		selecteur = selecteur - 1
	end
	if selecteur > 4 then
		selecteur = 1
	end
	if selecteur < 1 then
		selecteur = 4
	end
	
	if buttons.released.cross then
		if selecteur == 1 then
			info.icon = "black"
		elseif selecteur == 2 then
			info.icon = "folder"
		elseif selecteur == 3 then
			info.icon = "memory"
		else--Linux
			info.icon = "psp"
		end
		if info.os == "macintosh" then--Macintosh
			macintosh(info.icon)
		elseif info.os == "all" then--Tous OS
			macintosh(info.icon)
			windows_and_linux(info.icon)
		else--Windows et Linux
			windows_and_linux(info.icon)
		end
		suit()
	end
	if buttons.released.circle then
		task = 1
	end
end