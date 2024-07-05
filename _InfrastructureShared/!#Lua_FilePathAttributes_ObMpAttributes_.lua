local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.match
L1_1 = L1_1(L0_0, "(.+\\)([^\\]+)$")
if L1_1 == nil or L1_1(L0_0, "(.+\\)([^\\]+)$") == nil then
  return mp.CLEAN
end
if string.match(L1_1, "\\appdata\\") then
  mp.set_mpattribute("Lua:FileInsideAppDataFolder")
  if string.match(L1_1, "\\appdata\\local\\") then
    mp.set_mpattribute("Lua:FileInsideAppDataLocalFolder")
    if string.match(L1_1, "\\appdata\\local\\temp\\") then
      mp.set_mpattribute("Lua:FileInsideAppDataLocalTempFolder")
    end
  elseif string.match(L1_1, "\\appdata\\roaming\\") then
    mp.set_mpattribute("Lua:FileInsideAppDataRoamingFolder")
  end
elseif string.match(L1_1, "\\program files\\") then
  mp.set_mpattribute("Lua:FileInsideProgramFilesFolder")
elseif string.match(L1_1, "\\program files (x86)\\") then
  mp.set_mpattribute("Lua:FileInsideProgramFilesX86Folder")
elseif string.match(L1_1, "\\programdata\\") then
  mp.set_mpattribute("Lua:FileInsideProgramDataFolder")
elseif string.match(L1_1, "\\windows\\system32\\") then
  mp.set_mpattribute("Lua:FileInsideSystemFolder")
elseif string.match(L1_1, "c:\\windows\\") then
  mp.set_mpattribute("Lua:FileInsideWindowsFolder")
elseif string.match(L1_1, "\\users\\[^\\]+\\") then
  mp.set_mpattribute("Lua:FileInsideUserProfileFolder")
  if string.match(L1_1, "\\users\\[^\\]+\\documents\\") then
    mp.set_mpattribute("Lua:FileInsideUserDocumentFolder")
  elseif string.match(L1_1, "\\users\\[^\\]+\\downloads\\") then
    mp.set_mpattribute("Lua:FileInsideUserDownloadFolder")
  elseif string.match(L1_1, "\\users\\[^\\]+\\desktop\\") then
    mp.set_mpattribute("Lua:FileInsideUserDesktopFolder")
  elseif string.match(L1_1, "\\users\\public\\") then
    mp.set_mpattribute("Lua:FileInsideUserPublicFolder")
  end
end
return mp.CLEAN
