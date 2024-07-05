local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil then
  return mp.CLEAN
end
if string.find(L1_1, "notice_", 1, true) ~= nil then
  mp.set_mpattribute("Lua:JS.MalwareCampaign.S1")
end
return mp.CLEAN
