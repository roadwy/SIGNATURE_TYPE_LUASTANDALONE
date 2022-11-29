-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1dbb384a5afdc 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Behavior:Win32/SysCodeInjected.A") then
  return mp.CLEAN
end
return mp.INFECTED

