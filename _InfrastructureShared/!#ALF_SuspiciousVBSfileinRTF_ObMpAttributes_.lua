local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 100 and L0_0 < 1000000 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.getfilename())
  if string.match(L1_1, "rtf%d.+->.+") then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
