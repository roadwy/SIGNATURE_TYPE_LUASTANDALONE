local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(string.sub(L0_0, -12))
  if L0_0 == "\\svchost.exe" and bm.get_current_process_startup_info().integrity_level > MpCommon.SECURITY_MANDATORY_MEDIUM_RID then
    return mp.CLEAN
  end
end
return mp.INFECTED
