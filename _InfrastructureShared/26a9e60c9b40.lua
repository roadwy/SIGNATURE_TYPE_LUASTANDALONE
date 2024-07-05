if nri.GetHttpCommand() ~= nri.HTTP_POST then
  return mp.CLEAN
end
if string.lower(nri.GetHttpRequestHeader("User-Agent")) == "winhttp" then
  nri.AddTelemetry(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH))
  return mp.INFECTED
end
return mp.CLEAN
