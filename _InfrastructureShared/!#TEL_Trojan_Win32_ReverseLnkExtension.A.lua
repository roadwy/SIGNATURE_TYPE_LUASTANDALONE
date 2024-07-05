local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:len() < 12 then
  return mp.CLEAN
end
if not ({
  [".lnk"] = ""
})[string.sub(L0_0, -4)] then
  return mp.CLEAN
end
if ({
  ["\174cip.rcs"] = ""
})[string.sub(L0_0, -12, -5)] then
  return mp.INFECTED
end
return mp.CLEAN
