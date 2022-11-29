-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/165b31d4ba355 

-- params : ...
-- function num : 0
if (mp.get_sigattr_event_count)(16384) > 4 and (mp.get_sigattr_event_count)(16386) > 4 then
  return mp.INFECTED
end
return mp.CLEAN

