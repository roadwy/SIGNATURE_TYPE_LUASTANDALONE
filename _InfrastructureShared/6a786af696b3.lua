local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
L1_1 = L0_0.match
L1_1 = L1_1(L0_0, "(.+\\)([^\\]+)$")
if string.sub(L1_1, -18) == "\\windows\\system32\\" or string.sub(L1_1, -18) == "\\windows\\syswow64\\" then
  return mp.INFECTED
end
return mp.CLEAN
