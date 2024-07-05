local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
L1_1 = L0_0.match
L1_1 = L1_1(L0_0, "(.+\\)([^\\]+)$")
if L1_1(L0_0, "(.+\\)([^\\]+)$") == nil or L1_1 == nil then
  return mp.CLEAN
end
if L1_1(L0_0, "(.+\\)([^\\]+)$") == "z.tmp" and L1_1:len() > 10 and (string.sub(L1_1, -10) == "\\temp\\low\\" or string.sub(L1_1, -6) == "\\temp\\") then
  return mp.INFECTED
end
return mp.CLEAN
