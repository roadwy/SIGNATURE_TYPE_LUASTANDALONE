local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 6000000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.utf8p1
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p2
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.ContextualExpandEnvironmentVariables
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.IsKnownFriendlyFile
L4_4 = L2_2
L5_5 = true
L3_3 = L3_3(L4_4, L5_5, true)
if L3_3 ~= nil and L3_3 ~= false then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.QueryPersistContext
L5_5 = L2_2
L4_4 = L4_4(L5_5, "NewPECreatedNoCert")
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = TrackPidAndTechniqueBM
L5_5("BM", "T1071", "command_control_a")
L5_5 = {}
L5_5.src_ip = string.match(L1_1, "SrcIp=(.-)%.")
L5_5.src_port = string.match(L1_1, "SrcPort=(.-)%.")
L5_5.dst_ip = string.match(L1_1, "DestIp=(.-)%.")
L5_5.dst_port = string.match(L1_1, "DestPort=(.-)%.")
if L5_5.src_ip == L5_5.dst_ip then
  return mp.CLEAN
end
if next(L5_5) then
  bm.set_detection_string(safeJsonSerialize(L5_5))
end
return mp.INFECTED
