local L0_0, L1_1, L2_2, L3_3, L4_4
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
L3_3 = ""
if L0_0 == "wscript.exe" then
  if L2_2 == "remoteconnection.ocx" or L2_2 == "scheduleservices.ocx" then
    L4_4 = string
    L4_4 = L4_4.find
    L4_4 = L4_4(L1_1, "\\windows\\downloaded program files\\", 1, true)
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  L3_3 = "DllDroppedByWscript"
elseif L0_0 == "cscript.exe" then
  if L2_2 == "clrtablist.dll" or L2_2 == "clrmachineInfo.dll" or L2_2 == "certadm.dll" or L2_2 == "riainrsimport.dll" then
    L4_4 = string
    L4_4 = L4_4.find
    L4_4 = L4_4(L1_1, "\\windows\\syswow64\\", 1, true)
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  L3_3 = "DllDroppedByCscript"
else
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilename
L4_4 = L4_4(mp.FILEPATH_QUERY_LOWERCASE)
if not MpCommon.QueryPersistContext(L4_4, L3_3) then
  MpCommon.AppendPersistContext(L4_4, L3_3, 100)
end
mp.set_mpattribute("MpDisableCaching")
return mp.INFECTED
