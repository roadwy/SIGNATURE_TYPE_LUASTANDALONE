-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2d29d1739cf0 

-- params : ...
-- function num : 0
if (string.find)((mp.getfilename)(), "%-%>%(%w+Sfx%)%-%>CMT$") == nil then
  return mp.CLEAN
end
return mp.INFECTED

