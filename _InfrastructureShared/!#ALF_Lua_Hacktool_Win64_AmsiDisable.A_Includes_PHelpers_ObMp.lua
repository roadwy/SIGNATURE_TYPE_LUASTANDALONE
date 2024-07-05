local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 300 or L0_0 > 1000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if L1_1 == nil then
  return mp.CLEAN
end
if true == IsInternetCache(L1_1) or true == IsLowConfNPath(L1_1) then
  return mp.CLEAN
end
if L1_1:find("\\program files\\", 1, true) or L1_1:find(":\\windows\\", 1, true) or L1_1:find(":\\program files (x86)\\", 1, true) or L1_1:find("\\device\\harddiskvolume", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
