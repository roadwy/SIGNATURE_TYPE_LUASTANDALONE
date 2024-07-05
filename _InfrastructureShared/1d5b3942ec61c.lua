local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
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
  L2_2 = MpCommon
  L2_2 = L2_2.QuerySessionInformation
  L3_3 = L0_0.ppid
  L4_4 = MpCommon
  L4_4 = L4_4.WTSUserName
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = bm
  L3_3 = L3_3.get_imagepath
  L3_3 = L3_3()
  L4_4 = "SuspTool_"
  L5_5 = L2_2
  L4_4 = L4_4 .. L5_5
  L5_5 = MpCommon
  L5_5 = L5_5.QueryPersistContextNoPath
  L6_6 = L4_4
  L7_7 = L3_3
  L5_5 = L5_5(L6_6, L7_7)
  if not L5_5 then
    L6_6 = MpCommon
    L6_6 = L6_6.AppendPersistContextNoPath
    L7_7 = L4_4
    L8_8 = L3_3
    L6_6(L7_7, L8_8, L9_9)
  end
  L6_6 = MpCommon
  L6_6 = L6_6.GetPersistContextCountNoPath
  L7_7 = L4_4
  L6_6 = L6_6(L7_7)
  if L6_6 > 2 then
    L7_7 = MpCommon
    L7_7 = L7_7.QuerySessionInformation
    L8_8 = L0_0.ppid
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = bm
    L8_8 = L8_8.add_related_string
    L8_8(L9_9, L10_10, L11_11)
    L8_8 = MpCommon
    L8_8 = L8_8.GetPersistContextNoPath
    L8_8 = L8_8(L9_9)
    if L8_8 then
      for L12_12, L13_13 in L9_9(L10_10) do
        bm.add_related_file(L13_13)
      end
      return L9_9
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
