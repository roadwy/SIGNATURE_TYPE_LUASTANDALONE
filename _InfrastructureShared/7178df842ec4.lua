-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7178df842ec4 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_amd64_image") and (mp.get_mpattribute)("pea_isdll") then
  return mp.INFECTED
end
return mp.CLEAN

