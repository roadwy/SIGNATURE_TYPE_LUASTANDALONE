local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
end
if string.match(L0_0, "[a-zA-Z_]+[a-zA-Z0-9_]*=") then
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
