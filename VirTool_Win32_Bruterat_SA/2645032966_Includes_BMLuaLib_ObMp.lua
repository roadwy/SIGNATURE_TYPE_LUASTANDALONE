local L0_0, L1_1, L2_2
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = GetFileName
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L2_2 = L2_2(L1_1, "badger_")
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.IsKnownFriendlyFile
L2_2 = L2_2(L0_0, true, false)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "_x86",
  "_x64",
  "_svc"
}
if contains(L1_1, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
