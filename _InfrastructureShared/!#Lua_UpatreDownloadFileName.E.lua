if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):sub(1, 3) == "doc" and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)):sub(-8) == "_pdf.exe" then
  mp.set_mpattribute("Lua:UpatreDownloadFileName.E")
end
return mp.CLEAN
