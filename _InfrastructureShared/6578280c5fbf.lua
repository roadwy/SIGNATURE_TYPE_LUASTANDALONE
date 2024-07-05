local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "wzunzip%.exe") or string.find(L0_0, "wzcline40%-64%.exe") or string.find(L0_0, "wzcline40%-32%.exe") then
  return mp.CLEAN
end
return mp.INFECTED
