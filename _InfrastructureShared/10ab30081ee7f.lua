local L0_0, L1_1
if this_sigattrlog[10].matched and this_sigattrlog[10].utf8p2 ~= nil and this_sigattrlog[10].ppid ~= nil then
  L0_0 = string.lower(this_sigattrlog[10].utf8p2)
  L1_1 = MpCommon.GetProcessElevationAndIntegrityLevel(this_sigattrlog[10].ppid)
end
if L0_0 == nil or #L0_0 <= 20 or L1_1 == nil then
  return mp.CLEAN
end
if L1_1.IntegrityLevel < MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.CLEAN
end
if string.find(L0_0, "-enc", 1, true) ~= nil or string.find(L0_0, ".downloadstring(", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
