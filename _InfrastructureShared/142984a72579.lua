-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/142984a72579 

-- params : ...
-- function num : 0
if (string.find)((((mp.GetLnkInfo)()).Arguments):lower(), "comspec", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

