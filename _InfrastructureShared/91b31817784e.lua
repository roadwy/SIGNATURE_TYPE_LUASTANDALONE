local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
elseif this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
elseif this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p1)
elseif this_sigattrlog[4].matched then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
elseif this_sigattrlog[5].matched then
  L0_0 = string.lower(this_sigattrlog[5].utf8p1)
elseif this_sigattrlog[6].matched then
  L0_0 = string.lower(this_sigattrlog[6].utf8p1)
elseif this_sigattrlog[7].matched then
  L0_0 = string.lower(this_sigattrlog[7].utf8p1)
end
if L0_0 ~= nil and (string.sub(L0_0, 0, 5) == "/bin/" or string.sub(L0_0, 0, 9) == "/usr/bin/") then
  return mp.CLEAN
end
return mp.INFECTED
