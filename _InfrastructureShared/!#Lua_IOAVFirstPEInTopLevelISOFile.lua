if mp.get_mpattribute("//Lua:GIOAVTopLevelISOFile") and not mp.get_mpattribute("RPF:TopLevelFile") and not mp.get_mpattribute("//GIOAVFirstPEInTopLevelISOFile") then
  mp.set_mpattribute("Lua:IOAVFirstPEInTopLevelISOFile")
  mp.set_mpattribute("//GIOAVFirstPEInTopLevelISOFile")
  mp.set_mpattribute("MpNonCachedLowfi")
end
if mp.get_mpattribute("//Lua:GIOAVFirstISOFileInContainer") and not mp.get_mpattribute("RPF:TopLevelFile") and not mp.get_mpattribute("//GIOAVFirstPEInISOFileInContainer") and (string.lower(mp.getfilename()):find(".iso->", 1, true) or string.lower(mp.getfilename()):find(".img->", 1, true)) then
  mp.set_mpattribute("Lua:IOAVFirstPEInISOFileInContainer")
  mp.set_mpattribute("//GIOAVFirstPEInISOFileInContainer")
  mp.set_mpattribute("MpNonCachedLowfi")
end
return mp.CLEAN
