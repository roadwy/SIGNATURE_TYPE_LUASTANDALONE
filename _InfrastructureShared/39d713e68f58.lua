if MpCommon.GetPersistContextCountNoPath("TaintedMachineML_Medium") > 0 then
  return mp.INFECTED
end
return mp.CLEAN
