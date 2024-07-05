local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 256 or L0_0 > 4096 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = 5
L1_1 = L1_1(L2_2, L3_3)
L2_2 = tostring
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L3_3 = L3_3(L4_4, "U\139\236\129\236", 1, true)
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.set_mpattribute
L4_4 = "Lua:ShellCodeBinaryFileFound.S001"
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readfile
L4_4 = 0
L3_3 = L3_3(L4_4, 256)
L4_4 = tostring
L4_4 = L4_4(L3_3)
if string.find(L4_4, "d\1610\000\000\000\139@\f\139@\f\139\000\139\000\139@\024\139\248", 1, true) ~= nil then
  mp.set_mpattribute("Lua:GetKernel32DllBase.S001")
end
if string.find(L4_4, "\186\2555S\019\139\207\232", 1, true) ~= nil then
  mp.set_mpattribute("Lua:GetReadFileFromHash.S001")
end
if string.find(L4_4, "\186\003\022\159\156\139\207\232", 1, true) ~= nil then
  mp.set_mpattribute("Lua:GetReadFileFromHash.S001")
end
if string.find(L4_4, "\186f}vW\139\207\137E", 1, true) ~= nil then
  mp.set_mpattribute("Lua:GetVirtuallFromHash.S001")
end
if string.find(L4_4, "\186\234]>\n\139\207\137E", 1, true) ~= nil then
  mp.set_mpattribute("Lua:GetVirtuallFromHash.S001")
end
if string.find(L4_4, "\253\255\255P\255\214j\000h\128\000\000\000j\003j\000j\ah\000\000\000\128\141\133", 1, true) ~= nil then
  mp.set_mpattribute("Lua:SuspicousShellCodeDataFile.S001")
end
if string.find(L4_4, "P\255\2143\255Wh\128\000\000\000j\003Wj\ah\000\000\000\128\141\133", 1, true) ~= nil then
  mp.set_mpattribute("Lua:SuspicousShellCodeDataFile.S001")
end
if string.find(L4_4, "\186\003\022\159\156\139\207\232\202\000\000\000\186L\2009n\139\207\137E\212\232\187\000\000\000\186\244\181{\f\139\207\139\240\232\173\000\000\000\186\234]>\n", 1, true) ~= nil then
  mp.set_mpattribute("Lua:APIinMalicious.S001")
end
return mp.CLEAN
