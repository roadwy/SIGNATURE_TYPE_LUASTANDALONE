local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(string.sub(L0_0, -18))
  if string.find(L0_0, "\\werfault.exe", 1, true) or string.find(L0_0, "\\wmiprvse.exe", 1, true) then
    return mp.CLEAN
  end
end
if bm.get_current_process_startup_info().integrity_level >= MpCommon.SECURITY_MANDATORY_HIGH_RID then
  return mp.CLEAN
end
return mp.INFECTED
