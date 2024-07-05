if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  mp.set_mpattribute("MpOnModifiedHandleClose")
end
return mp.CLEAN
