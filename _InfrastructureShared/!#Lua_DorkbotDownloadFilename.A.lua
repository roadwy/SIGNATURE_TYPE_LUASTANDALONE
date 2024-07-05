if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if mp.getfilesize() < 50000 or mp.getfilesize() > 500000 then
    return mp.CLEAN
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^api%d%[%d%]%.gif$") == 1 or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^api%d%.gif$") == 1 or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^napi%d%[%d%]%.gif$") == 1 or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):find("^napi%d%.gif$") == 1 then
    mp.set_mpattribute("Lua:DorkbotDownloadFilename.A")
  end
end
return mp.CLEAN
