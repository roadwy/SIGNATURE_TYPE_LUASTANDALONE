local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L2_2 = L2_2(L3_3, -4)
if L2_2 == ".dll" then
  L3_3 = string
  L3_3 = L3_3.len
  L3_3 = L3_3(L1_1)
  if L3_3 < 30 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = L1_1.find
  L3_3 = L3_3(L1_1, "\\appdata\\locallow", 1, true)
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.match
    L3_3 = L3_3(L1_1, "\\appdata\\locallow\\%l%l%l%l%l%.dll")
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.match
      L3_3 = L3_3(L1_1, "\\appdata\\locallow\\%l%l%l%l%l%l%.dll")
      if not L3_3 then
        L3_3 = string
        L3_3 = L3_3.match
        L3_3 = L3_3(L1_1, "\\appdata\\locallow\\%1%l%l%l%l%l%l%.dll")
      end
    elseif L3_3 then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L3_3("Lua:NotodarFilename.A")
    end
  else
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L1_1, -30)
    if L3_3 == "\\appdata\\local\\temp\\mdi064.dll" then
      L3_3 = mp
      L3_3 = L3_3.set_mpattribute
      L3_3("Lua:FigyekDroppedFile.A")
    end
  end
elseif L2_2 == ".exe" then
  L3_3 = string
  L3_3 = L3_3.len
  L3_3 = L3_3(L1_1)
  if L3_3 < 19 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = L1_1.find
  L3_3 = L3_3(L1_1, "\\appdata\\roaming\\", 1, true)
  if L3_3 ~= nil then
    L3_3 = L1_1.match
    L3_3 = L3_3(L1_1, "(.+\\)([^\\]+)$")
    if string.sub(L3_3, -17) == "\\appdata\\roaming\\" then
      mp.set_mpattribute("Lua:SuspiciousExeFileInAppdata.A")
    elseif string.sub(L3_3, -27) == "\\appdata\\roaming\\microsoft\\" then
      mp.set_mpattribute("Lua:SuspiciousExeFileInAppdataMicrosoft.A")
    elseif string.sub(L3_3, -35) == "\\appdata\\roaming\\microsoft\\windows\\" then
      mp.set_mpattribute("Lua:SuspiciousExeFileInAppdataMicrosoftWindows.A")
    elseif string.sub(L3_3, -31) == "\\appdata\\roaming\\windowsupdate\\" then
      mp.set_mpattribute("Lua:SuspiciousExeFileInAppdataWindowsupdate.A")
    elseif string.match(L1_1, "\\appdata\\roaming\\%w%whost\\%w%whost.exe$") then
      mp.set_mpattribute("Lua:SuspiciousHostExeFileInAppdata.A")
    end
  else
    L3_3 = L1_1.find
    L3_3 = L3_3(L1_1, "\\appdata\\local", 1, true)
    if L3_3 ~= nil then
      L3_3 = L1_1.match
      L3_3 = L3_3(L1_1, "(.+\\)([^\\]+)$")
      if string.sub(L3_3, -22) == "\\local\\default folder\\" then
        mp.set_mpattribute("Lua:SuspiciousExeFileLocationInLocalAppdata.A")
      elseif string.sub(L3_3, -15) == "\\appdata\\local\\" then
        mp.set_mpattribute("Lua:SuspiciousExeFileInLocalAppdata.A")
      elseif string.sub(L3_3, -18) == "\\appdata\\locallow\\" then
        mp.set_mpattribute("Lua:SuspiciousExeFileInLocalLowAppdata.A")
      end
    else
      L3_3 = L1_1.find
      L3_3 = L3_3(L1_1, "\\appdata\\", 1, true)
      if L3_3 ~= nil then
        L3_3 = L1_1.match
        L3_3 = L3_3(L1_1, "(.+\\)([^\\]+)$")
        if string.sub(L3_3, -9) == "\\appdata\\" then
          mp.set_mpattribute("Lua:SuspiciousExeFileInAppdata.B")
        end
      else
        L3_3 = L1_1.find
        L3_3 = L3_3(L1_1, ":\\programdata\\", 1, true)
        if L3_3 ~= nil then
          L3_3 = L1_1.match
          L3_3 = L3_3(L1_1, "(.+\\)([^\\]+)$")
          if string.sub(L3_3, -14) == ":\\programdata\\" then
            mp.set_mpattribute("Lua:SuspiciousExeFileInProgramData.A")
          elseif string.match(L3_3, ":\\programdata\\%d%d%d%d%d%d\\$") or string.sub(L3_3, -24) == ":\\programdata\\microsoft\\" then
            mp.set_mpattribute("Lua:SuspiciousExeFileLocationInProgramData.A")
          end
        else
          L3_3 = L1_1.find
          L3_3 = L3_3(L1_1, "\\documents\\", 1, true)
          if L3_3 ~= nil then
            L3_3 = L1_1.match
            L3_3 = L3_3(L1_1, "(.+\\)([^\\]+)$")
            if string.match(L3_3, "\\users\\.+\\documents\\$") then
              mp.set_mpattribute("Lua:SuspiciousExeFileInUserDocumentsFolder.A")
            end
          end
        end
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
