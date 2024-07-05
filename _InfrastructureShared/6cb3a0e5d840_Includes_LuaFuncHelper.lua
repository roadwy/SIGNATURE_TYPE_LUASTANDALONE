local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if StringEndsWith(L0_0, "/sudo") then
  return mp.CLEAN
end
return mp.INFECTED
