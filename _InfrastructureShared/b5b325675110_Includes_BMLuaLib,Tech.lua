local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L5_5 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1())
L1_1 = GetRollingQueueKeyValue
L2_2 = "ExchgVersion"
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = "ExchgVersion"
  L3_3 = 86400
  L4_4 = sysio
  L4_4 = L4_4.RegOpenKey
  L5_5 = "HKLM\\Software\\Microsoft\\ExchangeServer\\V15\\Setup"
  L4_4 = L4_4(L5_5)
  if not L4_4 then
    L5_5 = sysio
    L5_5 = L5_5.RegOpenKey
    L5_5 = L5_5("HKLM\\Software\\Microsoft\\ExchangeServer\\V14\\Setup")
    L4_4 = L5_5
  end
  if not L4_4 then
    L5_5 = bm
    L5_5 = L5_5.add_related_string
    L5_5("ExchgSetupErr", "true", bm.RelatedStringBMReport)
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  end
  L5_5 = sysio
  L5_5 = L5_5.GetRegValueAsString
  L5_5 = L5_5(L4_4, "OwaVersion")
  L5_5 = L5_5 or "nil"
  if L5_5 then
    AppendToRollingQueue(L2_2, L0_0, L5_5, L3_3)
    bm.add_related_string("ExchgVersion", L5_5, bm.RelatedStringBMReport)
  end
else
  L2_2 = bm
  L2_2 = L2_2.add_related_string
  L3_3 = "ExchgVersion"
  L4_4 = L1_1
  L5_5 = bm
  L5_5 = L5_5.RelatedStringBMReport
  L2_2(L3_3, L4_4, L5_5)
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
