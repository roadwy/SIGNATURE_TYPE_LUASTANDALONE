if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^security center update - %d%d%d%d%d%d%d%d?%d?%d?%.job$") == 1 then
  mp.set_mpattribute("Lua:ContextualDropJob.A")
end
return mp.CLEAN
