local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Name
L1_1 = string
L1_1 = L1_1.find
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 then
  L1_1 = MpCommon
  L1_1 = L1_1.GetPersistContextNoPath
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = string
    L7_7 = L7_7.match
    L8_8 = L6_6
    L7_7 = L7_7(L8_8, "(.*)\\\\")
    L8_8 = sysio
    L8_8 = L8_8.RegOpenKey
    L8_8 = L8_8(L7_7)
    if L8_8 ~= nil then
      sysio.DeleteRegKey(L8_8, nil)
    end
  end
end
