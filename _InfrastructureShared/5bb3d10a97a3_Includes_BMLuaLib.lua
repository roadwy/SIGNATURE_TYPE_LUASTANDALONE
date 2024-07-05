local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.utf8p1
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
    L1_1 = ":\\windows\\system32"
    L2_2 = "%system%\\"
    L3_3 = ":\\windows\\syswow64"
    if string.find(L0_0, L1_1, 2, true) or string.find(L0_0, L2_2, 0, true) or string.find(L0_0, L3_3, 2, true) then
      return mp.CLEAN
    end
    bm.add_related_file(L0_0)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
