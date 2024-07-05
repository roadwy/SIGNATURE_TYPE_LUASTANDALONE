local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 and L0_0 > 15728640 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.FILEPATH_QUERY_LOWERCASE)
if L1_1 == nil or string.len(L1_1) <= 5 then
  return mp.CLEAN
end
if string.find(L1_1, "attachmentfiles_20220208_%d%d%d%d+%.zip") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
