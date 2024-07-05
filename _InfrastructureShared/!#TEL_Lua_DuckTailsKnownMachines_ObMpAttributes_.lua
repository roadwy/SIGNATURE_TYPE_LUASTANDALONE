local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.find
L2_2 = L2_2(L0_0, ":\\working\\sdc", 1, true)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = L0_0.find
L2_2 = L2_2(L0_0, "^%a:\\users\\", 1)
if L2_2 then
  L2_2 = L0_0.match
  L2_2 = L2_2(L0_0, "^%a:\\users\\([^\\]+)")
  if ("kassir|quang luu|mr quang|quang luu pc|viet hoang|lenovo|hp|asus"):find(L2_2, 1, true) then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
