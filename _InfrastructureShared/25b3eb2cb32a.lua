local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.sub(L0_0, -29) ~= "\\windows defender\\msascui.exe" and string.sub(L0_0, -38) ~= "\\microsoft security client\\msseces.exe" and string.sub(L0_0, -42) ~= "\\microsoft security essentials\\msseces.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN
