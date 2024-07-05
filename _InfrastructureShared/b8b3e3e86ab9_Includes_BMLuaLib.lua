local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
bm_AddRelatedFileFromCommandLine(L0_0, nil, nil, 1)
return mp.INFECTED
