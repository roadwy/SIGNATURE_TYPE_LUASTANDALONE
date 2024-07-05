local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[1]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[1]
      L0_0 = L0_0.utf8p1
      L1_1 = this_sigattrlog
      L1_1 = L1_1[1]
      L1_1 = L1_1.utf8p2
      L2_2 = {}
      table.insert(L2_2, L0_0)
      table.insert(L2_2, L1_1)
      MpCommon.SetPersistContextNoPath("dllhijack_winbio_A", L2_2, 480)
      bm.add_related_file(L0_0)
      bm.add_threat_file(L1_1)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
