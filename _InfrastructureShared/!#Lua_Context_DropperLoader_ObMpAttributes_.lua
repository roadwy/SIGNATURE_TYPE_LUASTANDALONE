local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 == nil or L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = "\\"
L4_4 = L0_0
L2_2 = L2_2 .. L3_3 .. L4_4
L3_3 = MpCommon
L3_3 = L3_3.GetOriginalFileName
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 ~= "regsvr32.exe" and L3_3 ~= "rundll32.exe" and L0_0 ~= "regsvr32.exe" and L0_0 ~= "rundll32.exe" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilename
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
L4_4 = L4_4(L5_5)
L5_5 = MpCommon
L5_5 = L5_5.QueryPersistContext
L6_6 = L4_4
L5_5 = L5_5(L6_6, "DllDroppedByExcel")
if not L5_5 then
  L5_5 = MpCommon
  L5_5 = L5_5.QueryPersistContext
  L6_6 = L4_4
  L5_5 = L5_5(L6_6, "CabDroppedByExcel")
elseif L5_5 then
  if L0_0 == "regsvr32.exe" or L3_3 ~= nil and L3_3 == "regsvr32.exe" then
    L5_5 = mp
    L5_5 = L5_5.set_mpattribute
    L6_6 = "Lua:Context/ExcelDropRegsvrLoad"
    L5_5(L6_6)
  elseif L0_0 == "rundll32.exe" or L3_3 ~= nil and L3_3 == "rundll32.exe" then
    L5_5 = mp
    L5_5 = L5_5.set_mpattribute
    L6_6 = "Lua:Context/ExcelDropRundllLoad"
    L5_5(L6_6)
  end
end
L5_5 = mp
L5_5 = L5_5.getfilename
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
L5_5 = L5_5(L6_6)
L6_6 = MpCommon
L6_6 = L6_6.QueryPersistContext
L6_6 = L6_6(L5_5, "DllDroppedByWord")
if L6_6 then
  if L0_0 == "regsvr32.exe" or L3_3 ~= nil and L3_3 == "regsvr32.exe" then
    L6_6 = mp
    L6_6 = L6_6.set_mpattribute
    L6_6("Lua:Context/WordDropRegsvrLoad")
  elseif L0_0 == "rundll32.exe" or L3_3 ~= nil and L3_3 == "rundll32.exe" then
    L6_6 = mp
    L6_6 = L6_6.set_mpattribute
    L6_6("Lua:Context/WordDropRundllLoad")
  end
end
L6_6 = mp
L6_6 = L6_6.getfilename
L6_6 = L6_6(mp.FILEPATH_QUERY_LOWERCASE)
if MpCommon.QueryPersistContext(L6_6, "DllDroppedByNotepadpp") then
  if L0_0 == "regsvr32.exe" or L3_3 ~= nil and L3_3 == "regsvr32.exe" then
    mp.set_mpattribute("Lua:Context/NotepadppDropRegsvrLoad")
  elseif L0_0 == "rundll32.exe" or L3_3 ~= nil and L3_3 == "rundll32.exe" then
    mp.set_mpattribute("Lua:Context/NotepadppDropRundllLoad")
  end
end
if MpCommon.QueryPersistContext(L6_6, "DllDroppedByPowerShell") then
  if L0_0 == "regsvr32.exe" or L3_3 ~= nil and L3_3 == "regsvr32.exe" then
    mp.set_mpattribute("Lua:Context/PowershellDropRegsvrLoad")
  elseif L0_0 == "rundll32.exe" or L3_3 ~= nil and L3_3 == "rundll32.exe" then
    mp.set_mpattribute("Lua:Context/PowershellDropRundllLoad")
  end
end
if MpCommon.QueryPersistContext(L6_6, "DllDroppedByWscript") then
  if L0_0 == "regsvr32.exe" or L3_3 ~= nil and L3_3 == "regsvr32.exe" then
    mp.set_mpattribute("Lua:Context/WscriptDropRegsvrLoad")
  elseif L0_0 == "rundll32.exe" or L3_3 ~= nil and L3_3 == "rundll32.exe" then
    mp.set_mpattribute("Lua:Context/WscriptDropRundllLoad")
  end
end
if MpCommon.QueryPersistContext(L6_6, "DllDroppedByCscript") then
  if L0_0 == "regsvr32.exe" or L3_3 ~= nil and L3_3 == "regsvr32.exe" then
    mp.set_mpattribute("Lua:Context/CscriptDropRegsvrLoad")
  elseif L0_0 == "rundll32.exe" or L3_3 ~= nil and L3_3 == "rundll32.exe" then
    mp.set_mpattribute("Lua:Context/CscriptDropRundllLoad")
  end
end
if MpCommon.QueryPersistContext(L6_6, "DllDroppedByCurl") then
  if L0_0 == "regsvr32.exe" or L3_3 ~= nil and L3_3 == "regsvr32.exe" then
    mp.set_mpattribute("Lua:Context/CurlDropRegsvrLoad")
  elseif L0_0 == "rundll32.exe" or L3_3 ~= nil and L3_3 == "rundll32.exe" then
    mp.set_mpattribute("Lua:Context/CurlDropRundllLoad")
  end
end
return mp.CLEAN
