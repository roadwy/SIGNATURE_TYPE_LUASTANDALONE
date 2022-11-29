-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f361f904643a 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_suspicious_dosheader") then
  return mp.INFECTED
end
return mp.CLEAN

