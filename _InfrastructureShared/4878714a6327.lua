if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
for _FORV_6_ = 1, #{
  "autohotkey",
  "autohotkeysc%.bin",
  "ahk2exe%.exe",
  "infomisc%.exe",
  "uninst%.exe",
  "au3_spy%.exe",
  "andy[%w]+%.exe",
  "setup%.exe",
  "traymenu%.exe",
  "volhotkey%.exe"
} do
  if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):find(({
    "autohotkey",
    "autohotkeysc%.bin",
    "ahk2exe%.exe",
    "infomisc%.exe",
    "uninst%.exe",
    "au3_spy%.exe",
    "andy[%w]+%.exe",
    "setup%.exe",
    "traymenu%.exe",
    "volhotkey%.exe"
  })[_FORV_6_]) ~= nil then
    return mp.CLEAN
  end
end
return _FOR_.INFECTED
