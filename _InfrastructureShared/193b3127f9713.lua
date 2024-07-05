local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if sysio.IsFileExists(L2_2) then
      bm.add_related_file(L2_2)
    end
  end
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[2].utf8p1)
    L0_0 = L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[3].utf8p2)
    L1_1 = L2_2
  end
end
if L0_0 ~= nil and L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L0_0, L1_1, 1, true)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
