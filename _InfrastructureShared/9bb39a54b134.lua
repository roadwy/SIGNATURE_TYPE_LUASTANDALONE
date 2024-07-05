local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or string.len(L0_0) < 1 then
  return mp.CLEAN
end
if string.find(L0_0, ".tmp\\", 1, true) or string.find(L0_0, "\\temp\\", 1, true) then
  return mp.INFECTED
end
if string.find(L0_0, "\\program files\\", 1, true) or string.find(L0_0, "\\program files (x86)\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
