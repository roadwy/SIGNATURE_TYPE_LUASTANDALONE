-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__W3WP_BackdoorDLL/53222756 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:Trojan:Win32/W3WP_BackdoorDLL") then
  return mp.CLEAN
end
return mp.INFECTED

