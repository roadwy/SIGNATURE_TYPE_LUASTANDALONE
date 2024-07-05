local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L0_0 = L2_2.utf8p1
  end
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.np2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L1_1 = L2_2.np2
  end
end
if not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L0_0)
L0_0 = L2_2
if L1_1 == 3 or L1_1 == 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L0_0 == "customblocklist" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2.useragent = nri.GetHttpRequestHeader("User-Agent")
L2_2.SmartScreen_category = L0_0
L2_2.SmartScreen_determination = L1_1
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L2_2)
return mp.INFECTED
