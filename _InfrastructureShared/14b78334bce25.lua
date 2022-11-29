-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14b78334bce25 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SIGATTR:DelphiFile") then
  return mp.CLEAN
end
return mp.INFECTED

