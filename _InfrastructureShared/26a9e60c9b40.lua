-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/26a9e60c9b40 

-- params : ...
-- function num : 0
if (nri.GetHttpCommand)() ~= nri.HTTP_POST then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((nri.GetHttpRequestHeader)("User-Agent"))
if l_0_0 == "winhttp" then
  (nri.AddTelemetry)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH))
  return mp.INFECTED
end
return mp.CLEAN

