local L0_0, L1_1, L2_2, L3_3
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L2_2 = L3_3.utf8p2
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L0_0 = L3_3.ppid
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L1_1 = L3_3.utf8p2
end
if not L0_0 or not L1_1 or not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L3_3 = L3_3(L2_2, "/([^/]+)$")
if not L3_3 then
  return mp.CLEAN
end
if string.find(L1_1, L3_3, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
