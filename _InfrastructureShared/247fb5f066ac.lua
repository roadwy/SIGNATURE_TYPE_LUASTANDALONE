-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/247fb5f066ac 

-- params : ...
-- function num : 0
if pevars.sigaddr == pehdr.ImageBase + pehdr.AddressOfEntryPoint then
  return mp.INFECTED
end
return mp.CLEAN

