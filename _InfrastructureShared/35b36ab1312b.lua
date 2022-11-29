-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b36ab1312b 

-- params : ...
-- function num : 0
if MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= ((bm.get_current_process_startup_info)()).integrity_level then
  return mp.CLEAN
end
return mp.INFECTED

