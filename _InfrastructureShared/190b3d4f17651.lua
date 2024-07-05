local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L1_1 = "Behavior:Win32/BlockMpTamper"
L0_0 = L0_0(L1_1)
L1_1 = #L0_0
if L1_1 == 0 or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = "Behavior:Win32/ShadowCopyDelete"
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.enum_mpattributesubstring
L3_3 = "Behavior:Win32/RunsBcdedit"
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.enum_mpattributesubstring
L4_4 = "Behavior:Win32/StartupRepair"
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.enum_mpattributesubstring
L4_4 = L4_4(L5_5)
if not (L5_5 > 0) then
elseif L5_5 > 0 then
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = bm
    L10_10 = L10_10.add_related_string
    L10_10(L11_11, L12_12, L13_13)
  end
  for L9_9 = 1, L7_7.SIGATTR_LOG_SZ do
    L10_10 = sigattr_tail
    L10_10 = L10_10[L9_9]
    L10_10 = L10_10.matched
    if L10_10 then
      L10_10 = sigattr_tail
      L10_10 = L10_10[L9_9]
      L10_10 = L10_10.attribute
      if L10_10 == 16393 then
        L10_10 = sigattr_tail
        L10_10 = L10_10[L9_9]
        if L5_5 ~= nil then
          L10_10 = mp
          L10_10 = L10_10.GetExecutablesFromCommandLine
          L10_10 = L10_10(L11_11)
          if L10_10 ~= nil then
            if L11_11 > 0 then
              for L14_14, L15_15 in L11_11(L12_12) do
                L15_15 = mp.ContextualExpandEnvironmentVariables(L15_15)
                if sysio.IsFileExists(L15_15) then
                  bm.add_related_file(L15_15)
                end
              end
            end
          end
        end
      end
    end
  end
  return L6_6
end
return L5_5
