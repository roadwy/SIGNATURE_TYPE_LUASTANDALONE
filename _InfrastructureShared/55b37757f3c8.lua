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
L1_1 = nil
if this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].utf8p2
end
if this_sigattrlog[1].matched then
  L1_1 = this_sigattrlog[1].utf8p1
end
if this_sigattrlog[2].matched then
  L1_1 = this_sigattrlog[2].utf8p1
end
if L1_1 ~= nil then
  L1_1 = string.lower(L1_1)
  if string.find(L1_1, ":\\windows\\", 2, true) or string.find(L1_1, "^%%", 0) or string.find(L1_1, "^\\device", 0, false) or string.find(L1_1, ":\\programdata\\", 2, true) or string.find(L1_1, "^:\\users\\.*\\appdata", 2, false) or string.find(L1_1, "\\qtpconfig.blf", 1, true) or string.find(L1_1, ":\\users\\public\\qiyi", 1, true) or string.find(L1_1, "ntuser.dat", 1, true) or string.find(L1_1, ":\\sandbox\\.*\\reghive", 1, false) or string.find(L1_1, ":\\steam", 1, true) or string.find(L1_1, ":\\program files (x86)\\", 2, true) or string.find(L1_1, ":\\program files\\", 2, true) then
    return mp.CLEAN
  end
end
return mp.INFECTED
