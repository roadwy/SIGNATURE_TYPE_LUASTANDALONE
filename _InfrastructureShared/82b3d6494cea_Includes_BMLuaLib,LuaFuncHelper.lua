local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = L6_6.image_path
  if L7_7 ~= nil then
    L7_7 = L6_6.ppid
    if L7_7 ~= nil then
      L7_7 = MpCommon
      L7_7 = L7_7.IsFriendlyProcess
      L8_8 = L6_6.ppid
      L7_7 = L7_7(L8_8)
      if not L7_7 then
        L7_7 = 1
        L8_8 = mp
        L8_8 = L8_8.bitand
        L9_9 = L6_6.reason_ex
        L10_10 = L7_7
        L8_8 = L8_8(L9_9, L10_10)
        if L8_8 == L7_7 then
          L9_9 = L6_6.image_path
          L10_10 = L6_6.ppid
          L11_11 = L6_6.cmd_line
          L11_11 = L11_11 or ""
          L12_12 = MpCommon
          L12_12 = L12_12.Base64Encode
          L13_13 = L9_9
          L14_14 = "|"
          L13_13 = L13_13 .. L14_14 .. L11_11
          L12_12 = L12_12(L13_13)
          L13_13 = ";"
          L14_14 = L10_10
          L12_12 = L12_12 .. L13_13 .. L14_14
          L13_13 = "RemoteInvocation:WMI|"
          L14_14 = MpCommon
          L14_14 = L14_14.Base64Encode
          L14_14 = L14_14(L9_9)
          L13_13 = L13_13 .. L14_14
          L14_14 = reportSessionInformationInclusive
          L14_14 = L14_14()
          AppendToRollingQueue(L13_13, L10_10, safeJsonSerialize(L14_14), 3600, 100, 1)
          recursiveTriggerSig("RemoteInvocation:WMI", L12_12, L10_10, 0)
        end
      end
    end
  end
end
L2_2()
L2_2()
L2_2(L3_3)
return L2_2
