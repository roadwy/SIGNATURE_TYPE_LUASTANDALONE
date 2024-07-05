if not mp.get_mpattribute("HSTR:Trojan:Win32/W3WP_BackdoorDLL") then
  return mp.CLEAN
end
return mp.INFECTED
