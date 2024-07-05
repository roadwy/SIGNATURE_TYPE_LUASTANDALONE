if not mp.IsHipsRuleEnabled("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if ({
  ["iexplore.exe"] = true,
  ["firefox.exe"] = true,
  ["chrome.exe"] = true,
  ["opera.exe"] = true,
  ["microsoftedge.exe"] = true,
  ["browser_broker.exe"] = true,
  ["antimalware.tools.testhips.exe"] = true
})[string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))] == nil then
  return mp.CLEAN
end
mp.set_mpattribute("MpDisableCaching")
return mp.CLEAN
