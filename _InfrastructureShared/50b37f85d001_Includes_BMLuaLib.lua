local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  bm_AddRelatedFileFromCommandLine(L0_0, nil, nil, 1)
end
return mp.INFECTED
