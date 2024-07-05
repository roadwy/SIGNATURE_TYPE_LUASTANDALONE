local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.isvbnative
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "part00[0-9]+:(.+)%.(.+)%)%-%>(.+)%.(.+)$"
L6_6 = L1_1(L2_2, L3_3)
if not L3_3 or not L4_4 or not L5_5 or not L6_6 then
  return mp.CLEAN
end
if ("|ace|arj|iso|gz|r14|rar|zip|"):find("|" .. L4_4 .. "|") == nil then
  return mp.CLEAN
end
if ("|com|exe|scr|"):find("|" .. L6_6 .. "|") == nil then
  return mp.CLEAN
end
if L3_3 == L5_5 then
  return mp.INFECTED
end
return mp.CLEAN
