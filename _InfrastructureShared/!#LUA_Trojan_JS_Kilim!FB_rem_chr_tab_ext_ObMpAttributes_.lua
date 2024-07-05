if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "chrome.exe" then
  mp.set_mpattribute("LUA:Trojan:JS/Kilim!FB_rem_chr_tab_ext")
end
return mp.CLEAN
