local L0_0, L1_1
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p1
end
if this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L1_1 = this_sigattrlog[4].utf8p2
end
if L1_1 ~= nil and (string.find(L1_1, "-iname", 1, true) or string.find(L1_1, "-name", 1, true) or string.find(L1_1, "-iregex", 1, true) or string.find(L1_1, "-regex", 1, true)) and (string.find(L1_1, "/root/", 1, true) or string.find(L1_1, "/home/ ", 1, true)) then
  if isTainted(L0_0, "remote_file_created_taint") then
    return mp.INFECTED
  end
  if string.sub(L0_0, 0, 5) == "/tmp/" or string.sub(L0_0, 0, 9) == "/var/tmp/" or string.sub(L0_0, 0, 9) == "/dev/shm/" then
    return mp.INFECTED
  end
end
return mp.CLEAN
