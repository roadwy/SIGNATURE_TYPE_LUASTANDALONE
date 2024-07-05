if not mp.get_mpattribute("RPF:TopLevelFile") and string.find(mp.getfilename(), "%(nsis%-") then
  mp.set_mpattribute("LUA:FileInsideNSISInstaller")
end
if (mp.get_mpattribute("HSTR:NSIS_Installer") or mp.get_mpattribute("HSTR:NSIS.gen!A")) and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].RVA == 0 and pehdr.DataDirectory[pe.IMAGE_DIRECTORY_ENTRY_SECURITY].Size == 0 then
  mp.UfsSetMetadataBool("LUA:UFSInsideUnsignedNSIS", true)
elseif not mp.get_mpattribute("RPF:TopLevelFile") and mp.UfsGetMetadataBool("LUA:UFSInsideUnsignedNSIS", true) == 0 and mp.UfsGetMetadataBool("LUA:UFSInsideUnsignedNSIS", true) then
  mp.set_mpattribute("LUA:InsideUnsignedNSIS")
end
if not mp.get_mpattribute("RPF:TopLevelFile") and mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) == 0 and mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) and true then
  mp.set_mpattribute("LUA:InsideSingleNSISInZip")
end
return mp.CLEAN
