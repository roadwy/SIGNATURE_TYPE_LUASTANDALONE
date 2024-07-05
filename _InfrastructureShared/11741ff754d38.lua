local L0_0
L0_0 = {}
L0_0.referer = nri.GetHttpRequestHeader("referer")
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L0_0)
return mp.INFECTED
