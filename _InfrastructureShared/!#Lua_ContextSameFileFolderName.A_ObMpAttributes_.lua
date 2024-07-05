local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_parent_filehandle
L1_1 = L1_1()
L2_2 = mp
L2_2 = L2_2.is_handle_nil
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_FILEPATH
L10_10 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L3_3(L4_4))
if L2_2 ~= nil then
  L3_3 = #L2_2
elseif L3_3 < 23 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3, L4_4 = nil, nil
L5_5 = string
L5_5 = L5_5.find
L6_6 = L2_2
L7_7 = "\\appdata\\roaming\\"
L8_8 = 1
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.ContextualExpandEnvironmentVariables
  L6_6 = "%appdata%"
  L5_5 = L5_5(L6_6)
  L3_3 = L5_5
  L4_4 = "appdata"
else
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L2_2
  L7_7 = "\\appdata\\local\\"
  L8_8 = 1
  L9_9 = true
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
  if L5_5 ~= nil then
    L5_5 = mp
    L5_5 = L5_5.ContextualExpandEnvironmentVariables
    L6_6 = "%localappdata%"
    L5_5 = L5_5(L6_6)
    L3_3 = L5_5
    L4_4 = "localappdata"
  else
    L5_5 = string
    L5_5 = L5_5.find
    L6_6 = L2_2
    L7_7 = "\\appdata\\locallow\\"
    L8_8 = 1
    L9_9 = true
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    if L5_5 ~= nil then
      L5_5 = mp
      L5_5 = L5_5.ContextualExpandEnvironmentVariables
      L6_6 = "%localappdata%Low"
      L5_5 = L5_5(L6_6)
      L3_3 = L5_5
      L4_4 = "locallowappdata"
    else
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
  end
end
if L3_3 ~= nil then
  L5_5 = #L3_3
elseif L5_5 < 23 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L6_6 = L3_3
L5_5 = L5_5(L6_6)
L3_3 = L5_5
L5_5 = string
L5_5 = L5_5.lower
L6_6 = mp
L6_6 = L6_6.get_contextdata
L7_7 = mp
L7_7 = L7_7.CONTEXT_DATA_FILENAME
L10_10 = L6_6(L7_7)
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L6_6(L7_7))
L6_6 = {}
L6_6.exe = true
L6_6.dll = true
L6_6[".js"] = true
L6_6.jse = true
L6_6.vbs = true
L6_6.vbe = true
L6_6.wsf = true
L6_6.jar = true
L6_6.hta = true
L6_6.lnk = true
L7_7 = string
L7_7 = L7_7.sub
L8_8 = L5_5
L9_9 = -3
L7_7 = L7_7(L8_8, L9_9)
L8_8 = true
if L7_7 ~= nil then
  L9_9 = #L7_7
  if not (L9_9 < 2) then
    L9_9 = L6_6[L7_7]
  end
elseif L9_9 ~= true then
  L8_8 = false
end
L9_9 = string
L9_9 = L9_9.sub
L10_10 = L2_2
L9_9 = L9_9(L10_10, 0, 4)
if L9_9 == "\\\\?\\" then
  L9_9 = string
  L9_9 = L9_9.sub
  L10_10 = L2_2
  L9_9 = L9_9(L10_10, 5)
  L2_2 = L9_9
end
L9_9 = #L2_2
L10_10 = #L3_3
if not (L9_9 <= L10_10) then
  L9_9 = string
  L9_9 = L9_9.sub
  L10_10 = L2_2
  L9_9 = L9_9(L10_10, 0, #L3_3)
elseif L9_9 ~= L3_3 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = string
L9_9 = L9_9.match
L10_10 = L2_2
L9_9 = L9_9(L10_10, L3_3 .. "\\(.+)$")
if L9_9 ~= nil then
  L10_10 = string
  L10_10 = L10_10.len
  L10_10 = L10_10(L9_9)
  if L10_10 ~= 0 then
    L10_10 = string
    L10_10 = L10_10.find
    L10_10 = L10_10(L9_9, "\\", 1, true)
  end
elseif L10_10 ~= nil then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = string
L10_10 = L10_10.match
L10_10 = L10_10(L5_5, "(.-[^%.]+)")
if L10_10 == nil or string.len(L10_10) == 0 then
  return mp.CLEAN
end
if L9_9 == L10_10 then
  mp.set_mpattribute("Lua:ContextSameFileFolderName.A!" .. L4_4)
  if L8_8 == true then
    mp.set_mpattribute("Lua:ContextSameFileFolderName.A!" .. L4_4 .. "_" .. L7_7)
  end
  return mp.INFECTED
end
mp.set_mpattribute("Lua:ContextFileInFirstFolder.A!" .. L4_4)
if L8_8 == true then
  mp.set_mpattribute("Lua:ContextFileInFirstFolder.A!" .. L4_4 .. "_" .. L7_7)
end
return mp.CLEAN
