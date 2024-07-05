local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L2_2 = L1_1
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = contains
L2_2 = L0_0
L3_3 = "process.*call.*create"
L4_4 = false
L1_1 = L1_1(L2_2, L3_3, L4_4)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "/node%s*:([^%s]+).-call create ['\"]([^\r\n]+)['\"]"
L4_4 = L1_1(L2_2, L3_3)
if not L4_4 then
  return mp.CLEAN
end
if contains(L4_4, "cmd.*/c", false) and contains(L4_4, {
  " powershell"
}) then
  bm.add_related_string("WMICRemoteNode", tostring(L3_3), bm.RelatedStringBMReport)
  bm.add_related_string("WmiprvseRemoteProc", L4_4, bm.RelatedStringBMReport)
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
