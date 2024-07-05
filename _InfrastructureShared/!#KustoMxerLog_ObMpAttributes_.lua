if nil ~= (mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH) or ""):lower():find("kustomultiplexer\\ingestions") then
  if (mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) or ""):lower():sub(-4) == ".zip" then
    return mp.INFECTED
  end
end
return mp.CLEAN
