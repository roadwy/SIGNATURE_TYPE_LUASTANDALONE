local L0_0, L1_1
L0_0 = "queue_chmodremotefilecopy_a"
L1_1 = nil
if this_sigattrlog[1].matched then
  AppendToRollingQueue(L0_0, "sshbruteforce", 1, 600)
elseif this_sigattrlog[2].matched then
  AppendToRollingQueue(L0_0, "remotefilecopy", 1, 600)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[3].utf8p2)
  AppendToRollingQueue(L0_0, "chmodexec", L1_1, 600)
end
if IsKeyInRollingQueue(L0_0, "sshbruteforce", true) and IsKeyInRollingQueue(L0_0, "remotefilecopy", true) and IsKeyInRollingQueue(L0_0, "chmodexec", true) and L1_1 ~= nil and isTainted(L1_1, "remote_file_created_taint") then
  return mp.INFECTED
end
return mp.CLEAN
