local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = nil
L2_2 = "iexplore.exe|browser_broker.exe|firefox.exe|chrome.exe|msedge.exe|opera.exe|safari.exe|microsoftedge.exe|microsoftedgecp.exe"
L3_3 = nil
L4_4 = mp
L4_4 = L4_4.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L4_4 then
  L4_4 = mp
  L4_4 = L4_4.SCANREASON_UNKNOWN
else
  if L0_0 == L4_4 then
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_PROCESSNAME
    L4_4 = L4_4(L5_5)
    if L4_4 then
      L5_5 = string
      L5_5 = L5_5.lower
      L6_6 = L4_4
      L5_5 = L5_5(L6_6)
      L4_4 = L5_5
      L5_5 = string
      L5_5 = L5_5.find
      L6_6 = L2_2
      L7_7 = L4_4
      L5_5 = L5_5(L6_6, L7_7)
      L1_1 = L5_5
    else
      L5_5 = mp
      L5_5 = L5_5.IOAVGetProcessPath
      L5_5 = L5_5()
      if L5_5 then
        L7_7 = L5_5
        L6_6 = L5_5.match
        L6_6 = L6_6(L7_7, "([^\\]+)$")
        L7_7 = string
        L7_7 = L7_7.find
        L7_7 = L7_7(L2_2, string.lower(L6_6))
        L1_1 = L7_7
        L7_7 = mp
        L7_7 = L7_7.IOAVGetDownloadUrl
        L7_7 = L7_7()
        L3_3 = L7_7
      end
    end
end
else
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_HAS_MOTW_ADS
  L4_4 = L4_4(L5_5)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.GetMOTWZone
    L4_4 = L4_4()
    L1_1 = L4_4 == 3 or L4_4 == 4
    if L1_1 then
      L5_5 = mp
      L5_5 = L5_5.GetMOTWHostUrl
      L5_5 = L5_5()
      L3_3 = L5_5
    end
  end
end
if not L1_1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4.SIG_CONTEXT = "SINGLE_SCRIPT"
L4_4.TAG = "INTERFLOW"
L5_5 = SafeGetUrlReputation
L6_6 = {L7_7}
L7_7 = L3_3
L7_7 = L4_4
L5_5 = L5_5(L6_6, L7_7, false, 2000)
if L5_5 then
  L6_6 = L5_5.urls
  L6_6 = L6_6[L3_3]
  if L6_6 then
    L6_6 = L5_5.urls
    L6_6 = L6_6[L3_3]
    L6_6 = L6_6.determination
    if L6_6 == 1 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
  end
end
L6_6 = mp
L6_6 = L6_6.getfilename
L7_7 = mp
L7_7 = L7_7.bitor
L7_7 = L7_7(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)
L6_6 = L6_6(L7_7, L7_7(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L6_6 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.getfilename
L7_7 = L7_7(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L7_7 == nil then
  return mp.CLEAN
end
L7_7 = string.lower(MpCommon.PathToWin32Path(L7_7))
if L7_7 == nil then
  return mp.CLEAN
end
if L7_7:find("^:\\program files\\", 2) or L7_7:find("^:\\program files %(x86%)\\", 2) or L7_7:find("^:\\windows\\", 2) or L7_7:find("^:\\voyagerbackups\\", 2) or L7_7:find("^:\\backup hta-prod-ta\\", 2) or L7_7:find("^:programdata\\hp\\rs\\data\\backup\\") then
  return mp.CLEAN
end
mp.set_mpattribute("MpDisableCaching")
MpCommon.AppendPersistContext(L7_7, "Lua:LuaHighRiskJSinZipWebVector.A", 0)
AppendToRollingQueue("LuaHighRiskJSinZipWebVector", L6_6, L7_7)
return mp.INFECTED
