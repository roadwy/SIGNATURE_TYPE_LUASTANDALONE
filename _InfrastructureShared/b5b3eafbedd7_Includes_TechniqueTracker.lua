local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L0_0 = L2_2.utf8p2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L1_1 = L2_2.utf8p2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L1_1 = L2_2.utf8p2
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[7]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[7]
      L1_1 = L2_2.utf8p2
    end
  end
end
if L0_0 ~= nil and L1_1 ~= nil then
  L2_2 = L1_1.match
  L2_2 = L2_2(L1_1, "+x [\"]*([^\"]+)")
  if L2_2 == nil or L2_2 == "" then
    L2_2 = L1_1:match("777 [\"]*([^\"]+)")
  end
  if L2_2 == nil or L2_2 == "" then
    L2_2 = L1_1:match("755 [\"]*([^\"]+)")
  end
  if L2_2 ~= nil and L2_2 ~= "" and string.find(L0_0, L2_2, 1, true) then
    TrackPidAndTechniqueBM("BM", "T1222.002", "DefenseEvasion_FileAndDirectoryPermissionsModification_Curl")
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
