local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "1d9fb1e9-5186-49a5-92bd-86a3db551b47"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_AMSI_CONTENTNAME
L1_1 = L0_0(L1_1, L2_2)
if L0_0 then
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.ContextualExpandEnvironmentVariables
    L3_3 = "%appdata%"
    L2_2 = L2_2(L3_3)
    if L2_2 == nil then
      L3_3 = ""
    else
      L3_3 = L3_3 or L2_2
    end
    L3_3 = L3_3.lower
    L3_3 = L3_3(L3_3)
    L2_2 = L3_3
    L3_3 = L1_1.find
    L3_3 = L3_3(L1_1, L2_2 .. "\\microsoft\\", 1, true)
    if L3_3 ~= nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = mp
    L3_3 = L3_3.ContextualExpandEnvironmentVariables
    L3_3 = L3_3("%localappdata%")
    L3_3 = (L3_3 == nil and "" or L3_3):lower()
    if L1_1:find(L3_3 .. "\\microsoft\\", 1, true) ~= nil then
      return mp.CLEAN
    end
    mp.SetHipsRule("1d9fb1e9-5186-49a5-92bd-86a3db551b47")
    return mp.BLOCKEXECUTION
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
