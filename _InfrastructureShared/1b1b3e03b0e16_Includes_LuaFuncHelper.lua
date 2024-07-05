local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
      L0_0 = L0_0(L1_1)
      for L4_4 = 1, L2_2.SIGATTR_LOG_SZ do
        L5_5 = sigattr_head
        L5_5 = L5_5[L4_4]
        L5_5 = L5_5.matched
        if L5_5 then
          L5_5 = sigattr_head
          L5_5 = L5_5[L4_4]
          L5_5 = L5_5.attribute
          if L5_5 == 16400 then
            L5_5 = string
            L5_5 = L5_5.lower
            L6_6 = sigattr_head
            L6_6 = L6_6[L4_4]
            L6_6 = L6_6.utf8p1
            L5_5 = L5_5(L6_6)
            L6_6 = string
            L6_6 = L6_6.match
            L6_6 = L6_6(L5_5, "\\([^\\]+)$")
            if string.find(L0_0, L6_6, 1, true) and IsKeyInRollingQueue("SuspExeFileDroppedViaSMB", L5_5, true) then
              if string.find(L5_5, "psexesvc", 1, true) or string.find(L5_5, "winexesvc", 1, true) or string.find(L5_5, "framepkg", 1, true) or string.find(L5_5, "paexec", 1, true) or string.find(L5_5, "pskllsvc", 1, true) or string.find(L5_5, "eset-remote", 1, true) or string.find(L5_5, "mbremoteexec", 1, true) or string.find(L5_5, "medplsvc", 1, true) or string.find(L5_5, "remcomsvc", 1, true) or string.find(L5_5, "remsvc", 1, true) or string.find(L5_5, "retinalss", 1, true) or string.find(L5_5, "tenable_mw_scan_", 1, true) or string.find(L5_5, "pdqinventory", 1, true) or string.find(L5_5, "pdqdeployrunner", 1, true) or string.find(L5_5, "\\veeam", 1, true) or string.find(L5_5, "\\patchagent", 1, true) or string.find(L5_5, "\\qualys", 1, true) or string.find(L5_5, "\\sdpod", 1, true) or string.find(L5_5, "\\bfcrx", 1, true) or string.find(L5_5, "tniservice", 1, true) then
                return mp.CLEAN
              end
              mp.ReportLowfi(L5_5, 3414579111)
              bm.add_related_file(L5_5)
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
