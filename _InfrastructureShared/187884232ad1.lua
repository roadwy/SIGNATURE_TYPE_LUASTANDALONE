-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/187884232ad1 

-- params : ...
-- function num : 0
if peattributes.is_process then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:UpatreFragA_Nonprocess")
return mp.CLEAN

