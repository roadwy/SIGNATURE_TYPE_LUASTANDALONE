local L0_0, L1_1, L2_2, L3_3
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L3_3 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1())
L2_2 = L0_0
L1_1 = L0_0.len
L1_1 = L1_1(L2_2)
if L1_1 < 8 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -4
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= ".exe" and L1_1 ~= ".vbs" and L1_1 ~= ".jar" then
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, -3)
  L1_1 = L2_2
  if L1_1 ~= ".js" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L3_3 = L0_0
L2_2 = L0_0.len
L2_2 = L2_2(L3_3)
if L2_2 > 20 then
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, -16)
  if L2_2 == "_captions.mp3.js" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = {}
L2_2[".doc"] = ""
L2_2[".xls"] = ""
L2_2[".ppt"] = ""
L2_2[".pdf"] = ""
L2_2[".jpg"] = ""
L2_2[".gif"] = ""
L2_2[".png"] = ""
L2_2[".pic"] = ""
L2_2[".txt"] = ""
L2_2[".mp3"] = ""
L2_2[".docx"] = ""
L2_2[".xlsx"] = ""
L2_2[".pptx"] = ""
L3_3 = string
L3_3 = L3_3.sub
L3_3 = L3_3(L0_0, -7)
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".js" then
  mp.set_mpattribute("Lua:ContextJSDoubleExtension")
  mp.set_mpattribute("NScript:JSEnableEmulation")
end
L3_3 = string.sub(L0_0, -8)
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".vbs" then
  mp.set_mpattribute("Lua:ContextVBSDoubleExtension")
end
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".jar" then
  mp.set_mpattribute("Lua:ContextJARDoubleExtension")
end
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".exe" then
  mp.set_mpattribute("Lua:ContextEXEDoubleExtension")
end
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".js" then
  mp.set_mpattribute("Lua:ContextJSDoubleExtension")
  mp.set_mpattribute("NScript:JSEnableEmulation")
end
L3_3 = string.sub(L0_0, -9)
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".vbs" then
  mp.set_mpattribute("Lua:ContextVBSDoubleExtension")
end
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".jar" then
  mp.set_mpattribute("Lua:ContextJARDoubleExtension")
end
if L2_2[string.sub(L3_3, 1, 4)] and L1_1 == ".exe" then
  mp.set_mpattribute("Lua:ContextEXEDoubleExtension")
end
return mp.CLEAN
