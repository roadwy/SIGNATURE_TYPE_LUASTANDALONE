if mp.get_mpattribute("Lua:FnameAttr!~intel_upd.exe") and mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  return mp.INFECTED
end
return mp.CLEAN
