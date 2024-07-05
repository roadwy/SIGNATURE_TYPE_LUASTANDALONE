local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == "ewsapplication.exe" then
  return mp.INFECTED
end
if string.match(L0_0, "o365token%d?%d?%d?%d?%.exe") then
  return mp.INFECTED
end
if string.match(L0_0, "hpatoken%d?%d?%d?%d?%.exe") then
  return mp.INFECTED
end
if string.match(L0_0, "hpauser%d?%d?%d?%.exe") then
  return mp.INFECTED
end
return mp.CLEAN
