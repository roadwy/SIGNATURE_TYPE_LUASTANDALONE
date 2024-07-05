local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.ContextualExpandEnvironmentVariables
  L2_2 = L2_2("%userprofile%")
  L1_1 = L1_1(L2_2, L2_2("%userprofile%"))
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L0_0)
  if string.find(L2_2, L1_1 .. "\\[^\\]+$") and string.find(L0_0, "\\%l%l%l+%.exe$") then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
