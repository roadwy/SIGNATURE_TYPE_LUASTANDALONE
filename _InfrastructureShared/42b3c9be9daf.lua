local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and (string.match(L0_0, "/bin/%a*sh") or string.find(L0_0, "perl", 1, true) or string.find(L0_0, "python", 1, true) or string.sub(L0_0, 0, 6) == "/home/" or string.sub(L0_0, 0, 6) == "/root/" or string.sub(L0_0, 0, 5) == "/opt/" or string.sub(L0_0, 0, 5) == "/tmp/" or string.sub(L0_0, 0, 9) == "/var/tmp/" or string.sub(L0_0, 0, 11) == "/usr/share/") then
  return mp.INFECTED
end
return mp.CLEAN
