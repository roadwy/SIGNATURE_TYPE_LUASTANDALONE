local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p2
end
if L0_0 ~= nil and (string.match(L0_0, "-[is] [^\\]+\\ ") or string.match(L0_0, "-[is] [^\\]+\\$")) then
  return mp.INFECTED
end
return mp.CLEAN
