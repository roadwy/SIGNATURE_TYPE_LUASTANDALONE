-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f2780e6a28b 

-- params : ...
-- function num : 0
if (string.find)((mp.getfilename)(), "%-%>%(RarSfx%)%-%>%w+%.vbs$") == nil then
  return mp.CLEAN
end
return mp.INFECTED

