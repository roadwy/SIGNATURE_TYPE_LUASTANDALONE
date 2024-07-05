local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
elseif L1_1 < 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetMountedFileBackingFilePath
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.ReportLowfi
L3_3(L2_2, 2536803289)
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(mp.CONTEXT_DATA_FILE_ATTRIBUTES)
if mp.bitand(L3_3, 2) == 0 then
  mp.set_mpattribute("Lua:Context/DllOnFileBackedMountedDrive")
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH)):find("^\\device\\cdrom") ~= nil then
    mp.set_mpattribute("Lua:Context/MaybeDllSideLoadingOnFileBackedMountedDrive")
  end
else
  mp.set_mpattribute("Lua:Context/HiddenDllOnFileBackedMountedDrive")
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH)):find("^\\device\\cdrom") ~= nil then
    mp.set_mpattribute("Lua:Context/MaybeHiddenDllSideLoadingOnFileBackedMountedDrive")
  end
end
if MpCommon.QueryPersistContext(L2_2, "UdfExtractedBy7zip") or MpCommon.QueryPersistContext(L2_2, "UdfExtractedByWinrar") then
  mp.set_mpattribute("Lua:Context/DllonFileBackedMountedDriveFromArchive")
end
return mp.CLEAN
