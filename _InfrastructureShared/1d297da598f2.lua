local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.find(L0_0, "->%(Ole Stream %d%)$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN