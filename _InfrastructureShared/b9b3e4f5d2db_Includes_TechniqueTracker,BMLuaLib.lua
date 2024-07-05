local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_connection_string
L0_0 = L0_0()
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "DestIp=([^;]+)")
  if not L1_1 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = IsHostAttackServer
  L2_2 = L2_2(L1_1)
  if L2_2 then
    L2_2 = nil
    if this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
      L2_2 = this_sigattrlog[6].utf8p2
    end
    if L2_2 ~= nil then
      bm.request_SMS(this_sigattrlog[6].ppid, "L")
      bm.trigger_sig("active_attacker_server_connection_a", L0_0, this_sigattrlog[6].ppid)
      TrackPidAndTechniqueBM("BM", "T1020", "active_attacker_server_connection_a")
      bm_AddRelatedFileFromCommandLine(L2_2, nil, nil, 1)
      bm.set_detection_string("AttackerServer:" .. L1_1)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
