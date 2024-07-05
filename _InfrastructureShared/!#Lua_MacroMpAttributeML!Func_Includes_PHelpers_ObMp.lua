local L0_0
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L0_0 = L0_0(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if L0_0 == nil then
  return mp.CLEAN
end
if true == IsInternetCache(L0_0) or true == IsLowConfNPath(L0_0) then
  return mp.CLEAN
end
if L0_0:find("\\storage\\", 1, true) or L0_0:find("\\application data\\assistant\\templates\\", 1, true) or L0_0:find("\\backup\\", 1, true) then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:MacroXMpAttributeML")
return mp.CLEAN
