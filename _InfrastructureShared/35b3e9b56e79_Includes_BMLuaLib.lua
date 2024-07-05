local L0_0
if IsADConnectRole() then
  L0_0 = "Ad Connect"
elseif IsADConnectCloudSyncRole() then
  L0_0 = "Ad Connect Cloud Sync"
elseif IsADFSRole() then
  L0_0 = "ADFS"
end
if L0_0 == nil then
  return mp.CLEAN
end
bm.add_related_string("HybridServerRole", L0_0, bm.RelatedStringBMReport)
return mp.INFECTED
