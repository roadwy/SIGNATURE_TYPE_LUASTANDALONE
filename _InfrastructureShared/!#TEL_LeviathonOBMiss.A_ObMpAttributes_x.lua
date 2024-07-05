local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "Regkeyvalue" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L2_2 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, "hklm\\software\\microsoft\\windows advanced threat protection", 1, true)
if L1_1 ~= nil then
  L1_1 = nil
  L2_2 = sysio
  L2_2 = L2_2.RegOpenKey
  L2_2 = L2_2("HKLM\\SOFTWARE\\Microsoft\\Windows Advanced Threat Protection")
  if L2_2 then
    L1_1 = sysio.GetRegValueAsString(L2_2, "OnboardedInfo")
  end
  if L1_1 == nil or #L1_1 < 10 or string.find(L1_1, "orgId", 1, true) == false then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
