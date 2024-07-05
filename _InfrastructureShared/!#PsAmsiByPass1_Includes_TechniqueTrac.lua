local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if L0_0 ~= nil then
  AddTacticForPid(L0_0, "PS_VirtualProt", 3600)
  if GetTacticsTableForPid(L0_0) ~= nil and GetTacticsTableForPid(L0_0).PS_LoadLib and GetTacticsTableForPid(L0_0).PS_GetProc and GetTacticsTableForPid(L0_0).PS_VirtualProt then
    mp.set_mpattribute("PS_AmsiBypass3")
  end
end
return mp.CLEAN
