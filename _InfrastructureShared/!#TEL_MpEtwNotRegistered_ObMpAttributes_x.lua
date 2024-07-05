local L0_0
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
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if L0_0 == nil then
  return mp.CLEAN
end
if string.find(L0_0, "hklm\\software\\microsoft\\windows\\currentversion\\winevt\\publishers\\{751ef305-6c6e-4fed-b847-02ef79d26aef}", 1, true) == nil then
  return mp.CLEAN
end
if sysio.RegOpenKey("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WINEVT\\Publishers\\{0a002690-3839-4e3a-b3b6-96d8df868d99}") == nil then
  return mp.INFECTED
end
return mp.CLEAN
