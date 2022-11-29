-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/254068a7854f 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 1000000 then
  return mp.CLEAN
end
return mp.LOWFI

