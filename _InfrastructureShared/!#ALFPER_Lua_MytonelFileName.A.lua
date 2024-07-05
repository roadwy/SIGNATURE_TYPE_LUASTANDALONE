if (mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):match("^pps[-]qq[-]19.exe$") or mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):match("^05a00036.exe$") or mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):match("^ucbrabs.exe$")) then
  if mp.get_mpattribute("SIGATTR:VirTool:Win32/LoadLibChg1stLetter") then
    mp.set_mpattribute("Lowfi:Lua:MytonelFilenameAndObfus")
  end
  return mp.INFECTED
end
return mp.CLEAN
