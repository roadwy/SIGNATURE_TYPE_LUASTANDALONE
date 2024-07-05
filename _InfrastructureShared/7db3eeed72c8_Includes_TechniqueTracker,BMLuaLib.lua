local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = bm
    L0_0 = L0_0.get_process_relationships
    L1_1 = L0_0()
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = L6_6.image_path
      if L7_7 ~= nil then
        L7_7 = L6_6.ppid
        if L7_7 ~= nil then
          L7_7 = string
          L7_7 = L7_7.find
          L7_7 = L7_7(string.lower(L6_6.image_path), "\\rundll32.exe", 1, true)
          if L7_7 then
            L7_7 = TrackPidAndTechniqueBM
            L7_7(L6_6.ppid, "T1218.011", "Proxy_Exec")
            L7_7 = extractDllForRegproc
            L7_7 = L7_7(L6_6.cmd_line)
            if L7_7 then
              L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
              if sysio.IsFileExists(L7_7) and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L7_7) ~= 0 and (sysio.GetFileLastWriteTime(L7_7) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L7_7) / 10000000 - 11644473600) > 3600) then
                bm.add_related_file(L7_7)
                return mp.INFECTED
              end
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
