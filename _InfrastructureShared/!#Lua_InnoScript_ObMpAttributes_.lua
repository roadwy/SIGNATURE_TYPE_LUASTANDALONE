local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 800000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L1_1 = mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FNAME))
if L1_1 ~= nil and string.sub(L1_1, -17) == "->(innosetupdata)" then
  mp.readprotection(false)
  if mp.readu_u32(mp.readfile(0, 4), 1) < 256 then
    return mp.INFECTED
  end
end
return mp.CLEAN
