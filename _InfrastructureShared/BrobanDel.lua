local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
for L4_4, L5_5 in L1_1(L2_2) do
  if L6_6 == "file" then
    L7_7 = Remediation
    L7_7 = L7_7.Threat
    L7_7 = L7_7.Name
    L8_8 = "JS/BrobanDel"
    if L6_6 then
      L0_0 = L5_5.Path
    end
  end
end
if L0_0 then
  if L2_2 then
    for L7_7, L8_8 in L4_4(L5_5) do
      if L8_8 then
        L9_9 = sysio
        L9_9 = L9_9.GetRegValueAsString
        L9_9 = L9_9(L2_2, L8_8)
        if string.match(L0_0, L9_9) then
          sysio.DeleteRegValue(L2_2, L8_8)
          sysio.DeleteFile(L9_9)
        end
      end
    end
  end
end
if L0_0 and not L1_1 then
  if L2_2 then
    L7_7 = L3_3 - 1
    L5_5(L6_6)
  end
end
