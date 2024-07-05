local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
  if string.find(L0_0, "sock_stream", 1, true) and string.find(L0_0, "subprocess.call", 1, true) and string.find(L0_0, "/bin/sh", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
