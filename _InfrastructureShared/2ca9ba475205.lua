local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(nri.GetHttpRequestHeader("referer"))
if string.find(L0_0, "live.com", 1, true) or string.find(L0_0, "bing.com", 1, true) or string.find(L0_0, "msn.com", 1, true) or string.find(L0_0, "yahoo.com", 1, true) or string.find(L0_0, "windowssearch.com", 1, true) or string.find(L0_0, "conduit.com", 1, true) then
  return mp.CLEAN
end
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), mp.bitor(nri.Telemetry_QUERY, nri.Telemetry_REFERER)))
return mp.INFECTED
