local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, "\\lenovo\\visualdiscovery\\", 1, true) ~= nil then
    return mp.INFECTED
  end
end
return mp.LOWFI
