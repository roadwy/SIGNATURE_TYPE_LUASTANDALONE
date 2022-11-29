-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/WannaCrypt 

-- params : ...
-- function num : 0
(sysio.StopService)("mssecsvc2.0")
;
(sysio.DeleteService)("mssecsvc2.0")

