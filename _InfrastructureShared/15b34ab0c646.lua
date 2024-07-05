local L0_0
L0_0 = mp
L0_0 = L0_0.ENGINEBUILD
if L0_0 >= 10134 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(bm.get_imagepath())
  if string.sub(L0_0, -10) == "wrsa.exe" then
    return mp.CLEAN
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
