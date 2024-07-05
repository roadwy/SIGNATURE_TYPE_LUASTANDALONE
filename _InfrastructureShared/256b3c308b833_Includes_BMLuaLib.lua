local L0_0
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
end
if not L0_0 then
  return mp.CLEAN
end
L0_0 = string.match(L0_0:lower(), "\\(mpksl[%w]+)")
if getService(L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
