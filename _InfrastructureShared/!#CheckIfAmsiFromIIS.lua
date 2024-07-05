local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 ~= mp.SCANREASON_AMSI then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_PROCESSNAME)
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if L0_0 == "w3wp.exe" and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME) ~= nil and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME) == "DotNet" then
    mp.set_mpattribute("Lua:IsIISAmsiScan")
    return mp.INFECTED
  end
end
return mp.CLEAN
