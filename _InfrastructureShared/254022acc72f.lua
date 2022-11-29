-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/254022acc72f 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.get_mpattribute)("RPF:UrsnifDLL") then
  if peattributes.amd64_image then
    (mp.changedetectionname)(805306417)
    return mp.INFECTED
  end
  return mp.INFECTED
end
return mp.CLEAN

