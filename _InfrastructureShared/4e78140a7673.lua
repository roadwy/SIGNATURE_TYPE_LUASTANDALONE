local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L2_2 = L0_0
L1_1 = L0_0.match
L2_2 = L1_1(L2_2, "(.+\\)([^\\]+)$")
if string.lower(L2_2) == "mpkview.exe" then
  return mp.INFECTED
end
return mp.LOWFI
