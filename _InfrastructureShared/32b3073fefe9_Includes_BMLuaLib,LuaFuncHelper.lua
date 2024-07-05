local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    L2_2 = L0_0
    L1_1 = L0_0.match
    L3_3 = "(%d+);(%w+);(%w+)"
    L3_3 = L1_1(L2_2, L3_3)
    L4_4 = bm
    L4_4 = L4_4.add_related_string
    L4_4(L5_5, L6_6, L7_7)
    L4_4 = bm
    L4_4 = L4_4.add_related_string
    L4_4(L5_5, L6_6, L7_7)
    L4_4 = GetRollingQueue
    L4_4 = L4_4(L5_5)
    L8_8 = L4_4
    L8_8 = bm
    L8_8 = L8_8.RelatedStringBMReport
    L5_5(L6_6, L7_7, L8_8)
    for L8_8, L9_9 in L5_5(L6_6) do
      L10_10 = safeJsonDeserialize
      L11_11 = L9_9.key
      L10_10 = L10_10(L11_11)
      L11_11 = L10_10.procInfo
      if not L11_11 then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L11_11 = L10_10.procInfo
      L12_12 = L11_11.shellScripts
      if L12_12 then
        L12_12 = L11_11.shellScripts
        for L16_16, L17_17 in L13_13(L14_14) do
          L18_18 = mp
          L18_18 = L18_18.ContextualExpandEnvironmentVariables
          L19_19 = L17_17
          L18_18 = L18_18(L19_19)
          if L18_18 then
            L19_19 = bm
            L19_19 = L19_19.add_threat_file
            L19_19(L18_18)
          end
        end
      end
      L12_12 = L10_10.parents
      if L12_12 then
        L12_12 = L10_10.parents
        if L13_13 then
          for L17_17, L18_18 in L14_14(L15_15) do
            L19_19 = mp
            L19_19 = L19_19.ContextualExpandEnvironmentVariables
            L19_19 = L19_19(L18_18)
            if L19_19 then
              bm.add_threat_file(L19_19)
            end
          end
        end
      end
    end
  end
end
L0_0 = reportSessionInformationInclusive
L0_0()
L0_0 = reportRelevantUntrustedEntities
L1_1 = 0
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
