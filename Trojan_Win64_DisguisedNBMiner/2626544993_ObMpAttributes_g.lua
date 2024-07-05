local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.is_process
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L0_0.experience = true
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L2_2())
L3_3 = L1_1
L2_2 = L1_1.match
L3_3 = L2_2(L3_3, "(.+\\)([^\\]+)$")
if L2_2 == nil or L3_3 == nil then
  return mp.CLEAN
end
if L3_3:len() < 24 or string.sub(L3_3, 1, 7) == "nbminer" then
  return mp.CLEAN
end
if L2_2:match("(.+\\)([^\\]+)\\$") == nil or not L0_0[L2_2:match("(.+\\)([^\\]+)\\$")] then
  return mp.CLEAN
end
if L3_3:find("^[a-z]+%.exe$") == 1 then
  return mp.INFECTED
end
return mp.CLEAN
