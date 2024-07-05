local L0_0, L1_1
L0_0 = IsADConnectRole
L0_0 = L0_0()
if L0_0 then
  L0_0 = pcall
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L0_0(L1_1, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if L0_0 and L1_1 ~= nil then
    L1_1 = string.lower(L1_1)
    if string.find(L1_1, "\\aadsyncsettings_job.ps1", 1, true) then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
