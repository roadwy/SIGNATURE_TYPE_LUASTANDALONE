local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p1:lower()
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1:lower()
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1:lower()
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1:lower()
end
if L0_0 == nil or L0_0 == "https://clients2.google.com/service/update2/crx" then
  return mp.CLEAN
end
return mp.INFECTED
