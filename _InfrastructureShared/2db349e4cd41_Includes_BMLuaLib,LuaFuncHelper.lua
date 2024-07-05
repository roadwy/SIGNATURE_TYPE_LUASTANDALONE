local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L1_1 = {
  L2_2,
  L3_3,
  L4_4
}
if L2_2 then
  if L2_2 ~= nil then
    L0_0 = L2_2
  end
end
if L0_0 ~= nil then
  if not L2_2 then
    if not L2_2 then
      for L5_5 = 1, #L1_1 do
        L6_6 = string
        L6_6 = L6_6.find
        L10_10 = true
        L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
        if not L6_6 then
          L6_6 = string
          L6_6 = L6_6.match
          L6_6 = L6_6(L7_7, L8_8)
        elseif L6_6 then
          L6_6 = mp
          L6_6 = L6_6.GetExecutablesFromCommandLine
          L6_6 = L6_6(L7_7)
          for L10_10, L11_11 in L7_7(L8_8) do
            L11_11 = mp.ContextualExpandEnvironmentVariables(L11_11)
            if sysio.IsFileExists(L11_11) and string.lower(L11_11):match("(%w+%.exe)$") ~= nil then
              bm.add_related_file(L11_11)
            end
          end
          return L7_7
        end
      end
    end
  end
end
return L2_2
