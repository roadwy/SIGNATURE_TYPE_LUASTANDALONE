if mp.get_mpattribute("//Lua:GIOAVTopLevelUDFFile") and not mp.get_mpattribute("RPF:TopLevelFile") and not mp.get_mpattribute("//GIOAVFirstPEInTopLevelUDFFile") then
  mp.set_mpattribute("Lua:IOAVFirstPEInTopLevelUDFFile")
  mp.set_mpattribute("//GIOAVFirstPEInTopLevelUDFFile")
  mp.set_mpattribute("MpNonCachedLowfi")
end
if mp.get_mpattribute("//Lua:GIOAVFirstUDFFileInContainer") and not mp.get_mpattribute("RPF:TopLevelFile") and not mp.get_mpattribute("//GIOAVFirstPEInUDFFileInContainer") and (string.lower(mp.getfilename()):find(".iso->", 1, true) or string.lower(mp.getfilename()):find(".img->", 1, true)) then
  mp.set_mpattribute("Lua:IOAVFirstPEInUDFFileInContainer")
  mp.set_mpattribute("//GIOAVFirstPEInUDFFileInContainer")
  mp.set_mpattribute("MpNonCachedLowfi")
end
return mp.CLEAN
