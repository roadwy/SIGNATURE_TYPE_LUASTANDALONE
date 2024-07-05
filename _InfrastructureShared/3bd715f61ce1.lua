if MpCommon.GetPersistContextCountNoPath("TaintedMachineML_High") > 0 then
  return mp.INFECTED
end
return mp.CLEAN
