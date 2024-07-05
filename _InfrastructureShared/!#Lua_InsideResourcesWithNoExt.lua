local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 == nil or string.len(L0_0) < 15 then
  return mp.CLEAN
end
if string.find(L0_0, "->", 1, true) == nil then
  return mp.CLEAN
end
if string.find(L0_0, "/resources/", 1, true) == nil then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:InsideResources")
if string.match(L0_0, "/resources/[^%.]+$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
