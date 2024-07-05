if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "firefox.exe" and mp.get_mpattribute("SCRIPT:Trojan:JS/Bepush!FB_Script") then
  mp.set_mpattribute("LUA:Trojan:JS/Bepush!FB_app_fir_scr_web")
end
return mp.CLEAN
