if mp.ispackedwith("Aspack+") then
  mp.set_mpattribute("Lua:FileIsPackedWithAspack")
elseif mp.ispackedwith("ASProtect+") then
  mp.set_mpattribute("Lua:FileIsPackedWithASProtect")
elseif mp.ispackedwith("FSG+") then
  mp.set_mpattribute("Lua:FileIsPackedWithFSG")
elseif mp.ispackedwith("PECompact+") then
  mp.set_mpattribute("Lua:FileIsPackedWithPECompact")
elseif mp.ispackedwith("Petite+") then
  mp.set_mpattribute("Lua:FileIsPackedWithPetite")
elseif mp.ispackedwith("EZip+") then
  mp.set_mpattribute("Lua:FileIsPackedWithEZip")
elseif mp.ispackedwith("Exe32Pack+") then
  mp.set_mpattribute("Lua:FileIsPackedWithExe32Pack")
elseif mp.get_mpattribute("RPF:TopLevelFile") and (mp.ispackedwith("AutoIt+") or mp.get_mpattributesubstring("Win32/AutoIt") or mp.get_mpattributesubstring("PESTATIC:cleanstub_autoitv")) then
  mp.set_mpattribute("Lua:FileIsPackedWithAutoIt")
elseif mp.ispackedwith("AutoHotKey+") then
  mp.set_mpattribute("Lua:FileIsPackedWithAutoHotKey")
elseif mp.ispackedwith("RAR+") then
  mp.set_mpattribute("Lua:FileIsPackedWithRarSfx")
elseif mp.ispackedwith("WinZipSfx+") or mp.ispackedwith("ZipSfx+") then
  mp.set_mpattribute("Lua:FileIsPackedWithZipSfx")
elseif mp.ispackedwith("CabSfx+") or mp.ispackedwith("SfxCab+") or mp.get_mpattribute("//Sfx_Installer") then
  mp.set_mpattribute("Lua:FileIsPackedWithCabSfx")
elseif mp.ispackedwith("NSIS+") then
  mp.set_mpattribute("Lua:FileIsPackedWithNSIS")
end
return mp.CLEAN
