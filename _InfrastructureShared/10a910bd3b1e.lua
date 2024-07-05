local L0_0, L1_1, L2_2
L0_0 = nri
L0_0 = L0_0.GetHttpCommand
L0_0 = L0_0()
L1_1 = "verb_"
L2_2 = tostring
L2_2 = L2_2(L0_0)
L1_1 = L1_1 .. L2_2
L2_2 = nri
L2_2 = L2_2.HTTP_GET
if L0_0 == L2_2 then
  L1_1 = "GET"
else
  L2_2 = nri
  L2_2 = L2_2.HTTP_POST
  if L0_0 == L2_2 then
    L1_1 = "POST"
  end
end
L2_2 = {}
L2_2.verb = L1_1
L2_2.useragent = nri.GetHttpRequestHeader("User-Agent")
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), mp.bitor(nri.Telemetry_QUERY, nri.Telemetry_REFERER)), L2_2)
return mp.INFECTED
