if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "mahnung.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "mahnung.pdf.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "rechnung.exe") then
  mp.set_mpattribute("Lua:KunpalAttachmentFilename")
end
return mp.CLEAN
