if not mp.get_mpattribute("//GIOAVFirstExeInSingleExeZip") then
  if mp.get_mpattribute("//RPF:G_IOAV_SINGLE_EXE_IN_ZIP") then
    mp.set_mpattribute("Lua:IOAVFirstExeInSingleExeZip")
    mp.set_mpattribute("//GIOAVFirstExeInSingleExeZip")
    mp.set_mpattribute("MpNonCachedLowfi")
  elseif mp.UfsGetMetadataBool("Lua:UfsIOAVSingleEXEZip", true) == 0 and mp.UfsGetMetadataBool("Lua:UfsIOAVSingleEXEZip", true) then
    mp.set_mpattribute("Lua:IOAVFirstExeInSingleExeZip")
    mp.set_mpattribute("//GIOAVFirstExeInSingleExeZip")
    mp.set_mpattribute("MpNonCachedLowfi")
  end
end
return mp.CLEAN
