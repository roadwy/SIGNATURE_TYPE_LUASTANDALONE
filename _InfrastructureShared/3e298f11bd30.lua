-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3e298f11bd30 

-- params : ...
-- function num : 0
if (string.find)(((mp.getfilename)()):lower(), "appdata\\roaming\\%l+\\[^\\]+$") then
  return mp.INFECTED
end
return mp.CLEAN

