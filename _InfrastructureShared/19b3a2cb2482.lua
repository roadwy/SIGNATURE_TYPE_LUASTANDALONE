local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(sigattr_head[1].utf8p2)
if string.find(L0_0, "/x", 1, true) and string.find(L0_0, "/s", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
