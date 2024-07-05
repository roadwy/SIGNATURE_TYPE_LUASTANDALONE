local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
  if L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "prefix=tomcatwar", 1, true)
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "java.io.inputstream", 1, true)
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "class.module.classloader", 1, true)
      if L1_1 then
        L1_1 = {}
        L1_1.useragent = nri.GetHttpRequestHeader("User-Agent")
        nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L1_1)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
