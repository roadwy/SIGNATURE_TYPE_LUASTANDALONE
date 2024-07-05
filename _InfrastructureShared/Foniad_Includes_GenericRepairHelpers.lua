local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SOFTWARE\\Policies\\Google\\Chrome"
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsString
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= nil then
    L2_2(L3_3, L4_4)
  end
end
L1_1 = sysio
L1_1 = L1_1.RegOpenKey
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 then
  L1_1 = sysio
  L1_1 = L1_1.RegEnumValues
  L1_1 = L1_1(L2_2)
  if L1_1 then
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = sysio
      L7_7 = L7_7.GetRegValueAsString
      L7_7 = L7_7(L0_0, L6_6)
      if L7_7 and string.find(L7_7, "https://.+%.info") then
        sysio.DeleteRegValue(L0_0, L6_6)
      end
    end
  end
end
