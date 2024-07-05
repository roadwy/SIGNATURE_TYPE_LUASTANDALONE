local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = string
L0_0 = L0_0.lower
L1_1 = Remediation
L1_1 = L1_1.Threat
L1_1 = L1_1.Name
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L3_3 = "poshevin%.[af]"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = pcall
  L2_2 = MpCommon
  L2_2 = L2_2.RollingQueueQuery
  L3_3 = "PoshevinRelatedRegistries"
  L2_2 = L1_1(L2_2, L3_3)
  L3_3 = pcall
  L4_4 = MpCommon
  L4_4 = L4_4.RollingQueueQuery
  L4_4 = L3_3(L4_4, L5_5)
  if L1_1 and L2_2 ~= nil then
    if L5_5 == "table" then
      for L8_8 in L5_5(L6_6) do
        L9_9 = string
        L9_9 = L9_9.lower
        L10_10 = tostring
        L11_11 = L2_2[L8_8]
        L11_11 = L11_11.key
        L14_14 = L10_10(L11_11)
        L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L10_10(L11_11))
        L11_11 = L9_9
        L10_10 = L9_9.match
        L12_12 = "(.-\\software\\classes)\\(.*)"
        L11_11 = L10_10(L11_11, L12_12)
        L12_12 = sysio
        L12_12 = L12_12.RegOpenKey
        L13_13 = L10_10
        L12_12 = L12_12(L13_13)
        if L12_12 then
          L13_13 = pcall
          L14_14 = sysio
          L14_14 = L14_14.DeleteRegKey
          L13_13 = L13_13(L14_14, L12_12, L11_11)
          if not L13_13 then
            L14_14 = "hkcu\\software\\classes\\"
            L14_14 = L14_14 .. L11_11
            L13_13 = pcall(Remediation.BtrDeleteRegKey, L14_14)
          end
        end
      end
    end
  end
  if L3_3 and L4_4 ~= nil then
    if L5_5 == "table" then
      for L8_8 in L5_5(L6_6) do
        L9_9 = tostring
        L10_10 = L4_4[L8_8]
        L10_10 = L10_10.key
        L9_9 = L9_9(L10_10)
        if L9_9 then
          L10_10 = sysio
          L10_10 = L10_10.IsFileExists
          L11_11 = L9_9
          L10_10 = L10_10(L11_11)
          if L10_10 then
            L10_10 = sysio
            L10_10 = L10_10.DeleteFile
            L11_11 = L9_9
            L10_10(L11_11)
          end
        else
          L10_10 = "'"
          L11_11 = L9_9
          L12_12 = "'"
          L9_9 = L10_10 .. L11_11 .. L12_12
          L10_10 = sysio
          L10_10 = L10_10.IsFileExists
          L11_11 = L9_9
          L10_10 = L10_10(L11_11)
          if L10_10 then
            L10_10 = sysio
            L10_10 = L10_10.DeleteFile
            L11_11 = L9_9
            L10_10(L11_11)
          else
            L10_10 = pcall
            L11_11 = Remediation
            L11_11 = L11_11.BtrDeleteFile
            L12_12 = L9_9
            L10_10(L11_11, L12_12)
          end
        end
      end
    end
  end
end
