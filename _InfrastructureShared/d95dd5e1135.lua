-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d95dd5e1135 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("CallsZwQuerySystemInformation") then
  (mp.set_mpattribute)("PEBMPAT:AntiEmuGetCopyOnWriteCount")
end
return mp.CLEAN

