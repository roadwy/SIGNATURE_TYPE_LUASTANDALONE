-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/43b3f10b81e8_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
pcallEx("maceSendConfig", maceSendConfig, "mace_systembc")
pcallEx("reportRelatedBmHits", reportRelatedBmHits)
reportTimingData()
return mp.INFECTED

