local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L3_3 = L2_2()
L3_3 = L1_1(L2_2, L3_3, L2_2())
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3, L2_2()))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\avast"
L1_1 = L1_1(L2_2, L3_3, 1, true)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "\\webnavigatorbrowser"
  L1_1 = L1_1(L2_2, L3_3, 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\ccleaner"
    L1_1 = L1_1(L2_2, L3_3, 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = "\\chrome.exe"
      L1_1 = L1_1(L2_2, L3_3, 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L3_3 = "\\webexplorer"
        L1_1 = L1_1(L2_2, L3_3, 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L3_3 = "\\teams\\"
          L1_1 = L1_1(L2_2, L3_3, 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L3_3 = "\\fmr."
            L1_1 = L1_1(L2_2, L3_3, 1, true)
          end
        end
      end
    end
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.utf8p1
L1_1 = L1_1(L2_2)
L2_2 = bm
L2_2 = L2_2.get_process_relationships
L3_3 = L2_2()
for _FORV_7_, _FORV_8_ in ipairs(L3_3) do
  if mp.bitand(_FORV_8_.reason_ex, bm.RELATIONSHIP_CREATED) == bm.RELATIONSHIP_CREATED and string.find(_FORV_8_.image_path, L1_1, 1, true) then
    TrackPidAndTechniqueBM(_FORV_8_.ppid, "T1055.002", "processinjection_target_u")
    bm.request_SMS(_FORV_8_.ppid, "M")
    bm.add_action("SmsAsyncScanEvent", 1000)
  end
end
return mp.INFECTED
