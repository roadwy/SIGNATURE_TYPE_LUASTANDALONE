-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/657836e2f203 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:ZwangiExe")
if ((hstrlog[1]).matched and 1 or 0) + ((hstrlog[2]).matched and 1 or 0) + ((hstrlog[3]).matched and 1 or 0) >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

