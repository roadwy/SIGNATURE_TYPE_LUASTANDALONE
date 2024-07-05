local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "pea_isexe"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.find
L1_1 = L1_1(L0_0, "program files", 1, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.find
L1_1 = L1_1(L0_0, "system32", 1, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(L0_0)
if L1_1 == nil then
  return mp.CLEAN
end
if string.find(L1_1, "->") then
  L1_1 = string.sub(L1_1, 1, string.find(L1_1, "->") - 1)
end
return mp.INFECTED
