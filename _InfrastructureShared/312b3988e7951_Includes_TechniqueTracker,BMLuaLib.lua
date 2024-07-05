local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  "\\GoogleDriveFS.exe$",
  "\\LINE\\bin\\current\\LINE.exe$",
  "\\LineCall.exe$",
  "\\Telegram Desktop\\Telegram.exe$",
  "\\WhatsApp.exe$"
}
L2_2 = "\\Microsoft Office\\root\\Office"
L6_6 = "\\program files.-agent.-.exe$"
L7_7 = "\\windows\\system32\\MdmDiagnosticsTool.exe$"
L8_8 = "\\MonAgentCore.exe$"
L9_9 = "\\DNF\\DNF.exe$"
L10_10 = "\\AutomationAnywhere.ManagedDLLWrapper.exe$"
L2_2 = L0_0.lower
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = string
  L8_8 = L8_8.find
  L9_9 = L2_2
  L10_10 = L7_7.lower
  L10_10 = L10_10(L7_7)
  L8_8 = L8_8(L9_9, L10_10, 1, false)
  if L8_8 then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
end
L7_7 = L3_3(L4_4, L5_5)
if L3_3 == true then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = IsLegacyOrgMachine
L8_8 = L8_8()
if not L8_8 then
  L8_8 = IsTechniqueObservedForPid
  L9_9 = "BM"
  L10_10 = "ttexclusion"
  L8_8 = L8_8(L9_9, L10_10)
  if not L8_8 then
    L8_8 = IsTacticObservedForPid
    L9_9 = "BM"
    L10_10 = "ttexclusion"
    L8_8 = L8_8(L9_9, L10_10)
    if not L8_8 then
      L8_8 = IsTacticObservedForPid
      L9_9 = "BM"
      L10_10 = "ttexclusion_cln"
      L8_8 = L8_8(L9_9, L10_10)
    end
  end
elseif L8_8 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = nil
L9_9 = this_sigattrlog
L9_9 = L9_9[16]
L9_9 = L9_9.matched
if L9_9 then
  L9_9 = parseNetworkVolumeEvent
  L10_10 = this_sigattrlog
  L10_10 = L10_10[16]
  L9_9 = L9_9(L10_10)
  L8_8 = L9_9
end
L9_9 = isnull
L10_10 = L8_8
L9_9 = L9_9(L10_10)
if L9_9 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = isPublicIP
L10_10 = L8_8.DestIp
L9_9 = L9_9(L10_10)
if not L9_9 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = bm
L9_9 = L9_9.GetOverallTrafficVolumes
L9_9 = L9_9()
L10_10 = isnull
L10_10 = L10_10(L9_9)
if L10_10 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = tonumber
L10_10 = L10_10(L8_8.Bout)
if not (L10_10 < 1048576) then
  L10_10 = L9_9.outgoing_req
  if not (L10_10 < 10485760) then
    L10_10 = tonumber
    L10_10 = L10_10(L8_8.Bin)
    if not (L10_10 > tonumber(L8_8.Bout)) then
      L10_10 = L9_9.incoming_response
    end
  end
elseif L10_10 > L9_9.outgoing_req then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = nil
if this_sigattrlog[18].matched and this_sigattrlog[18].utf8p1 ~= nil then
  L10_10 = string.match(this_sigattrlog[18].utf8p1:lower(), "\\.+(%..+)$")
end
add_parents()
reportRelatedBmHits()
addOverallNetworkVolume()
bm.add_related_string("SuspiciosProcessAge", L4_4, bm.RelatedStringBMReport)
bm.add_related_string("SensitiveFileExt", L10_10, bm.RelatedStringBMReport)
TrackPidAndTechniqueBM("BM", "T1567", "ExfilOverWeb")
return mp.INFECTED
