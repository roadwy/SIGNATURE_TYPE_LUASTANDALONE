local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L2_2 = this_sigattrlog
L2_2 = L2_2[9]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[9]
  L2_2 = L2_2.ppid
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[9]
    L0_0 = L2_2.ppid
    L2_2 = this_sigattrlog
    L2_2 = L2_2[9]
    L1_1 = L2_2.utf8p2
  end
else
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "DestIp=([^;]*);"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 30
L4_4 = "Outgoing_SSH_Brute_"
L5_5 = tostring
L6_6 = L0_0
L5_5 = L5_5(L6_6)
L6_6 = "_"
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = 0
L6_6 = 10
L7_7 = L4_4
L7_7 = L7_7 .. L2_2
if MpCommon.AtomicCounterValue(L7_7) == nil then
  MpCommon.AtomicCounterSet(L7_7, 1, L3_3)
else
  L5_5 = MpCommon.AtomicCounterAdd(L7_7, 1) + 1
  if L6_6 < L5_5 then
    TrackPidAndTechniqueBM(L0_0, "T1110", "CredentialAccess")
    return mp.INFECTED
  end
end
return mp.CLEAN
