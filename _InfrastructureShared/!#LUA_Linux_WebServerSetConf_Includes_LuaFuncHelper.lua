local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L1_1 = L1_1(L2_2)
L2_2 = ""
if L1_1 == "/etc/apache2/sites-available" and L0_0 == "apache2" then
  L2_2 = "^%s*DocumentRoot%s+(/.-)/?$"
elseif L1_1 == "/etc/httpd/conf" and L0_0 == "httpd" then
  L2_2 = "^%s*<Directory%s+\"(/.-)/?\">$"
elseif L1_1 == "/etc/lighttpd" and L0_0 == "lighttpd" then
  L2_2 = "^%s*server%.document%-root%s+=%s+\"(/.-)/?\"$"
elseif L1_1 == "/etc/nginx/sites-available" and L0_0 == "nginx" then
  L2_2 = "^%s*root%s+(/.-)/?;$"
else
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
L4_4 = ""
L5_5 = mp
L5_5 = L5_5.HEADERPAGE_SZ
if L3_3 <= L5_5 then
  L5_5 = tostring
  L6_6 = headerpage
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
else
  L5_5 = mp
  L5_5 = L5_5.HEADERPAGE_SZ
  L6_6 = mp
  L6_6 = L6_6.FOOTERPAGE_SZ
  L5_5 = L5_5 + L6_6
  if L3_3 <= L5_5 then
    L5_5 = tostring
    L6_6 = headerpage
    L5_5 = L5_5(L6_6)
    L6_6 = tostring
    L7_7 = footerpage
    L6_6 = L6_6(L7_7)
    L4_4 = L5_5 .. L6_6
  else
    L5_5 = mp
    L5_5 = L5_5.readprotection
    L6_6 = false
    L5_5(L6_6)
    L5_5 = tostring
    L6_6 = mp
    L6_6 = L6_6.readfile
    L7_7 = 0
    L13_13 = L6_6(L7_7, L8_8)
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L6_6(L7_7, L8_8))
    L4_4 = L5_5
    L5_5 = mp
    L5_5 = L5_5.readprotection
    L6_6 = true
    L5_5(L6_6)
  end
end
L5_5 = "webserver_conf_root"
L6_6 = StringSplit
L7_7 = L4_4
L6_6 = L6_6(L7_7, L8_8)
L7_7 = false
L11_11 = 0
L8_8(L9_9, L10_10, L11_11)
for L11_11, L12_12 in L8_8(L9_9) do
  L13_13 = string
  L13_13 = L13_13.match
  L13_13 = L13_13(L12_12, L2_2)
  if L13_13 then
    L7_7 = true
    MpCommon.AppendPersistContextNoPath(L5_5, L13_13, 4294967295)
  end
end
if L7_7 then
  return L8_8
end
return L8_8
