-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b39beb8ac8 

-- params : ...
-- function num : 0
if (mp.get_sigattr_event_count)(16385) > 2 or (mp.get_sigattr_event_count)(16386) > 2 then
  return mp.INFECTED
end
return mp.CLEAN

