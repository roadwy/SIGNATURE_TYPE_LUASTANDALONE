-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a3618fb0d126 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:WinNT/Bancos.K") then
  return mp.INFECTED
end
return mp.SUSPICIOUS

