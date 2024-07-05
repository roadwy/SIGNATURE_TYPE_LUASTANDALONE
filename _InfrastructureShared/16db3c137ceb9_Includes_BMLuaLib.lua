local L0_0
if this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
elseif this_sigattrlog[5].matched then
  L0_0 = string.lower(this_sigattrlog[5].utf8p1)
elseif this_sigattrlog[6].matched then
  L0_0 = string.lower(this_sigattrlog[6].utf8p1)
end
if L0_0 ~= nil and IsExchangeServer() == nil then
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
