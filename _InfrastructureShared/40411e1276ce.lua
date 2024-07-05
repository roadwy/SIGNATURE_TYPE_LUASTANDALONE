if not peattributes.isdll then
  return mp.CLEAN
end
if string.find(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH):lower(), "microsoft.net\\framework.-\\v[0-9.].+\\temporary asp.net files\\") then
  return mp.INFECTED
end
return mp.CLEAN
