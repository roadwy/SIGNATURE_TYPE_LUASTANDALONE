local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = MpCommon
L0_0 = L0_0.GetCurrentTimeT
L0_0 = L0_0()
L0_0 = L0_0 / 100000
if L0_0 > 100 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 140
L2_2 = 141
L3_3 = {}
L4_4 = false
L5_5 = false
L6_6 = false
L7_7 = this_sigattrlog
L7_7 = L7_7[1]
L7_7 = L7_7.matched
if L7_7 == true then
  L7_7 = this_sigattrlog
  L7_7 = L7_7[1]
  L7_7 = L7_7.p1
  if MpCommon.SNidSearch(L1_1, "00000000" .. L7_7) == true and MpCommon.SNidSearch(L1_1, "00000000" .. L7_7):sub(1, 20) == "!#AvoidList:NRI:JA3:" then
    L5_5 = true
    L6_6 = true
  end
  if L5_5 == false then
    L3_3.TlsJa3CHash = L7_7
  end
end
L7_7 = this_sigattrlog
L7_7 = L7_7[2]
L7_7 = L7_7.matched
if L7_7 == true then
  L7_7 = this_sigattrlog
  L7_7 = L7_7[2]
  L7_7 = L7_7.p1
  if MpCommon.SNidSearch(L2_2, "00000000" .. L7_7) == true and MpCommon.SNidSearch(L2_2, "00000000" .. L7_7):sub(1, 20) == "!#AvoidList:NRI:JA3:" then
    L5_5 = true
  end
  if L5_5 == false and L6_6 == false then
    L3_3.TlsJa3SHash = L7_7
    L4_4 = true
  end
end
if L4_4 == true then
  L7_7 = nri
  L7_7 = L7_7.AddTelemetry
  L7_7(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L3_3)
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
