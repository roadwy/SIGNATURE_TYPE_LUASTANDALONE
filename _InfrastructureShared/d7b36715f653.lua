local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p2
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p2
end
if L0_0 and (string.find(L0_0, "-U ", 1, true) or string.find(L0_0, "--user=", 1, true) or string.find(L0_0, "--runas", 1, true) or string.find(L0_0, "-A ", 1, true) or string.find(L0_0, "--authentication-file=", 1, true)) and string.match(L0_0, "//%d+%.%d+%.%d+%.%d+") then
  return mp.INFECTED
end
return mp.CLEAN
