local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.QuerySessionInformation
L2_2 = L0_0.ppid
L3_3 = MpCommon
L3_3 = L3_3.WTSIsRemoteSession
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L2_2 = mp
  L2_2 = L2_2.ContextualExpandEnvironmentVariables
  L3_3 = "%localappdata%"
  L2_2 = L2_2(L3_3)
  L3_3 = sysio
  L3_3 = L3_3.GetFsOwnerSidString
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  L4_4 = 1
  L5_5 = sysio
  L5_5 = L5_5.RegExpandUserKey
  L5_5 = L5_5(L6_6)
  if L5_5 then
    for L9_9, L10_10 in L6_6(L7_7) do
      if #L10_10 > 23 and not string.find(L10_10, "-5..\\", -13) and not string.find(L10_10, L3_3, 6, true) then
        L4_4 = L4_4 + 1
        break
      end
    end
  end
  if L4_4 > 1 then
    if L7_7 then
      L9_9 = L7_7
      L10_10 = "InstallDate"
      if not L8_8 then
        L9_9 = sysio
        L9_9 = L9_9.GetRegValueAsDword
        L10_10 = L7_7
        L9_9 = L9_9(L10_10, "InstallTime")
        if L8_8 then
          L9_9 = L8_8 / 10000000
        end
      end
      if L8_8 then
        L9_9 = MpCommon
        L9_9 = L9_9.GetCurrentTimeT
        L9_9 = L9_9()
        if not (L8_8 > L9_9) then
          L10_10 = L9_9 - L8_8
        elseif L10_10 > 86400 then
          L10_10 = MpCommon
          L10_10 = L10_10.QuerySessionInformation
          L10_10 = L10_10(L0_0.ppid, MpCommon.WTSUserName)
          MpCommon.AppendPersistContextNoPath("MpNewRemoteUsers", L10_10, 43200)
        end
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
