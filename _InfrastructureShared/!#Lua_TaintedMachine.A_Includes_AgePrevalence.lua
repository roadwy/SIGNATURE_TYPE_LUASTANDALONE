function checkTaintedMachinePersistContext(A0_0, A1_1, A2_2)
  local L3_3
  if A0_0 ~= nil then
    L3_3 = #A0_0
    if not (L3_3 <= 0) and A1_1 ~= nil then
      L3_3 = #A1_1
    end
  elseif L3_3 <= 0 then
    L3_3 = false
    return L3_3
  end
  L3_3 = 14400
  if A2_2 ~= nil then
    L3_3 = A2_2
  end
  if mp.get_mpattribute(A0_0) and not MpCommon.QueryPersistContextNoPath(A1_1, A0_0) then
    MpCommon.AppendPersistContextNoPath(A1_1, A0_0, L3_3)
    if not MpCommon.QueryPersistContextNoPath("TaintedMachine", A1_1) then
      MpCommon.AppendPersistContextNoPath("TaintedMachine", A1_1, L3_3)
    end
    return true
  end
  if 0 >= MpCommon.GetPersistContextCountNoPath(A1_1) then
    clearPersistContextNoPath("TaintedMachine", A1_1)
  end
  return false
end
checkTaintedMachinePersistContext("MpEnableTaintedShieldsUpMachine", "TaintedMachineLow")
if checkTaintedMachinePersistContext("MpEnableTainted_medium", "TaintedMachineMedium") == true then
  checkTaintedMachinePersistContext("MpEnableTainted_medium", "TaintedMachineLow")
end
if checkTaintedMachinePersistContext("MpEnableTainted_high", "TaintedMachineHigh") == true then
  checkTaintedMachinePersistContext("MpEnableTainted_high", "TaintedMachineLow")
  checkTaintedMachinePersistContext("MpEnableTainted_high", "TaintedMachineMedium")
end
checkTaintedMachinePersistContext("CompromisedMachineML_low", "TaintedMachineML_Low")
if checkTaintedMachinePersistContext("CompromisedMachineML_moderate", "TaintedMachineML_Medium") == true then
  checkTaintedMachinePersistContext("CompromisedMachineML_moderate", "TaintedMachineML_Low")
end
if checkTaintedMachinePersistContext("CompromisedMachineML_high", "TaintedMachineML_High") == true then
  checkTaintedMachinePersistContext("CompromisedMachineML_high", "TaintedMachineML_Low")
  checkTaintedMachinePersistContext("CompromisedMachineML_high", "TaintedMachineML_Medium")
end
return mp.CLEAN
