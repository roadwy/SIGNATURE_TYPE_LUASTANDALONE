local L0_0
L0_0 = nri
L0_0 = L0_0.GetHttpCommand
L0_0 = L0_0()
if L0_0 ~= nri.HTTP_POST then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L0_0.useragent = nri.GetHttpRequestHeader("User-Agent")
L0_0["accept-encoding"] = nri.GetHttpRequestHeader("Accept-Encoding")
L0_0.host = nri.GetHttpRequestHeader("Host")
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L0_0)
return mp.INFECTED
