local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.utf8p2
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p1
    if L0_0 ~= nil and L0_0 ~= "" and L1_1 ~= nil and L1_1 ~= "" then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L0_0, L1_1, 1, true)
      if L2_2 then
        L2_2 = "mac_scp_file_transfer"
        AppendToRollingQueue(L2_2, "file_transferred_path", L1_1)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
