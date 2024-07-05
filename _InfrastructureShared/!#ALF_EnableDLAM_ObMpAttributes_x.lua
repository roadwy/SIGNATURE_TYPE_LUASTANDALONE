if mp.GetResmgrBasePlugin() ~= "Regkeyvalue" then
  return mp.CLEAN
end
if not mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH) then
  return mp.CLEAN
end
return mp.INFECTED
