-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5d784fff6f0e 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.SUSPICIOUS
end
;
(mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.AOV")
return mp.CLEAN

