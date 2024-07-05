local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 == "winrar.exe" then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
  elseif L2_2 < 4 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = MpCommon
  L2_2 = L2_2.PathToWin32Path
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = "UdfExtractedByWinrar"
  if not MpCommon.QueryPersistContext(L2_2, L3_3) then
    MpCommon.AppendPersistContext(L2_2, L3_3, 100)
  end
  return mp.INFECTED
elseif L0_0 ~= "7z.exe" and L0_0 ~= "7za.exe" and L0_0 ~= "7zfm.exe" and L0_0 ~= "7zg.exe" then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "7z%d%d%d%d%-x64%.exe"
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 == nil then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "7z%d%d%d%d%.exe"
    L1_1 = L1_1(L2_2, L3_3)
  end
elseif L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.getfilename
  L2_2 = mp
  L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
  elseif L2_2 < 4 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = MpCommon
  L2_2 = L2_2.PathToWin32Path
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = "UdfExtractedBy7zip"
  if not MpCommon.QueryPersistContext(L2_2, L3_3) then
    MpCommon.AppendPersistContext(L2_2, L3_3, 100)
  end
  mp.set_mpattribute("Lua:Context/UdfExtractedFromArchive")
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
