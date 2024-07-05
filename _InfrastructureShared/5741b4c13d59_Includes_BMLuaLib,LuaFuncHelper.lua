local L0_0, L1_1
L0_0 = {}
L1_1 = nri
L1_1 = L1_1.GetHttpRequestHeader
L1_1 = L1_1("User-Agent")
L0_0.useragent = L1_1
L1_1 = nri
L1_1 = L1_1.GetRawRequestBlob
L1_1 = L1_1()
if L1_1 ~= nil and string.len(L1_1) < 1024 then
  L0_0.NRI_RequestBlob = tohex(L1_1)
end
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L0_0)
return mp.INFECTED
