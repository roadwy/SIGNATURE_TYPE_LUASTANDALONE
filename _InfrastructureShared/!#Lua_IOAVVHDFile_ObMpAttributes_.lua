if not mp.get_mpattribute("RPF:TopLevelFile") then
  if mp.get_mpattribute("BM_VHD_FILE") then
    if not mp.get_mpattribute("//Lua:GIOAVFirstVHDFileInContainer") then
      mp.set_mpattribute("Lua:IOAVFirstVHDFileInContainer")
      mp.set_mpattribute("//Lua:GIOAVFirstVHDFileInContainer")
    end
  elseif mp.get_mpattribute("Lua:VhdxFile") and not mp.get_mpattribute("//Lua:GIOAVFirstVHDXFileInContainer") then
    mp.set_mpattribute("Lua:IOAVFirstVHDXFileInContainer")
    mp.set_mpattribute("//Lua:GIOAVFirstVHDXFileInContainer")
  end
elseif mp.get_mpattribute("BM_VHD_FILE") then
  mp.set_mpattribute("Lua:IOAVTopLevelVHDFile")
  mp.set_mpattribute("//Lua:GIOAVTopLevelVHDFile")
end
return mp.CLEAN
