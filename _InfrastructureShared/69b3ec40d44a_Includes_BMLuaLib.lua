local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
end
if isTainted(L0_0, "remote_file_created_taint") then
  return mp.INFECTED
end
if string.sub(L0_0, 0, 5) == "/tmp/" or string.sub(L0_0, 0, 9) == "/var/tmp/" then
  return mp.INFECTED
end
return mp.CLEAN
