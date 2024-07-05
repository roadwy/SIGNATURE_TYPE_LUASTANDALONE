local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
if L1_1 >= MpCommon.SECURITY_MANDATORY_HIGH_RID then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 ~= nil then
  L1_1 = string.lower(string.sub(L1_1, -21))
  if L1_1 == "\\system32\\svchost.exe" then
    return mp.CLEAN
  end
end
return mp.INFECTED
