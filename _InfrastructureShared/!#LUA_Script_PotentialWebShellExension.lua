local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename(mp.FILEPATH_QUERY_FNAME))
if L0_0 == nil then
  return mp.CLEAN
end
if L0_0:sub(-4) == nil then
  return mp.CLEAN
end
if ({
  aspx = mp.INFECTED
})[L0_0:sub(-4)] == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
