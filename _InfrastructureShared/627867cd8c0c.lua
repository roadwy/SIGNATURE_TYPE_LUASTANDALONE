-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/627867cd8c0c 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Clean:Cert:KLab") then
  return mp.CLEAN
end
return mp.INFECTED

