-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_NSISWithPiriformCert_ObMpAttributes_ 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("MpIsExhaustiveScriptScan")
;
(mp.UfsSetMetadataBool)("LUAUFS:NSISHasPiriformCert", true)
return mp.INFECTED

