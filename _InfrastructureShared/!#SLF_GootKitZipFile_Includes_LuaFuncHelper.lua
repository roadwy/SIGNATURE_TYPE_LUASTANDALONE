local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L1_1 = L1_1(L2_2, "[%w%_]+_%d+.zip%-%>[%w%s]+%s%d+.js")
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = split
L2_2 = L0_0
L1_1 = L1_1(L2_2, "-%>")
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1[1], "_", " ")
L2_2 = string.gsub(L2_2, "%d+.zip", "")
if L2_2 ~= nil and string.gsub(L1_1[2], "%d+.js", "") ~= nil and L2_2 == string.gsub(L1_1[2], "%d+.js", "") then
  return mp.INFECTED
end
return mp.CLEAN
