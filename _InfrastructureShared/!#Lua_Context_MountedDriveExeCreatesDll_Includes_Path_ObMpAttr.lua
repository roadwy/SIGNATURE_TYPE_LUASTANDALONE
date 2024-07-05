local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
L1_1 = L1_1(L2_2)
if L1_1 == nil or L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 == "" or L0_0 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_PATH
L4_4 = L4_4(L5_5, mp.FILEPATH_QUERY_FNAME)
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L5_5 = L3_3(L4_4, L5_5)
L3_3 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4, L5_5))
L4_4 = string
L4_4 = L4_4.find
L5_5 = L2_2
L4_4 = L4_4(L5_5, "windows\\syswow64\\", 1, true)
if not L4_4 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L2_2
  L4_4 = L4_4(L5_5, "windows\\system32\\", 1, true)
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L2_2
    L4_4 = L4_4(L5_5, "\\empower\\oracle\\", 1, true)
  end
elseif L4_4 or L3_3 == "uninstall.dll" or L3_3 == "glprop.ax" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = nil
if L0_0 ~= "rundll32.exe" and L0_0 ~= "regsvr32.exe" then
  L5_5 = L1_1
  L5_5 = L5_5 .. "\\" .. L0_0
  L4_4 = MpCommon.GetOriginalFileName(L5_5)
end
if L0_0 == "regsvr32.exe" or L4_4 ~= nil and L4_4 == "regsvr32.exe" then
  L5_5 = mp
  L5_5 = L5_5.getfilename
  L5_5 = L5_5(mp.FILEPATH_QUERY_LOWERCASE)
  if MpCommon.QueryPersistContext(L5_5, "MountedDriveExeCreatesDll") then
    mp.set_mpattribute("Lua:Context/MountedDriveCreatedDllRegsvrLoad")
  end
elseif L0_0 == "rundll32.exe" or L4_4 ~= nil and L4_4 == "rundll32.exe" then
  L5_5 = mp
  L5_5 = L5_5.getfilename
  L5_5 = L5_5(mp.FILEPATH_QUERY_LOWERCASE)
  if MpCommon.QueryPersistContext(L5_5, "MountedDriveExeCreatesDll") then
    mp.set_mpattribute("Lua:Context/MountedDriveCreatedDllRundllLoad")
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
