-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c678541775f5 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.isexe and (mp.getfilesize)() <= 2918400 and (mp.getfilesize)() >= 1894400 then
  return mp.INFECTED
end
return mp.CLEAN

