local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
    if string.find(L6_6, ":\\program files", 1, true) then
      return mp.CLEAN
    elseif string.find(L6_6, "\\ccmcache\\", 1, true) then
      return mp.CLEAN
    elseif string.find(L6_6, "ccm32bitlauncher", 1, true) then
      return mp.CLEAN
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
