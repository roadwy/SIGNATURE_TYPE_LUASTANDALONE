local L0_0, L1_1, L2_2
L0_0 = "remote_file_created_taint"
L1_1, L2_2 = nil, nil
if this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].utf8p1
  L2_2 = this_sigattrlog[3].ppid
end
if L1_1 then
  if isParentPackageManager(L2_2) then
    return mp.CLEAN
  end
  if isTainted(L1_1, L0_0) then
    return mp.INFECTED
  end
end
return mp.CLEAN
