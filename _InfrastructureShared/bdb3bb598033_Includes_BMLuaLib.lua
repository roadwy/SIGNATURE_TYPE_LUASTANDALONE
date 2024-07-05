local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
end
if L0_0 ~= nil then
  bm_AddRelatedFileFromCommandLine(L0_0)
end
return mp.INFECTED
