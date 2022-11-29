-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/77b333925e9b 

-- params : ...
-- function num : 0
if (string.find)(((bm.get_current_process_startup_info)()).commandline, "svchost.exe -k GPSvcGroup", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

