local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.ppid
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetProcessAttributeValue
L1_1 = L1_1(L2_2, L3_3)
L1_1 = L1_1 or L2_2
if not L1_1 then
  return L2_2
end
for L5_5 = L2_2.SIGATTR_LOG_SZ, 1, -1 do
  L6_6 = sigattr_tail
  L6_6 = L6_6[L5_5]
  L7_7 = L6_6.matched
  if L7_7 then
    L7_7 = L6_6.attribute
    if L7_7 == 16384 then
      L7_7 = L6_6.utf8p1
      if L7_7 then
        L7_7 = "\\.(php|ps1|bat|aar|armx|asax|asbx|ascx|ashx|asmx|asp|aspq|aspx|axd|cfm|cgi|cshtm|cshtml|jsp|jar|js|jspx|phar|phtml|shtml|swf|vbhtm|vbhtml|php2|php3|php4|php5)$"
        L8_8 = string
        L8_8 = L8_8.lower
        L8_8 = L8_8(L6_6.utf8p1:match("([^\\]+)$"))
        if MpCommon.StringRegExpSearch(L7_7, L8_8) then
          AppendToRollingQueue("PFApp_Parent_FileDropped", L1_1, L6_6.utf8p1, 1800, 100, 0)
        end
      end
    end
  end
end
return L2_2
