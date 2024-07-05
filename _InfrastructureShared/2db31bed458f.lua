local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = nil
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "-k"
  L4_4 = 1
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "UnistackSvcGroup"
    L4_4 = 1
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = bm
  L1_1 = L1_1.get_imagepath
  L1_1 = L1_1()
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L1_1
    L4_4 = L3_3(L4_4, L5_5)
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L3_3(L4_4, L5_5))
    if L2_2 == ".dll" then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
  L2_2 = bm
  L2_2 = L2_2.get_current_process_startup_info
  L2_2 = L2_2()
  L3_3 = L2_2.integrity_level
  L4_4 = MpCommon
  L4_4 = L4_4.SECURITY_MANDATORY_SYSTEM_RID
  if L3_3 < L4_4 then
    L3_3 = bm
    L3_3 = L3_3.get_process_relationships
    L4_4 = L3_3()
    for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
      if _FORV_9_.image_path ~= nil and mp.bitand(_FORV_9_.reason_ex, 1) == 1 and string.find(_FORV_9_.image_path, "windows\\system32\\svchost.exe", 1, true) then
        return mp.CLEAN
      end
    end
    return L5_5
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
