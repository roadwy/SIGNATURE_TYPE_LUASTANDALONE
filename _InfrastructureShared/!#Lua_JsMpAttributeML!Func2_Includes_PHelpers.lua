local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 1000 or L0_0 > 1000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if string.sub(L2_2, -3) ~= ".js" and string.sub(L2_2, -4) ~= ".jse" then
  return mp.CLEAN
end
if true == IsInternetCache(L1_1) or true == IsLowConfNPath(L1_1) then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:JsLowfiFlag")
return mp.CLEAN
