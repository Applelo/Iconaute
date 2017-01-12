function windows_and_linux(icono)
	

	if files.exists(m.."/icon.ico") then--Supprime l'icone si il existe
		files.nofile(m.."/icon.ico")
	end
	
	files.copy("icon/windows/"..icono..".ico",m.."/icon.ico")--copie l'icone
	ini.write(m.."/autorun.inf","autorun","ICON","icon.ico")--On écrit 
	
end

function macintosh(icono)
	
	if files.exists(m.."/.VolumeIcon.icns") then
		files.nofile(m.."/.VolumeIcon.icns")
	end
	files.copy("icon/macintosh/"..icono..".icns",m.."/.VolumeIcon.icns")--copie l'icone
	
end


function suit()
	result = os.message(l_usb,1)--Demande si on veut activer l'USB
	if result == 1 then
		usb.mstick()--active l'USB	
	end
	
	
	quity = os.message(l_quit,1)--Demande si on veut retourner au menu principal ou quitter
	if quity == 1 then
		task = 10000
	else
		task = 1 -- retour au menu
	end
end

function background()
	
	for i=1,3 do
		image.blit(bg[i],bg_x+(480*i),0)
	end
	image.blit(bg[1],bg_x+(480*4),0)
	bg_x = bg_x-0.8
	if bg_x < -1920 then
		bg_x = -480
	end
	if task == 4 then
		image.reset(img_zenyth)
		image.reset(img_ctp)
		image.blit(img_zenyth,336,162)	
	else
		image.resize(img_zenyth,60,45)
		image.resize(img_ctp,100,32)
		image.blit(img_zenyth,410,217)
	end
	image.blit(img_ctp,10,10)
end