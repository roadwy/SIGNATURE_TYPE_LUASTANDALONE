local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -12))
if L0_0 == "\\msiexec.exe" then
  return mp.CLEAN
end
if bm.get_current_process_startup_info().integrity_level >= MpCommon.SECURITY_MANDATORY_HIGH_RID then
  return mp.CLEAN
end
return mp.INFECTED
