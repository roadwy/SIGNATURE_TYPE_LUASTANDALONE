local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p2
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p2
    end
  end
end
L1_1 = false
if L0_0 == "THREAT" then
  L1_1 = true
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L2_2 = L2_2(bm.get_imagepath())
if L2_2 == nil then
  return mp.CLEAN
end
if sysio.IsPathAVExcluded(L2_2, false) == true then
  bm.add_related_string("isBMConcrete", tostring(L1_1), bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
