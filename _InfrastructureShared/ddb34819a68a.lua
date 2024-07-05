local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p1
  if L0_0 == nil or L0_0 == "" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L0_0
  L4_4 = "\\appdata\\roaming\\([^\\]+)\\[^%.]+%.vbs"
  L2_2 = L2_2(L3_3, L4_4)
  L1_1 = L2_2
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
  elseif L2_2 ~= 6 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = sysio
  L2_2 = L2_2.IsFileExists
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.ReportLowfi
    L3_3 = L0_0
    L4_4 = 1248478195
    L2_2(L3_3, L4_4)
    L2_2 = bm
    L2_2 = L2_2.add_related_file
    L3_3 = L0_0
    L2_2(L3_3)
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L2_2, L3_3 = nil, nil
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L2_2 = L4_4.utf8p1
  if L2_2 == nil or L2_2 == "" then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.match
  L5_5 = L2_2
  L4_4 = L4_4(L5_5, "\\appdata\\roaming\\([^\\]+)\\[^%.]+%.ps1")
  L3_3 = L4_4
  if L3_3 ~= nil then
    L4_4 = string
    L4_4 = L4_4.len
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
  elseif L4_4 ~= 6 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = sysio
  L4_4 = L4_4.IsFileExists
  L5_5 = L2_2
  L4_4 = L4_4(L5_5)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.ReportLowfi
    L5_5 = L2_2
    L4_4(L5_5, 3546485321)
    L4_4 = bm
    L4_4 = L4_4.add_related_file
    L5_5 = L2_2
    L4_4(L5_5)
    L4_4 = mp
    L4_4 = L4_4.INFECTED
    return L4_4
  end
end
L4_4, L5_5 = nil, nil
if this_sigattrlog[3].matched then
  L4_4 = this_sigattrlog[3].utf8p1
  if L4_4 == nil or L4_4 == "" then
    return mp.CLEAN
  end
  L5_5 = string.match(L4_4, "\\appdata\\roaming\\([^\\]+)\\[^%.]+%.ini")
  if L5_5 == nil or string.len(L5_5) ~= 6 then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L4_4) then
    mp.ReportLowfi(L4_4, 2758025951)
    bm.add_related_file(L4_4)
    return mp.INFECTED
  end
end
return mp.CLEAN
