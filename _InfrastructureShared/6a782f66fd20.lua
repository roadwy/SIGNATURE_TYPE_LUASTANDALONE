if peattributes.ismsil and mp.get_mpattribute("LUA:FileSizeLE5000.A") and mp.get_mpattribute("pea_no_security") then
  if pe.get_versioninfo() == nil then
    return mp.CLEAN
  end
  for _FORV_9_ = 1, #{"0.0.0.0"} do
    if pe.get_versioninfo().FileVersion == ({"0.0.0.0"})[_FORV_9_] then
    end
  end
  for _FORV_9_ = 1, #{"0.0.0.0"} do
    if pe.get_versioninfo().ProductVersion == ({"0.0.0.0"})[_FORV_9_] then
    end
  end
  if 0 + 1 + 1 >= 2 and 1 <= 0 + 1 and 1 <= 0 + 1 then
    return mp.INFECTED
  end
end
return mp.CLEAN
