if MpCommon.RollingQueueCount("TamperingAlerts") ~= nil and MpCommon.RollingQueueCount("TamperingAlerts") >= 4 then
  return mp.INFECTED
end
if GetRollingQueueKeys("TamperingAlerts_LimitedSet_A") ~= nil or GetRollingQueueKeys("TamperingAlerts_LimitedSet_B") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
