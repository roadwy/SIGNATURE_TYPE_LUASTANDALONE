local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = "global_marker"
L1_1 = "big_lnk_file_with_ps"
L2_2 = MpCommon
L2_2 = L2_2.QueryPersistContextNoPath
L3_3 = L0_0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_SCANREASON
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.SCANREASON_ONMODIFIEDHANDLECLOSE
if L3_3 ~= L4_4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_NEWLYCREATEDHINT
L3_3 = L3_3(L4_4)
if L3_3 ~= true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilename
L4_4 = mp
L4_4 = L4_4.bitor
L4_4 = L4_4(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L3_3 = L3_3(L4_4, L4_4(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "Lua:PdfDroppedBySuspProc"
L2_2 = MpCommon.QueryPersistContext(L3_3, L4_4)
if L2_2 then
  return mp.CLEAN
end
if ({
  ["powershell.exe"] = true,
  ["cscript.exe"] = true,
  ["wscript.exe"] = true
})[string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))] ~= true then
  return mp.CLEAN
end
mp.set_mpattribute("MpDisableCaching")
if string.find(L3_3, "\\device\\", 1, true) then
  L3_3 = MpCommon.PathToWin32Path(L3_3)
end
if L3_3 == nil then
  return mp.CLEAN
end
MpCommon.AppendPersistContext(L3_3, L4_4, 30)
return mp.INFECTED
