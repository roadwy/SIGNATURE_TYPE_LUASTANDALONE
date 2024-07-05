local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = mp
L1_1 = L1_1.IsKnownFriendlyFile
L2_2 = L0_0
L3_3 = true
L1_1 = L1_1(L2_2, L3_3, false)
if L1_1 ~= true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L2_2 = L3_3.utf8p1
  end
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L2_2)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.sub
L3_3 = L3_3(L0_0, -#L2_2)
if L3_3 ~= L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p2
    if sysio.IsFileExists(L3_3) then
      bm.add_related_file(L3_3)
    end
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
