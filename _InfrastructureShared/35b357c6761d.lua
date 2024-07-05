local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 then
  if string.find(L0_0, "\\microsoft visual studio\\20", 1, true) or string.find(L0_0, "\\program files (x86)\\msbuild\\1", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
