local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[3].utf8p2)
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "start-clusterresource", 1, true) or string.find(L0_0, "stop-clusterresource", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
