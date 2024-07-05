local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 12000000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
  L1_1 = this_sigattrlog[3].utf8p1
end
if not isLolbinFilename(L1_1) then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine(L0_0)
return mp.INFECTED
