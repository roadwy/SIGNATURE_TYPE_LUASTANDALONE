local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L0_0(L1_1, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if L0_0 and sysio.IsPathAVExcluded(L1_1, false) then
  mp.set_mpattribute("Lua:OfficeVBASkipKnownCleanOriginalFile")
end
return mp.CLEAN
