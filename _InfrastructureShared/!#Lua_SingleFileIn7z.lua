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
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 2948364855 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 13
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 21
L1_1 = L1_1(L2_2, L3_3)
if L1_1 < 50 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.FOOTERPAGE_SZ
if L1_1 > L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = footerpage
L4_4 = mp
L4_4 = L4_4.FOOTERPAGE_SZ
L4_4 = L4_4 - L1_1
L4_4 = L4_4 + 1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= 394241 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = footerpage
L4_4 = mp
L4_4 = L4_4.FOOTERPAGE_SZ
L4_4 = L4_4 - L1_1
L4_4 = L4_4 + 1
L4_4 = L4_4 + 46
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 - 1
if L2_2 < 8 or L2_2 > 256 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L1_1 - 48
if L2_2 > L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readfile
L5_5 = L0_0 - L3_3
L5_5 = L5_5 - 1
L4_4 = L4_4(L5_5, L2_2)
L5_5 = string
L5_5 = L5_5.gsub
L5_5 = L5_5(L4_4, "%z", "")
mp.set_mpattribute("Lua:SingleFileIn7Z")
mp.UfsSetMetadataBool("Lua:SingleFileIn7Z!ufs", true)
if string.lower(string.sub(L5_5, -4)) == ".zip" then
  mp.set_mpattribute("Lua:SingleZipIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".vbs" then
  mp.set_mpattribute("Lua:SingleVBSIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".lnk" then
  mp.set_mpattribute("Lua:SingleLNKIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".wsf" then
  mp.set_mpattribute("Lua:SingleWSFIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".vbe" then
  mp.set_mpattribute("Lua:SingleVBEIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".jse" then
  mp.set_mpattribute("Lua:SingleJSEIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == "html" then
  mp.set_mpattribute("Lua:SingleHTAIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".exe" then
  mp.set_mpattribute("Lua:SingleEXEIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".dll" then
  mp.set_mpattribute("Lua:SingleDLLIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".com" then
  mp.set_mpattribute("Lua:SingleCOMIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".ps1" then
  mp.set_mpattribute("Lua:SinglePSIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".bat" then
  mp.set_mpattribute("Lua:SingleBATIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".rar" then
  mp.set_mpattribute("Lua:SingleRarIn7z")
elseif string.lower(string.sub(L5_5, -4)) == ".ace" then
  mp.set_mpattribute("Lua:SingleACEIn7z")
end
if string.lower(string.sub(L5_5, -3)) == ".js" then
  mp.set_mpattribute("Lua:SingleJSIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.lower(string.sub(L5_5, -3)) == ".7z" then
  mp.set_mpattribute("Lua:Single7zIn7z")
end
return mp.CLEAN
