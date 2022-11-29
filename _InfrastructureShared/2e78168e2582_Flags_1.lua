-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2e78168e2582_Flags_1 

-- params : ...
-- function num : 0
if epcode[1] == 232 and epcode[6] == 233 and (mp.get_mpattribute)("Necurs_ObfuscatorADs") then
  return mp.SUSPICIOUS
end
return mp.CLEAN

