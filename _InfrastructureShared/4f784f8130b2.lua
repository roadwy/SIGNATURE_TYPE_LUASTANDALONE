local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "miniunz%.exe") or string.find(L0_0, "miniunz %(2015_") or string.find(L0_0, "%.svn%-base") then
  return mp.CLEAN
end
return mp.INFECTED
