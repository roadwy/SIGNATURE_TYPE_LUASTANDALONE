if GetRollingQueueKeyValue("IsExchgServerTainted", "MpEnableTaintTracking") == nil then
  AppendToRollingQueue("IsExchgServerTainted", "MpEnableTaintTracking", 1, 604800)
end
return mp.CLEAN
