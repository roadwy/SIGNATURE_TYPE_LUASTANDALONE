local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil then
  return mp.CLEAN
end
if L0_0:find("\\trend micro\\", 1, true) or L0_0:find("\\smex_master.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
