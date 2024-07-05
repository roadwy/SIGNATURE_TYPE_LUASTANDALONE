local L0_0
L0_0 = {}
L0_0.useragent = nri.GetHttpRequestHeader("User-Agent")
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L0_0)
return mp.INFECTED
