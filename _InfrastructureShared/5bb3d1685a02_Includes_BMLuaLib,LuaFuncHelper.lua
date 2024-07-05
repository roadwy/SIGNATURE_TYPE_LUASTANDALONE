local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = {}
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.SIGATTR_LOG_SZ
    if L1_1 == 0 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = pcall
    L2_2 = MpCommon
    L2_2 = L2_2.PathToWin32Path
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p1
    L2_2 = L1_1(L2_2, L3_3)
    if L2_2 == nil or L2_2 == "" then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
    L3_3 = string
    L3_3 = L3_3.match
    L4_4 = L2_2
    L5_5 = "\\([^\\]+)$"
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 == nil or L3_3 == "" then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L5_5 = L3_3
    L4_4 = L3_3.find
    L6_6 = "-- how to open these files --.txt"
    L7_7 = 1
    L8_8 = true
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
    if not L4_4 then
      L5_5 = L3_3
      L4_4 = L3_3.find
      L6_6 = "notags.html"
      L7_7 = 1
      L8_8 = true
      L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
      if not L4_4 then
        L5_5 = L3_3
        L4_4 = L3_3.find
        L6_6 = "nocomment.html"
        L7_7 = 1
        L8_8 = true
        L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
      end
    elseif L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = sysio
    L4_4 = L4_4.GetFileSize
    L5_5 = L2_2
    L4_4 = L4_4(L5_5)
    L5_5 = {}
    L5_5[L2_2] = 1
    L6_6 = table
    L6_6 = L6_6.insert
    L7_7 = L0_0
    L8_8 = {}
    L8_8.NotePath = L2_2
    L8_8.NoteName = L3_3
    L8_8.NoteSize = L4_4
    L6_6(L7_7, L8_8)
    L6_6 = ""
    L7_7 = ""
    L8_8 = 1
    L9_9 = 0
    for _FORV_13_ = mp.SIGATTR_LOG_SZ, 1, -1 do
      if (sigattr_tail[_FORV_13_].attribute == 16384 or sigattr_tail[_FORV_13_].attribute == 16386) and sigattr_tail[_FORV_13_].utf8p1 then
        L1_1, L6_6 = pcall(MpCommon.PathToWin32Path, sigattr_tail[_FORV_13_].utf8p1)
        if L6_6 ~= nil and L6_6 ~= "" then
          L6_6 = string.lower(L6_6)
          L7_7 = string.match(L6_6, "\\([^\\]+)$")
          if L7_7 ~= nil and L7_7 ~= "" then
            L9_9 = sysio.GetFileSize(L6_6)
            if L9_9 ~= nil then
              if L5_5[L6_6] ~= 1 and L3_3 == L7_7 then
                if L9_9 == L4_4 then
                  L8_8 = L8_8 + 1
                  L5_5[L6_6] = 1
                end
                table.insert(L0_0, {
                  NotePath = L6_6,
                  NoteName = L7_7,
                  NoteSize = L9_9
                })
              end
              if L8_8 >= 2 then
                bm.add_related_string("RansomHaltX", safeJsonSerialize(L0_0), bm.RelatedStringBMReport)
                extractRansomNote(L2_2)
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
