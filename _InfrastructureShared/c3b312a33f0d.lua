local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
L2_2 = MpCommon
L2_2 = L2_2.SECURITY_MANDATORY_MEDIUM_RID
if L1_1 <= L2_2 then
  L1_1 = MpCommon
  L1_1 = L1_1.GetProcessElevationAndIntegrityLevel
  L2_2 = L0_0.ppid
  L1_1 = L1_1(L2_2)
  L2_2 = L1_1.IntegrityLevel
  if L2_2 > L3_3 then
    L2_2 = nil
    for L6_6 = 1, L4_4.SIGATTR_LOG_SZ do
      L7_7 = sigattr_tail
      L7_7 = L7_7[L6_6]
      L7_7 = L7_7.matched
      if L7_7 then
        L7_7 = sigattr_tail
        L7_7 = L7_7[L6_6]
        L7_7 = L7_7.attribute
        if L7_7 == 16393 then
          L7_7 = sigattr_tail
          L7_7 = L7_7[L6_6]
          L2_2 = L7_7.utf8p2
          if L2_2 ~= nil then
            L7_7 = mp
            L7_7 = L7_7.GetExecutablesFromCommandLine
            L7_7 = L7_7(L8_8)
            for L11_11, L12_12 in L8_8(L9_9) do
              L12_12 = mp.ContextualExpandEnvironmentVariables(L12_12)
              if sysio.IsFileExists(L12_12) then
                bm.add_related_file(L12_12)
              end
            end
          end
        end
      end
    end
    if L3_3 then
      if L3_3 ~= nil then
        L2_2 = L3_3.utf8p2
      end
    elseif L3_3 then
      if L3_3 ~= nil then
        L2_2 = L3_3.utf8p2
      end
    end
    if L2_2 ~= nil then
      for L7_7, L8_8 in L4_4(L5_5) do
        if L9_9 then
          L11_11 = 2668059089
          L9_9(L10_10, L11_11)
        end
      end
    end
    return L3_3
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
