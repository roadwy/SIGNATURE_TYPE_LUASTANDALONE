local L0_0
L0_0 = {}
L0_0.server = nri.GetHttpRequestHeader("Server")
L0_0.accept = nri.GetHttpRequestHeader("Accept")
L0_0["accept-encoding"] = nri.GetHttpRequestHeader("Accept-Encoding")
L0_0.connection = nri.GetHttpRequestHeader("Connection")
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L0_0)
return mp.INFECTED
