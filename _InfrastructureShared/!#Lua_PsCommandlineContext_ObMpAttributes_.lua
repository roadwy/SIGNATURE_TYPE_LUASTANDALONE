local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = pcall
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L1_1(L2_2, mp.CONTEXT_DATA_AMSI_APPNAME)
  if L1_1 ~= nil and L2_2 ~= nil then
    L2_2 = string.lower(L2_2)
    if (L2_2:find("\\powershell.exe") or L2_2:find("\\pwsh.exe")) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) ~= nil and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) == nil then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
