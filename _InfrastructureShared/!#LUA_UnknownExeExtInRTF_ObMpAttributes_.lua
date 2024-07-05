local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 400000 or L0_0 > 1000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.getfilename())
if string.find(L1_1, "%-%>%(rtf[0-9]+%)%-%>[a-z]+.exe$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
