-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_MacroFileSizeLess1MB_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 524288 then
  (mp.set_mpattribute)("MACRO_FILE_SIZE:L0.5MB")
end
return mp.CLEAN

