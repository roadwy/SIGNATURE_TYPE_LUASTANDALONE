local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(string.sub(L0_0, -12))
  if L0_0 == "rundll32.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN
