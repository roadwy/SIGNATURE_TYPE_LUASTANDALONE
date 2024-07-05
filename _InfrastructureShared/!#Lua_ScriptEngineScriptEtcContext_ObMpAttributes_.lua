if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower():match("[^\\]+$") == nil or ({
  ["iexplore.exe"] = "",
  ["chrome.exe"] = "",
  ["firefox.exe"] = ""
})[mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower():match("[^\\]+$")] then
  return mp.CLEAN
end
if ({
  ["wscript.exe"] = "",
  ["cscript.exe"] = ""
})[mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME):lower():match("[^\\]+$")] then
  return mp.INFECTED
end
return mp.CLEAN
