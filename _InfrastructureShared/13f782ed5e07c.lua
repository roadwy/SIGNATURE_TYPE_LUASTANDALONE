-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/13f782ed5e07c 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:BrowserModifier:Win32/SpigotSearchProtection")
if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
return mp.CLEAN

