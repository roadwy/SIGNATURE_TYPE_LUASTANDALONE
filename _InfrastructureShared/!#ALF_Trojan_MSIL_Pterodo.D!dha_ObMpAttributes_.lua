local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = L0_0 % 34
if L1_1 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L3_3 = L3_3(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L3_3, L3_3(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 then
  L3_3 = L2_2.find
  L3_3 = L3_3(L2_2, "\\appdata\\local\\iconscache.db", 1, true)
  if not L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = tostring
  L3_3 = L3_3(headerpage)
  if string.match(string.sub(L3_3, 1, 34), "^" .. ("%x"):rep(32) .. "\r\n") == nil then
    return mp.CLEAN
  end
  if string.match(string.sub(L3_3, 4047, 4080), "^" .. ("%x"):rep(32) .. "\r\n") == nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
