if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == 8 then
  mp.set_mpattribute("MpIsInMemoryScan")
end
return mp.CLEAN
