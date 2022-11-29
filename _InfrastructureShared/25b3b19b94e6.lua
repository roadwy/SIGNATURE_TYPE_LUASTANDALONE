-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b3b19b94e6 

-- params : ...
-- function num : 0
if ((bm.get_current_process_startup_info)()).integrity_level <= MpCommon.SECURITY_MANDATORY_LOW_RID then
  return mp.INFECTED
end
return mp.CLEAN

