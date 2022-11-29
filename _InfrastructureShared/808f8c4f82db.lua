-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/808f8c4f82db 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MHSTR:MacroExecute") then
  return mp.INFECTED
end
return mp.CLEAN

