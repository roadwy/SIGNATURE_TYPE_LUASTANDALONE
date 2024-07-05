local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 153 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 60000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 3
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 3
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = headerpage
L4_4 = 3 + L1_1
L4_4 = L4_4 + 8
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = headerpage
L5_5 = 3 + L1_1
L5_5 = L5_5 + 10
L3_3 = L3_3(L4_4, L5_5)
if L2_2 ~= 60000 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == 0 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = headerpage
L6_6 = 3 + L1_1
L6_6 = L6_6 + 10
L6_6 = L6_6 + 14
L4_4 = L4_4(L5_5, L6_6)
L5_5 = L1_1 + L3_3
L5_5 = L5_5 + L4_4
L5_5 = L5_5 + 24
if L5_5 ~= L0_0 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.set_mpattribute
L7_7 = "Lua:SingleFileInARJ"
L6_6(L7_7)
L6_6 = 3 + L1_1
L6_6 = L6_6 + 8
L6_6 = L6_6 + 50
L6_6 = L6_6 - 1
L7_7 = 256
L8_8 = mp
L8_8 = L8_8.readfile
L9_9 = L6_6
L10_10 = L6_6 + L7_7
L8_8 = L8_8(L9_9, L10_10)
L9_9 = string
L9_9 = L9_9.find
L10_10 = L8_8
L11_11 = "\000"
L10_10 = L9_9(L10_10, L11_11, 1, true)
L11_11 = mp
L11_11 = L11_11.readfile
L11_11 = L11_11(L6_6, L9_9 - 1)
if string.lower(string.sub(L11_11, -3)) == ".js" then
  mp.set_mpattribute("Lua:SingleJSInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
elseif string.lower(string.sub(L11_11, -3)) == ".7z" then
  mp.set_mpattribute("Lua:Single7zInInARJ")
elseif string.lower(string.sub(L11_11, -3)) == ".gz" then
  mp.set_mpattribute("Lua:SingleGZipInARJ")
end
if string.lower(string.sub(L11_11, -4)) == ".zip" then
  mp.set_mpattribute("Lua:SingleZipInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".vbs" then
  mp.set_mpattribute("Lua:SingleVBSInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".lnk" then
  mp.set_mpattribute("Lua:SingleLNKInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".wsf" then
  mp.set_mpattribute("Lua:SingleWSFInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".vbe" then
  mp.set_mpattribute("Lua:SingleVBEInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".jse" then
  mp.set_mpattribute("Lua:SingleJSEInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".hta" then
  mp.set_mpattribute("Lua:SingleHTAInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".exe" then
  mp.set_mpattribute("Lua:SingleEXEInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".dll" then
  mp.set_mpattribute("Lua:SingleDLLInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".com" then
  mp.set_mpattribute("Lua:SingleCOMInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".ps1" then
  mp.set_mpattribute("Lua:SinglePSInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".bat" then
  mp.set_mpattribute("Lua:SingleBATInARJ")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".rar" then
  mp.set_mpattribute("Lua:SingleRarInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".ace" then
  mp.set_mpattribute("Lua:SingleACEInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".iso" then
  mp.set_mpattribute("Lua:SingleISOInARJ")
  return mp.CLEAN
elseif string.lower(string.sub(L11_11, -4)) == ".arj" then
  mp.set_mpattribute("Lua:SingleARJInARJ")
  return mp.CLEAN
end
return mp.CLEAN
