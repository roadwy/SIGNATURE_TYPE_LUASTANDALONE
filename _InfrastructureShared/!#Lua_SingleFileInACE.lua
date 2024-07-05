local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
if L0_0 < 512 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 9
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 1162035498 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 13
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 336865834 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 33
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 1163021909 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 61
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = headerpage
L4_4 = 87
L2_2 = L2_2(L3_3, L4_4)
L3_3 = L2_2 + 88
L3_3 = L3_3 + L1_1
if L0_0 < L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = 0
if L0_0 == L3_3 then
  L4_4 = 1
elseif L0_0 > L3_3 then
  L5_5 = mp
  L5_5 = L5_5.readfile
  L5_5 = L5_5(L3_3, 32)
  L5_5 = string.gsub(L5_5, "%z", "")
  if string.find(L5_5, "**ACE**") then
    L4_4 = 1
  end
end
if L4_4 == 0 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.set_mpattribute
L5_5("Lua:SingleFileInACE")
L5_5 = mp
L5_5 = L5_5.UfsSetMetadataBool
L5_5("Lua:SingleFileInACE!ufs", true)
if L2_2 > 100 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readfile
L5_5 = L5_5(88, L2_2)
if string.lower(string.sub(L5_5, -4)) == ".zip" then
  mp.set_mpattribute("Lua:SingleZipInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".vbs" then
  mp.set_mpattribute("Lua:SingleVBSInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".lnk" then
  mp.set_mpattribute("Lua:SingleLNKInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".wsf" then
  mp.set_mpattribute("Lua:SingleWSFInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".vbe" then
  mp.set_mpattribute("Lua:SingleVBEInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".jse" then
  mp.set_mpattribute("Lua:SingleJSEInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == "html" then
  mp.set_mpattribute("Lua:SingleHTAInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".exe" then
  mp.set_mpattribute("Lua:SingleEXEInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".dll" then
  mp.set_mpattribute("Lua:SingleDLLInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".com" then
  mp.set_mpattribute("Lua:SingleCOMInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".ps1" then
  mp.set_mpattribute("Lua:SinglePSInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".bat" then
  mp.set_mpattribute("Lua:SingleBATInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".rar" then
  mp.set_mpattribute("Lua:SingleRarInACE")
elseif string.lower(string.sub(L5_5, -4)) == ".ace" then
  mp.set_mpattribute("Lua:SingleACEInACE")
end
if string.lower(string.sub(L5_5, -3)) == ".js" then
  mp.set_mpattribute("Lua:SingleJSInACE")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionInACE")
elseif string.lower(string.sub(L5_5, -3)) == ".7z" then
  mp.set_mpattribute("Lua:Single7zInACE")
end
return mp.CLEAN
