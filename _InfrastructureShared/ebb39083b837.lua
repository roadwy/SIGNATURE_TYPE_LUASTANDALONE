-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ebb39083b837 

-- params : ...
-- function num : 0
if (mp.get_sigattr_event_count)(16395) > 10 then
  return mp.INFECTED
end
return mp.CLEAN

