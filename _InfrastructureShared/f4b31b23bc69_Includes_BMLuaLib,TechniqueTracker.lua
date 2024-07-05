local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil and this_sigattrlog[1].ppid ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
  L1_1 = this_sigattrlog[1].ppid
end
if L0_0 == nil or #L0_0 < 3 or L1_1 == nil then
  return mp.CLEAN
end
if string.match(L0_0, "/%.[^/]+$") and IsDiscoveryCollectionThresholdMetLinux(L1_1) then
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
