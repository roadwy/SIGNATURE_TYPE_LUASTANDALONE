-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9f61939b8724 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:Renos_msposer")
if (mp.get_mpattribute)("PEPCODE:VirTool:Win32/Obfuscator.ED") then
  return mp.INFECTED
end
return mp.CLEAN

