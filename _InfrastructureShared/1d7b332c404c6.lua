local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0(L1_1)
if L1_1 == 0 or L0_0 == nil then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = bm
  L6_6 = L6_6.add_related_string
  L6_6(L7_7, L8_8, L9_9)
end
for L5_5 = 1, L3_3.SIGATTR_LOG_SZ do
  L6_6 = sigattr_tail
  L6_6 = L6_6[L5_5]
  L6_6 = L6_6.matched
  if L6_6 then
    L6_6 = sigattr_tail
    L6_6 = L6_6[L5_5]
    L6_6 = L6_6.attribute
    if L6_6 == 16393 then
      L6_6 = sigattr_tail
      L6_6 = L6_6[L5_5]
      if L1_1 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.GetExecutablesFromCommandLine
        L6_6 = L6_6(L7_7)
        if L6_6 ~= nil then
          if L7_7 > 0 then
            for L10_10, L11_11 in L7_7(L8_8) do
              L11_11 = mp.ContextualExpandEnvironmentVariables(L11_11)
              if sysio.IsFileExists(L11_11) then
                bm.add_related_file(L11_11)
              end
            end
          end
        end
      end
    end
  end
end
return L2_2
