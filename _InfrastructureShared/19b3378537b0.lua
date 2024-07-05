local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = nil
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
  if L0_0 == nil or L0_0 == "" then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "-k"
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "UnistackSvcGroup"
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = bm
  L1_1 = L1_1.get_current_process_startup_info
  L1_1 = L1_1()
  L2_2 = L1_1.integrity_level
  L3_3 = MpCommon
  L3_3 = L3_3.SECURITY_MANDATORY_SYSTEM_RID
  if L2_2 < L3_3 then
    L2_2 = bm
    L2_2 = L2_2.get_process_relationships
    L3_3 = L2_2()
    for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
      if _FORV_8_.image_path ~= nil and mp.bitand(_FORV_8_.reason_ex, 1) == 1 and string.find(_FORV_8_.image_path, "windows\\system32\\svchost.exe", 1, true) then
        return mp.CLEAN
      end
    end
    return L4_4
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
