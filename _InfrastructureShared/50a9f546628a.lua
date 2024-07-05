local L0_0, L1_1, L2_2, L3_3
L0_0 = nri
L0_0 = L0_0.GetHttpRequestHeader
L1_1 = "User-Agent"
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.lower
L2_2 = nri
L2_2 = L2_2.GetURI
L3_3 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L2_2())
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "?", 1, true)
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L1_1, "&signature_id=%d+&_action_=getbin", L2_2)
if L3_3 == nil then
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L0_0, "Guarded New Install System", 1, true)
  if L3_3 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = {}
L3_3.useragent = L0_0
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L3_3)
return mp.INFECTED
