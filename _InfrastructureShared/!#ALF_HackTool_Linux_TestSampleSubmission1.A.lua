if mp.getfilesize() ~= 8944 then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) ~= "d0d9c610-827c-44f3-b7d2-539b680a8716" then
  return mp.CLEAN
end
return mp.INFECTED
