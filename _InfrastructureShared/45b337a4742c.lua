-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b337a4742c 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 720000000000 then
  return mp.CLEAN
end
return mp.INFECTED

