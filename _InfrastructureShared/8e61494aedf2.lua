-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8e61494aedf2 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if (hstrlog[1]).matched then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

