local L0_0, L1_1, L2_2, L3_3
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
if L1_1 < 50 and L1_1 > 512 then
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
L2_2 = L2_2.readfile
L3_3 = L0_0 - L1_1
L3_3 = L3_3 - 1
L2_2 = L2_2(L3_3, L1_1)
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(string.gsub(L2_2, "%z", ""))
if L3_3 == nil then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:SingleFileIn7Z")
mp.UfsSetMetadataBool("Lua:SingleFileIn7Z!ufs", true)
if string.find(L3_3, "%.zip") then
  mp.set_mpattribute("Lua:SingleZipIn7z")
elseif string.find(L3_3, "%.vbs") then
  mp.set_mpattribute("Lua:SingleVBSIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.lnk") then
  mp.set_mpattribute("Lua:SingleLNKIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.wsf") then
  mp.set_mpattribute("Lua:SingleWSFIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.vbe") then
  mp.set_mpattribute("Lua:SingleVBEIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.html") then
  mp.set_mpattribute("Lua:SingleHTAIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.exe") then
  mp.set_mpattribute("Lua:SingleEXEIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.dll") then
  mp.set_mpattribute("Lua:SingleDLLIn7z")
elseif string.find(L3_3, "%.com") then
  mp.set_mpattribute("Lua:SingleCOMIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.ps1") then
  mp.set_mpattribute("Lua:SinglePSIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.bat") then
  mp.set_mpattribute("Lua:SingleBATIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.js") then
  mp.set_mpattribute("Lua:SingleJSIn7z")
  mp.set_mpattribute("Lua:SingleSuspiciousExtensionIn7z")
elseif string.find(L3_3, "%.7z") then
  mp.set_mpattribute("Lua:Single7zIn7z")
elseif string.find(L3_3, "%.rar") then
  mp.set_mpattribute("Lua:SingleRarIn7z")
elseif string.find(L3_3, "%.ace") then
  mp.set_mpattribute("Lua:SingleACEIn7z")
end
return mp.CLEAN
