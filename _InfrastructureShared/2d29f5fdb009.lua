local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
if string.find(L0_0, "\\splunkuniversalforwarder\\", 1, true) ~= nil then
  return mp.LOWFI
end
return mp.INFECTED
