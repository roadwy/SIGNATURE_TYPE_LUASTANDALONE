local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L7_7 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1())
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1, L2_2, L3_3 = nil, nil, nil
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L0_0
L4_4 = L4_4(L5_5)
L5_5 = L4_4
L4_4 = L4_4.match
L6_6 = "([^\\]+)$"
L4_4 = L4_4(L5_5, L6_6)
L1_1 = L4_4
if not L1_1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L1_1 == "w3wp.exe" then
  L4_4 = bm
  L4_4 = L4_4.get_current_process_startup_info
  L4_4 = L4_4()
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4.command_line
  L5_5 = L5_5(L6_6)
  L6_6 = L5_5
  L5_5 = L5_5.match
  L7_7 = "-ap \"([^\"]+)\""
  L5_5 = L5_5(L6_6, L7_7)
  if L5_5 == nil then
    L2_2 = "nil"
  else
    L2_2 = L5_5
  end
  L3_3 = true
end
L4_4, L5_5 = nil, nil
L6_6 = this_sigattrlog
L6_6 = L6_6[7]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[7]
  L4_4 = L6_6.utf8p2
end
if L4_4 ~= nil then
  L6_6 = string
  L6_6 = L6_6.format
  L7_7 = "%s;%s;%s"
  L6_6 = L6_6(L7_7, L1_1, L2_2, L4_4)
  L5_5 = L6_6
  L6_6 = bm
  L6_6 = L6_6.add_related_string
  L7_7 = "ExchgCompromise"
  L6_6(L7_7, L5_5, bm.RelatedStringBMReport)
  L6_6 = bm
  L6_6 = L6_6.set_detection_string
  L7_7 = L5_5
  L6_6(L7_7)
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
L6_6 = nil
L7_7 = "\\.(asp|aspx|ashx|asmx)$"
for _FORV_11_ = mp.SIGATTR_LOG_SZ, 1, -1 do
  if sigattr_tail[_FORV_11_].matched and (sigattr_tail[_FORV_11_].attribute == 16384 or sigattr_tail[_FORV_11_].attribute == 16385) and sigattr_tail[_FORV_11_].utf8p1 then
    L6_6 = string.lower(sigattr_tail[_FORV_11_].utf8p1):match("(\\[^\\]+\\[^\\]+)$")
    if MpCommon.StringRegExpSearch(L7_7, L6_6) then
      break
    end
  end
end
if not L6_6 then
  bm.add_related_string("FileExtractErr", "true", bm.RelatedStringBMReport)
  return mp.INFECTED
end
if L3_3 then
  L5_5 = string.format("%s;%s;%s", L1_1, L2_2, L6_6)
else
  L5_5 = string.format("%s;%s", L1_1, L6_6)
end
bm.add_related_string("ExchgCompromise", L5_5, bm.RelatedStringBMReport)
return mp.INFECTED
