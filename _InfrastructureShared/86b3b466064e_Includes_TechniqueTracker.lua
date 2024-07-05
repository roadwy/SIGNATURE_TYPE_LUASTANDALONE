local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[2]
      L0_0 = L0_0.utf8p2
      if L0_0 ~= nil then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[1]
        L1_1 = L1_1.utf8p2
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = string
        L2_2 = L2_2.lower
        L3_3 = this_sigattrlog
        L3_3 = L3_3[2]
        L3_3 = L3_3.utf8p2
        L2_2 = L2_2(L3_3)
        L3_3 = string
        L3_3 = L3_3.match
        L4_4 = L1_1
        L3_3 = L3_3(L4_4, "\\classes\\(.+)\\shell")
        if L0_0 ~= L3_3 then
          L4_4 = mp
          L4_4 = L4_4.CLEAN
          return L4_4
        end
        L4_4 = string
        L4_4 = L4_4.len
        L4_4 = L4_4(L2_2)
        if L4_4 < 4 then
          L4_4 = mp
          L4_4 = L4_4.CLEAN
          return L4_4
        end
        L4_4 = string
        L4_4 = L4_4.find
        L4_4 = L4_4(L2_2, "%1", 1, true)
        if L4_4 then
          L4_4 = mp
          L4_4 = L4_4.CLEAN
          return L4_4
        end
        L4_4 = TrackPidAndTechniqueBM
        L4_4("BM", "T1548.002", "uac_bypass_src")
        L4_4 = {}
        table.insert(L4_4, L2_2)
        if versioning.IsSeville() and 4 <= versioning.GetCloudBlockLevel() then
          MpCommon.SetPersistContextNoPath("UACBypassExp.T!ShieldUp", L4_4, 300)
          return mp.INFECTED
        end
        MpCommon.SetPersistContextNoPath("UACBypassExp.T!regset", L4_4, 10)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
