local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  L0_0 = string.lower(L0_0)
  if string.match(L0_0, "/s") == nil or string.match(L0_0, "/i") == nil or string.match(L0_0, "\\\\sysvol\\policies") == nil then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
