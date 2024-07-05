local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = #L0_0
if L1_1 == 64 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "qnetd"
L2_2 = "agtty(.-)%.bat"
if L0_0 == L1_1 then
  return mp.INFECTED
elseif string.match(L0_0, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
