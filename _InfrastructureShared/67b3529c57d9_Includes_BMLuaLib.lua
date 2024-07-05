local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = false
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L3_3 = L2_2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
end
L2_2 = contains
L3_3 = L0_0
L4_4 = "process.*call.*create"
L5_5 = false
L2_2 = L2_2(L3_3, L4_4, L5_5)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L0_0
L4_4 = "/node%s*:([^%s]+).-call create ['\"]([^\r\n]+)['\"]"
L5_5 = L2_2(L3_3, L4_4)
if not L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = {
  "BTS FIX Gateway",
  "besclient",
  "epr.bat",
  "ADSelfService Plus"
}
if contains(L5_5, L6_6) then
  return mp.CLEAN
end
if contains(L5_5, "cmd.*/c", false) and contains(L5_5, {
  " regsvr32",
  " rundll32",
  " wscript",
  " cscript",
  " mshta",
  " bitsadmin"
}) then
  L1_1 = true
end
if L1_1 then
  bm.add_related_string("WMICRemoteNode", tostring(L4_4), bm.RelatedStringBMReport)
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
