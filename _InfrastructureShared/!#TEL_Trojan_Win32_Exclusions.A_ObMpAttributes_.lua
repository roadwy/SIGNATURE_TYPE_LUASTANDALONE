local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = {}
L0_0["AGGR:PowerShell/ExclusionEnviromentalVariableAppdata"] = 2
L0_0["AGGR:PowerShell/ExclusionExe"] = 2
L0_0["AGGR:PowerShell/ExclusionDll"] = 2
L0_0["AGGR:PowerShell/ExclusionBat"] = 2
L0_0["AGGR:PowerShell/ExclusionEnviromentalVariableTemp"] = 2
L0_0["AGGR:PowerShell/ExclusionEnviromentalVariableUserprofile"] = 2
L0_0["AGGR:PowerShell/ExclusionAppDataRoaming"] = 2
L1_1 = 0
for L5_5, _FORV_6_ in L2_2(L3_3) do
  if mp.get_mpattribute(L5_5) then
    L1_1 = L1_1 + _FORV_6_
  end
end
if L1_1 >= 10 then
  return L2_2
end
return L2_2
