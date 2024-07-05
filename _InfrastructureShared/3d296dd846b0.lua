local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "MpIsPowerShellAMSIScan"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = ""
L2_2 = L0_0.is_header
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = tostring
  L3_3 = L3_3(headerpage)
  L2_2 = L2_2(L3_3, L3_3(headerpage))
  L1_1 = L2_2
else
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = tostring
  L3_3 = L3_3(footerpage)
  L2_2 = L2_2(L3_3, L3_3(footerpage))
  L1_1 = L2_2
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "(?:set|add)-mppreference\\s+-exclusionpath\\s+[\"']?c:\\\\+programdata\\\\*?%?[\"']?(?:[\\s;]|$)"
L3_3 = false
L3_3, _ = MpCommon.StringRegExpSearch(L2_2, L1_1)
if L3_3 == false then
  return mp.CLEAN
end
return mp.INFECTED
