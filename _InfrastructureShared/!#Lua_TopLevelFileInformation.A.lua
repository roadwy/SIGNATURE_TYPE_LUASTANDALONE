local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.is_handle_nil
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L7_7 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3, L4_4))
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 8 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "->"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.sub
L4_4 = L1_1
L5_5 = 0
L6_6 = L2_2 - 1
L3_3 = L3_3(L4_4, L5_5, L6_6)
if L3_3 ~= nil then
  L4_4 = #L3_3
elseif L4_4 <= 2 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L6_6 = "."
L7_7 = 1
L4_4 = L4_4(L5_5, L6_6, L7_7, true)
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L3_3
L6_6 = "([^\\%.]+)$"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= nil then
  L5_5 = #L4_4
  if L5_5 ~= 0 then
    L5_5 = #L4_4
  end
elseif L5_5 > 5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = "Lua:TopLevelFileExt.A!"
L6_6 = mp
L6_6 = L6_6.set_mpattribute
L7_7 = L5_5
L7_7 = L7_7 .. L4_4
L6_6(L7_7)
L6_6 = {}
L6_6.exe = true
L6_6.dll = true
L6_6.js = true
L6_6.jse = true
L6_6.vbs = true
L6_6.vbe = true
L6_6.wsf = true
L6_6.jar = true
L6_6.hta = true
L6_6.lnk = true
L6_6.bat = true
L6_6.cmd = true
L7_7 = L6_6[L4_4]
if L7_7 then
  L7_7 = mp
  L7_7 = L7_7.getfilename
  L7_7 = L7_7(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
  if L7_7 == nil or #L7_7 <= 3 then
    return mp.CLEAN
  end
  L7_7 = L7_7 .. "\\"
  if string.match(L7_7, "\\appdata\\") then
    mp.set_mpattribute("Lua:TopLevelFile.A!FileInsideAppData")
    if string.match(L7_7, "\\appdata\\local\\") then
      mp.set_mpattribute("Lua:TopLevelFile.A!FileInAppDataLocal")
      if string.match(L7_7, "\\appdata\\local\\temp\\") then
        mp.set_mpattribute("Lua:TopLevelFile.A!FileInAppDataLocalTemp")
      end
    elseif string.match(L7_7, "\\appdata\\roaming\\") then
      mp.set_mpattribute("Lua:TopLevelFile.A!FileInAppDataRoaming")
      if string.match(L7_7, "\\appdata\\roaming\\microsoft\\windows\\start menu\\programs\\startup\\") then
        mp.set_mpattribute("Lua:TopLevelFile.A!FileInStartup")
      end
    end
  elseif string.match(L7_7, "\\program files\\") then
    mp.set_mpattribute("Lua:TopLevelFile.A!FileInProgramFiles")
  elseif string.match(L7_7, "\\program files (x86)\\") then
    mp.set_mpattribute("Lua:TopLevelFile.A!FileInProgramFilesX86")
  elseif string.match(L7_7, "\\programdata\\") then
    mp.set_mpattribute("Lua:TopLevelFile.A!FileInProgramData")
  elseif string.match(L7_7, "\\windows\\system32\\") then
    mp.set_mpattribute("Lua:TopLevelFile.A!FileInSystem32")
  elseif string.match(L7_7, "c:\\windows\\") then
    mp.set_mpattribute("Lua:TopLevelFile.A!Lua:FileInWindows")
  elseif string.match(L7_7, "\\users\\[^\\]+\\") then
    mp.set_mpattribute("Lua:TopLevelFile.A!FileInUserProfile")
    if string.match(L7_7, "\\users\\[^\\]+\\documents\\") then
      mp.set_mpattribute("Lua:TopLevelFile.A!FileInUserDocument")
    elseif string.match(L7_7, "\\users\\[^\\]+\\downloads\\") then
      mp.set_mpattribute("Lua:TopLevelFile.A!FileInUserDownloads")
    elseif string.match(L7_7, "\\users\\[^\\]+\\desktop\\") then
      mp.set_mpattribute("Lua:TopLevelFile.A!FileInUserDesktop")
    end
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
