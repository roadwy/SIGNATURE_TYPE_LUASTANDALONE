local L0_0, L1_1, L2_2, L3_3
L2_2 = this_sigattrlog
L2_2 = L2_2[7]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[7]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[7]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[9]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[9]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[9]
    L3_3 = L3_3.utf8p2
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[10]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[10]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = this_sigattrlog
      L3_3 = L3_3[10]
      L3_3 = L3_3.utf8p2
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
    end
  end
end
L2_2 = GetFileName
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {"bedvitcom"}
if contains(L2_2, L3_3) then
  return mp.CLEAN
end
if contains(L1_1, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
