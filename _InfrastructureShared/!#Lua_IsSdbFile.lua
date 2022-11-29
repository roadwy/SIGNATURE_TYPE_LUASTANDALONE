-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_IsSdbFile 

-- params : ...
-- function num : 0
if (mp.readu_u32)(headerpage, 9) == 1717724275 then
  (mp.set_mpattribute)("Lua:IsSdbFile")
end
return mp.CLEAN

