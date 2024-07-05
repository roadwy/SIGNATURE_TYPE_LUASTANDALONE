local L0_0, L1_1, L2_2, L3_3, L4_4
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
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -4
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= ".vbs" or L1_1 ~= ".vbe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.GetMountedFileBackingFilePath
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.ReportLowfi
L4_4(L3_3, 2536803289)
L4_4 = mp
L4_4 = L4_4.get_contextdata
L4_4 = L4_4(mp.CONTEXT_DATA_PROCESSNAME)
if L4_4 == nil then
  return mp.CLEAN
end
L4_4 = string.lower(L4_4)
if L4_4 == "wscript.exe" then
  mp.set_mpattribute("Lua:Context/WscriptLoadVbsFromMountedDrive")
elseif L4_4 == "cscript.exe" then
  mp.set_mpattribute("Lua:Context/CscriptLoadVbsFromMountedDrive")
end
return mp.CLEAN
