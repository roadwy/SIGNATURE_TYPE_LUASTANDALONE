if mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  mp.set_mpattribute("MpNewlyCreatedHint")
end
return mp.CLEAN
