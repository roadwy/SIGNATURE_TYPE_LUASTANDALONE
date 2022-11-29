-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/40788fff3a4d 

-- params : ...
-- function num : 0
if peattributes.suspicious_image_version and peattributes.suspicious_timestamp and peattributes.isdll and (mp.getfilesize)() < 325888 then
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

