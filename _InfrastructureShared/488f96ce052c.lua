-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/488f96ce052c 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:(ActiveMime)") or (mp.get_mpattribute)("PACKED_WITH:(Base64)") then
  return mp.INFECTED
end
return mp.LOWFI

