if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "thumbs.db" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "desktop.ini" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)) == "autorun.inf") and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "wuauclt.exe" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "wupdmgr.exe") then
  mp.set_mpattribute("Lua:ContextualDropWuaucltGamarue")
end
return mp.CLEAN
