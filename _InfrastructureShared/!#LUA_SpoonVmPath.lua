local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_FILEPATH)
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if string.find(L0_0, "\\spoon\\sandbox\\", 1, true) ~= nil or string.find(L0_0, "\\xenocode\\sandbox\\", 1, true) ~= nil or string.find(L0_0, "\\local\\stubexe\\", 1, true) ~= nil then
  mp.set_mpattribute("LUA:SpoonVmPath")
end
return mp.CLEAN
