if string.find(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):lower(), "\\teams.exe") then
  return mp.CLEAN
end
return mp.INFECTED
