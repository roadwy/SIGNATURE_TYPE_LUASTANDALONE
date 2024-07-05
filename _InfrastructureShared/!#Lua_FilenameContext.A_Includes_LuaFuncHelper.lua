local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil or #L1_1 <= 3 then
  return mp.CLEAN
end
if #L1_1 <= 20 and StringStartsWith(L1_1, "note_") and StringEndsWith(L1_1, "107-41d.pdf") then
  mp.set_mpattribute("Lua:FnameContext_TurlaPhish.A")
end
if L1_1 == "postanovlenie apelljacionnoj instancii.scr" then
  mp.set_mpattribute("Lua:FnameContext_TurlaBinary.A")
end
if L0_0 ~= nil and #L0_0 > 4 then
  if string.find(L0_0, "\\appdata\\local\\microsoft\\office\\solutionpackages\\", 1, true) ~= nil then
    mp.set_mpattribute("Lua:FileContext/FileInOfficeSolutionPackages.A")
  end
  if string.find(L0_0, "\\program files\\windowsapps\\", 1, true) ~= nil then
    mp.set_mpattribute("Lua:FileContext/FileInWindowsApps.A")
  end
  if string.find(L0_0, "\\program files\\adobe\\acrobat reader", 1, true) ~= nil then
    mp.set_mpattribute("Lua:FileContext/FileInAdobeFolder.A")
  end
  if string.find(L0_0, "\\appdata\\local\\microsoft\\windows\\inetcache\\", 1, true) ~= nil then
    mp.set_mpattribute("Lua:FileContext/FileInINetCache.A")
  end
  if string.find(L0_0, "\\appdata\\local\\temp\\chrome_bits_", 1, true) ~= nil then
    mp.set_mpattribute("Lua:FileContext/FileInTempChromeBits.A")
  end
end
return mp.CLEAN
