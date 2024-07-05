local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.is_handle_nil
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILEPATH
L11_11 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3))
if L1_1 ~= nil then
  L2_2 = #L1_1
  if not (L2_2 < 23) then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L4_4 = "\\users\\"
    L5_5 = 1
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L4_4 = "\\appdata\\"
      L5_5 = 1
      L6_6 = true
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    end
  end
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L4_4 = 0
L5_5 = 4
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 == "\\\\?\\" then
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L1_1
  L4_4 = 5
  L2_2 = L2_2(L3_3, L4_4)
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "(.+)\\users\\([^\\]+)\\appdata"
L3_3 = L2_2(L3_3, L4_4)
if L2_2 ~= nil and L3_3 ~= nil then
  L4_4 = #L2_2
  if not (L4_4 < 1) then
    L4_4 = #L3_3
    if not (L4_4 < 1) then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L2_2
      L6_6 = "\\"
      L7_7 = 1
      L8_8 = true
      L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
    end
  end
elseif L4_4 ~= nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = nil
L5_5 = ""
L6_6 = string
L6_6 = L6_6.find
L7_7 = L1_1
L8_8 = "\\appdata\\roaming\\"
L9_9 = 1
L10_10 = true
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
if L6_6 ~= nil then
  L4_4 = "\\appdata\\roaming"
  L5_5 = "appdata"
else
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L1_1
  L8_8 = "\\appdata\\local\\"
  L9_9 = 1
  L10_10 = true
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if L6_6 ~= nil then
    L4_4 = "\\appdata\\local"
    L5_5 = "localappdata"
  else
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L1_1
    L8_8 = "\\appdata\\locallow\\"
    L9_9 = 1
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 ~= nil then
      L4_4 = "\\appdata\\locallow"
      L5_5 = "locallowappdata"
    else
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
  end
end
if L4_4 == nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = mp
L7_7 = L7_7.get_contextdata
L8_8 = mp
L8_8 = L8_8.CONTEXT_DATA_FILENAME
L11_11 = L7_7(L8_8)
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7(L8_8))
L7_7 = {}
L7_7.exe = true
L7_7.dll = true
L7_7[".js"] = true
L7_7.jse = true
L7_7.vbs = true
L7_7.vbe = true
L7_7.wsf = true
L7_7.jar = true
L7_7.hta = true
L7_7.lnk = true
L8_8 = string
L8_8 = L8_8.sub
L9_9 = L6_6
L10_10 = -3
L8_8 = L8_8(L9_9, L10_10)
L9_9 = true
if L8_8 ~= nil then
  L10_10 = #L8_8
  if not (L10_10 < 2) then
    L10_10 = L7_7[L8_8]
  end
elseif L10_10 ~= true then
  L9_9 = false
end
L10_10 = string
L10_10 = L10_10.match
L11_11 = L1_1
L10_10 = L10_10(L11_11, L4_4 .. "\\(.+)$")
if L10_10 ~= nil then
  L11_11 = string
  L11_11 = L11_11.len
  L11_11 = L11_11(L10_10)
  if L11_11 ~= 0 then
    L11_11 = string
    L11_11 = L11_11.find
    L11_11 = L11_11(L10_10, "\\", 1, true)
  end
elseif L11_11 ~= nil then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = string
L11_11 = L11_11.match
L11_11 = L11_11(L6_6, "(.-[^%.]+)")
if L11_11 == nil or string.len(L11_11) == 0 then
  return mp.CLEAN
end
if L10_10 == L11_11 then
  mp.set_mpattribute("Lua:ContextSameFileFolderName.B!" .. L5_5)
  if L9_9 == true then
    mp.set_mpattribute("Lua:ContextSameFileFolderName.B!" .. L5_5 .. "_" .. L8_8)
  end
  return mp.INFECTED
end
mp.set_mpattribute("Lua:ContextFileInFirstFolder.B!" .. L5_5)
if L9_9 == true then
  mp.set_mpattribute("Lua:ContextFileInFirstFolder.B!" .. L5_5 .. "_" .. L8_8)
end
if L5_5 == "localappdata" and L10_10 == "temp" then
  mp.set_mpattribute("Lua:Context/FileInTempFolder.A")
end
return mp.CLEAN
