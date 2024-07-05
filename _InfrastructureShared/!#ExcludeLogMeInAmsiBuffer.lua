if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_AMSI and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME) == "JScript" and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) ~= nil and pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME) == "%common_appdata%\\LogMeIn\\avfilter.js" then
  mp.set_mpattribute("MpAmsiJsExclude")
end
return mp.CLEAN
