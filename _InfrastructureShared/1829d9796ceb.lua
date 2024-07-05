local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
L2_2 = 25
L3_3 = L0_0.match_offset
L3_3 = L1_1 - L3_3
if L2_2 < L3_3 then
  L3_3 = mp
  L3_3 = L3_3.readprotection
  L3_3(false)
  L3_3 = mp
  L3_3 = L3_3.readfile
  L3_3 = L3_3(L0_0.match_offset, L2_2)
  if string.find(L3_3, "/usr/bin/env", 1, true) ~= nil or string.find(L3_3, "/usr/bin/ruby", 1, true) ~= nil or string.find(L3_3, "/usr/bin/osascript", 1, true) ~= nil or string.find(L3_3, "/usr/bin/perl", 1, true) ~= nil then
    return mp.CLEAN
  end
end
L3_3 = mp
L3_3 = L3_3.getfilename
L3_3 = L3_3(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if L3_3 == nil then
  return mp.CLEAN
end
if string.find(L3_3, ".app/contents/macos", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
