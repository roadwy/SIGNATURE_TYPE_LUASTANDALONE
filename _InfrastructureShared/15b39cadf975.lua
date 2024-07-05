local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.sub(L0_0, -9) ~= "steam.exe" and string.sub(L0_0, -18) ~= "steamwebhelper.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN
