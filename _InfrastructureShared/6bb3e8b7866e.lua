local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.ppid
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.ppid
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.ppid
if L0_0 ~= L1_1 then
  return mp.CLEAN
end
if 2 > #bm.get_process_relationships() then
  return mp.CLEAN
end
if bm.get_process_relationships()[2].ppid ~= L2_2 then
  return mp.CLEAN
end
return mp.INFECTED
