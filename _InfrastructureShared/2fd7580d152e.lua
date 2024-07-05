if MpCommon.QueryPersistContextNoPath("TaintedMachine", "TaintedMachineLow") then
  return mp.INFECTED
end
return mp.CLEAN
