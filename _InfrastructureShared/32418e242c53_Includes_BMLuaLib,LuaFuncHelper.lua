local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p1
  end
end
if L0_0 ~= nil then
  L1_1 = {
    L2_2,
    L3_3,
    "InputStream",
    "webapps//ROOT//",
    "class",
    "suffix",
    "tomcatwar",
    "whoami",
    "pwd"
  }
  L2_2 = "getParameter"
  L3_3 = "cmd="
  L2_2 = contains
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, L1_1)
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = nri
  L2_2 = L2_2.GetRawRequestBlob
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.len
    L3_3 = L3_3(L2_2)
    if L3_3 < 4096 then
      L3_3 = {}
      L3_3.NRI_ResponseBlob = tohex(L2_2)
      nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L3_3)
    end
  end
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
