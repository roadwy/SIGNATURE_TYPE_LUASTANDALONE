local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(string.sub(L0_0, -14))
  if L1_1 == "\\gvfs\\gvfs.exe" then
    return mp.CLEAN
  end
  L1_1 = string.lower(string.sub(L0_0, -36))
  if L1_1 == "\\urbrowser\\application\\urbrowser.exe" then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
