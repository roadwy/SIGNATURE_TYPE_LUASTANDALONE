local L0_0, L1_1, L2_2, L3_3, L4_4
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
L2_2 = {L3_3, L4_4}
L3_3 = "/i"
L4_4 = "/package"
L3_3 = contains
L4_4 = L0_0
L3_3 = L3_3(L4_4, L2_2)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  L4_4,
  "EMAILCLIENT"
}
L4_4 = "OFFICE"
L4_4 = {}
L4_4.min = 1
L4_4.max = 5
if QueryProcContext(L3_3, L4_4) then
  L1_1 = true
end
if QueryProcContext({"SCRIPTENG"}, {min = 1, max = 5}) and not contains(L0_0, "%.msi", false) then
  L1_1 = true
end
if L1_1 then
  return mp.INFECTED
end
return mp.CLEAN
