local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L4_4 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2))
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_PATH
L3_3 = L3_3(L4_4, mp.FILEPATH_QUERY_FNAME)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L4_4 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3, L4_4))
if L2_2 == "rbkvssprovider.dll" then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, "\\temp\\rubrik_vmware", 1, true)
  if not L3_3 then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L1_1
    L3_3 = L3_3(L4_4, "program files\\rubrik\\rubrik backup service\\", 1, true)
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L1_1
L3_3 = L3_3(L4_4, "windows\\syswow64", 1, true)
if L3_3 and (L2_2 == "ven2232.olb" or L2_2 == "vbako32.olb" or L2_2 == "vbaend32.olb" or L2_2 == "vbade32.olb" or L2_2 == "vbachs32.olb" or L2_2 == "mscomctl.ocx") then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L0_0 == "excel.exe" then
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L4_4 = mp
  L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
  L3_3 = L3_3(L4_4)
  L4_4 = "DllDroppedByExcel"
  if not MpCommon.QueryPersistContext(L3_3, L4_4) then
    MpCommon.AppendPersistContext(L3_3, L4_4, 100)
  end
  mp.set_mpattribute("MpDisableCaching")
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
