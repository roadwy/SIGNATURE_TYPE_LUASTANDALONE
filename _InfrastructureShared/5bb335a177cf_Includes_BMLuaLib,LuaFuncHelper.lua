local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
if L0_0 ~= nil then
  L0_0 = mp
  L0_0 = L0_0.SIGATTR_LOG_SZ
  if L0_0 == 0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = pcall
  L1_1 = MpCommon
  L1_1 = L1_1.PathToWin32Path
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  L1_1 = L0_0(L1_1, L2_2)
  if L1_1 == nil or L1_1 == "" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L4_4 = "\\([^\\]+)$"
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == nil or L2_2 == "" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L4_4 = L2_2
  L3_3 = L2_2.find
  L5_5 = "-- how to open these files --.txt"
  L6_6 = 1
  L7_7 = true
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if not L3_3 then
    L4_4 = L2_2
    L3_3 = L2_2.find
    L5_5 = "notags.html"
    L6_6 = 1
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
    if not L3_3 then
      L4_4 = L2_2
      L3_3 = L2_2.find
      L5_5 = "nocomment.html"
      L6_6 = 1
      L7_7 = true
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
    end
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = sysio
  L3_3 = L3_3.GetFileSize
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
  L4_4 = {}
  L4_4[L1_1] = 1
  L5_5 = {}
  L6_6 = table
  L6_6 = L6_6.insert
  L7_7 = L5_5
  L8_8 = {}
  L8_8.NotePath = L1_1
  L8_8.NoteName = L2_2
  L8_8.NoteSize = L3_3
  L6_6(L7_7, L8_8)
  L6_6 = ""
  L7_7 = ""
  L8_8 = 1
  L9_9 = 0
  for _FORV_13_ = mp.SIGATTR_LOG_SZ, 1, -1 do
    if (sigattr_head[_FORV_13_].attribute == 16384 or sigattr_head[_FORV_13_].attribute == 16386) and sigattr_head[_FORV_13_].utf8p1 then
      L0_0, L6_6 = pcall(MpCommon.PathToWin32Path, sigattr_head[_FORV_13_].utf8p1)
      if L6_6 ~= nil and L6_6 ~= "" then
        L6_6 = string.lower(L6_6)
        L7_7 = string.match(L6_6, "\\([^\\]+)$")
        if L7_7 ~= nil and L7_7 ~= "" then
          L9_9 = sysio.GetFileSize(L6_6)
          if L9_9 ~= nil then
            if L4_4[L6_6] ~= 1 and L2_2 == L7_7 and L9_9 == L3_3 then
              L8_8 = L8_8 + 1
              L4_4[L6_6] = 1
            end
            table.insert(L5_5, {
              NotePath = L6_6,
              NoteName = L7_7,
              NoteSize = L9_9
            })
            if L8_8 >= 2 then
              bm.add_related_string("RansomHaltY", safeJsonSerialize(L5_5), bm.RelatedStringBMReport)
              extractRansomNote(L1_1)
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
