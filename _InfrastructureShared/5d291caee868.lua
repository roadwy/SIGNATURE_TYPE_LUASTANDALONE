local L0_0, L1_1
if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) == nil then
  L0_0 = mp.getfilename()
  if L0_0 == nil then
    return mp.CLEAN
  end
  L1_1 = L0_0:sub(-5)
else
  L1_1 = mp.get_contextdata(mp.CONTEXT_DATA_FILENAME):sub(-5)
end
if string.find(L1_1:lower(), ".asp") then
  return mp.INFECTED
end
return mp.LOWFI
