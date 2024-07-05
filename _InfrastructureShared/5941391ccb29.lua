local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = nri
L0_0 = L0_0.GetConnectionString
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0
L3_3 = "SrcIp=(.-)%."
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0
L4_4 = "DestIp=(.-)%."
L2_2 = L2_2(L3_3, L4_4)
if L1_1 == L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.timestamp
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.timestamp
if L3_3 > L4_4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.timestamp
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.timestamp
L3_3 = L3_3 - L4_4
if L3_3 > 300000000 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4.useragent = nri.GetHttpRequestHeader("User-Agent")
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L4_4)
return mp.INFECTED
