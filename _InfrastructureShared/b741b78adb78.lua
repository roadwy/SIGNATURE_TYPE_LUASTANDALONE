local L0_0, L1_1, L2_2, L3_3
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
L2_2 = L2_2(L3_3, "DestIp=(.-)%.")
if L1_1 == L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3.useragent = nri.GetHttpRequestHeader("User-Agent")
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L3_3)
return mp.INFECTED
