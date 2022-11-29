-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/308784c816c88 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpCPlApplet") then
  return mp.INFECTED
end
return mp.LOWFI

