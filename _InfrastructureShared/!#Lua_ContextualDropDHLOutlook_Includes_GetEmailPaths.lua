if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^dhl") == 1 and isOutlookProcess() then
  mp.set_mpattribute("Lua:ContextualDropDHLOutlook")
end
return mp.CLEAN
