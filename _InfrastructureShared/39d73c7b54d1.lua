if MpCommon.GetPersistContextCountNoPath("TaintedMachineML_Low") > 0 then
  return mp.INFECTED
end
return mp.CLEAN
