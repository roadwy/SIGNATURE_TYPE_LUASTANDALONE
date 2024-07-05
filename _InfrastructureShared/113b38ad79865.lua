local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = L0_0.find
  L2_2 = L0_0
  L3_3 = "\\clicktorun\\officeclicktorun.exe"
  L1_1 = L1_1(L2_2, L3_3, 1, true)
  if L1_1 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p2
    if sysio.IsFileExists(L3_3) then
      if mp.IsKnownFriendlyFile(L3_3, true, false) == true then
        return mp.CLEAN
      end
      bm.add_related_file(L3_3)
    end
  end
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(this_sigattrlog[1].utf8p1)
    L1_1 = L3_3
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(this_sigattrlog[2].utf8p2)
    L2_2 = L3_3
  end
end
if L1_1 ~= nil and L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L1_1, L2_2, 1, true)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
