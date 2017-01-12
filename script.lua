splash.show()
if files.exists("ms0:/PSP") then
	m = "ms0:" 
else
	m = "ef0:"
end
langage = os.language()
dofile("lang.lua")
dofile("engine.lua")
dofile("menu.lua")
img_menu = {image.load("img/go.png"),image.load("img/credits.png"),image.load("img/quit.png")}
img_selecteur = image.load("img/selecteur.png")
img_zenyth = image.load("img/zenyth.png")
img_ctp = image.load("img/ctp.png")
img_os = {image.load("img/windows.png"),image.load("img/macintosh.png"),image.load("img/linux.png"),image.load("img/all.png")}
img_icon = {image.load("icon/png/black.png"),image.load("icon/png/folder.png"),image.load("icon/png/memory.png"),image.load("icon/png/psp.png")}
--Background
bg = {image.load("img/bg/1.png"),image.load("img/bg/2.png"),image.load("img/bg/3.png")}--Fond d'écran
bg_x = -480
task = 1
selecteur = 1
info = {os = "",icon = ""}
splash.show("img/cp.png")
step_nav = 1

while true do
	buttons.read()
	background()
	if task == 1 then
		menu()
	elseif task == 2 then
		menu_os()
	elseif task == 3 then
		menu_icon()
	elseif task == 4 then
		os.message(l_credits.."\n\n1.00")
		task = 1
	else
		os.exit()
	end
	screen.flip()--Nettoyage de l'écran
end
