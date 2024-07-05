local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, "\\program files", 1, true) ~= nil and string.find(L0_0, "\\malwarebytes", 1, true) ~= nil then
    return mp.CLEAN
  end
end
return mp.INFECTED
