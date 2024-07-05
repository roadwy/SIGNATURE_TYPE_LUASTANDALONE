local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L5_5 = this_sigattrlog
L5_5 = L5_5[6]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[6]
  L5_5 = L5_5.utf8p2
  if L5_5 ~= nil then
    L5_5 = this_sigattrlog
    L5_5 = L5_5[6]
    L5_5 = L5_5.utf8p2
    L6_6 = L5_5
    L5_5 = L5_5.lower
    L5_5 = L5_5(L6_6)
    L0_0 = L5_5
    L5_5 = this_sigattrlog
    L5_5 = L5_5[6]
    L3_3 = L5_5.ppid
  end
else
  L5_5 = this_sigattrlog
  L5_5 = L5_5[7]
  L5_5 = L5_5.matched
  if L5_5 then
    L5_5 = this_sigattrlog
    L5_5 = L5_5[7]
    L5_5 = L5_5.utf8p2
    if L5_5 ~= nil then
      L5_5 = this_sigattrlog
      L5_5 = L5_5[7]
      L5_5 = L5_5.utf8p2
      L6_6 = L5_5
      L5_5 = L5_5.lower
      L5_5 = L5_5(L6_6)
      L0_0 = L5_5
      L5_5 = this_sigattrlog
      L5_5 = L5_5[7]
      L3_3 = L5_5.ppid
    end
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[4]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[4]
  L5_5 = L5_5.utf8p1
  if L5_5 ~= nil then
    L5_5 = string
    L5_5 = L5_5.match
    L6_6 = this_sigattrlog
    L6_6 = L6_6[4]
    L6_6 = L6_6.utf8p1
    L7_7 = "\\([^\\]+)$"
    L5_5 = L5_5(L6_6, L7_7)
    L1_1 = L5_5
  end
end
L5_5 = contains
L6_6 = L0_0
L7_7 = L1_1
L5_5 = L5_5(L6_6, L7_7)
if not L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if not L0_0 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = false
L6_6 = mp
L6_6 = L6_6.GetParentProcInfo
L7_7 = L3_3
L6_6 = L6_6(L7_7)
if L6_6 ~= nil then
  L7_7 = string
  L7_7 = L7_7.lower
  L8_8 = L6_6.image_path
  L7_7 = L7_7(L8_8)
  L4_4 = L7_7
end
if not L4_4 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = {L8_8, "mshta.exe"}
L8_8 = "certutil.exe"
L8_8 = contains
L8_8 = L8_8(L4_4, L7_7)
if L8_8 then
  L5_5 = true
end
L8_8 = {
  "winword.exe",
  "excel.exe",
  "powerpnt.exe"
}
if contains(L4_4, L8_8) then
  L5_5 = true
end
L2_2 = extractDllForRegproc(L0_0)
if L2_2 then
  L2_2 = mp.ContextualExpandEnvironmentVariables(L2_2)
  if sysio.IsFileExists(L2_2) and sysio.GetLastResult().Success and sysio.GetFileLastWriteTime(L2_2) ~= 0 then
    if sysio.GetFileLastWriteTime(L2_2) / 10000000 - 11644473600 > MpCommon.GetCurrentTimeT() or MpCommon.GetCurrentTimeT() - (sysio.GetFileLastWriteTime(L2_2) / 10000000 - 11644473600) > 3600 and L5_5 == true then
      bm.add_related_file(L2_2)
    else
      return mp.CLEAN
    end
  end
end
if L5_5 then
  return mp.INFECTED
end
return mp.CLEAN
