if GetRollingQueue("mace_atosev") == nil then
  return mp.CLEAN
end
pcallEx("BlockC2Connection", BlockC2Connection, "cobaltstrike_h")
pcallEx("maceSendConfig", maceSendConfig, "mace_atosev")
pcallEx("reportRelatedBmHits", reportRelatedBmHits)
pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, false, true, "SMS_H", 5000, "Behavior:Win32/CobaltStrike.H!sms")
reportPcallEx()
return mp.INFECTED
