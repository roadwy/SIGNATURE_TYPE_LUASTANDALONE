local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(string.sub(L0_0, -13))
  L0_0 = L1_1
  if L0_0 == "\\wmiprvse.exe" then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = nil
if this_sigattrlog[1].matched then
  L1_1 = this_sigattrlog[1].np2
end
if L1_1 == nil or mp.bitand(L1_1, 42) == 0 then
  return mp.CLEAN
end
if bm.get_current_process_startup_info().integrity_level > MpCommon.SECURITY_MANDATORY_MEDIUM_RID then
  return mp.CLEAN
end
return mp.INFECTED
