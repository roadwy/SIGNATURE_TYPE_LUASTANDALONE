local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if contains(L0_0, "&#x09;") then
  return mp.INFECTED
end
return mp.CLEAN
