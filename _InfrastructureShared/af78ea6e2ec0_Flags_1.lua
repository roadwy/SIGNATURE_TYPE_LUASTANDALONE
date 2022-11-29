-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/af78ea6e2ec0_Flags_1 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 6 and (pesecs[6]).Name == ".rsrc" and (pesecs[6]).VirtualSize >= 199968 and (pesecs[6]).VirtualSize <= 200144 then
  return mp.INFECTED
end
return mp.SUSPICIOUS

