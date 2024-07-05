local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_SYSTEM_RID
if L1_1 >= L2_2 then
  L1_1 = nil
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L1_1 = L2_2.utf8p2
    end
  end
  if L1_1 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.GetExecutablesFromCommandLine
    L2_2 = L2_2(L3_3)
    for L6_6, L7_7 in L3_3(L4_4) do
      L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
      if sysio.IsFileExists(L7_7) == true then
        bm.add_related_file(L7_7)
      end
    end
  end
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
