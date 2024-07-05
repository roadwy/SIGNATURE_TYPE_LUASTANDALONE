local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = string
      L0_0 = L0_0.lower
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L1_1 = L1_1.utf8p2
      L0_0 = L0_0(L1_1)
      L2_2 = L0_0
      L1_1 = L0_0.match
      L3_3 = "([^\\]+)$"
      L1_1 = L1_1(L2_2, L3_3)
      L2_2 = bm
      L2_2 = L2_2.get_process_relationships
      L3_3 = L2_2()
      for L7_7, L8_8 in L4_4(L5_5) do
        L9_9 = string
        L9_9 = L9_9.lower
        L10_10 = MpCommon
        L10_10 = L10_10.PathToWin32Path
        L11_11 = L8_8.image_path
        L12_12 = L10_10(L11_11)
        L9_9 = L9_9(L10_10, L11_11, L12_12, L10_10(L11_11))
        L10_10 = L8_8.reason
        L11_11 = bm
        L11_11 = L11_11.RELATIONSHIP_CREATED
        if L10_10 == L11_11 then
          L10_10 = string
          L10_10 = L10_10.find
          L11_11 = L9_9
          L12_12 = L1_1
          L10_10 = L10_10(L11_11, L12_12, 1, true)
          if L10_10 then
            L10_10 = MpCommon
            L10_10 = L10_10.QueryPersistContext
            L11_11 = L9_9
            L12_12 = "PsExecServiceStandardName"
            L10_10 = L10_10(L11_11, L12_12)
            if L10_10 then
              L11_11 = bm
              L11_11 = L11_11.get_process_relationships
              L12_12 = L8_8.ppid
              L12_12 = L11_11(L12_12)
              for _FORV_16_, _FORV_17_ in ipairs(L12_12) do
                if _FORV_17_.reason == bm.RELATIONSHIP_CREATED then
                  bm.add_related_process(_FORV_17_.ppid)
                  TrackPidAndTechniqueBM(_FORV_17_.ppid, "T1021.002", "psexec_remoteservice_created_b")
                end
              end
              TrackPidAndTechniqueBM(L8_8.ppid, "T1021.002", "remoteservice_svc_b")
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
