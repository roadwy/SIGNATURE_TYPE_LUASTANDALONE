-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/72783d7eaca1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:VirTool:Win32/Injector.gen!EE")
return mp.CLEAN

