local L0_0
L0_0 = headerpage
L0_0 = L0_0[1]
if L0_0 == 123 then
  L0_0 = headerpage
  L0_0 = L0_0[2]
  if L0_0 == 92 then
    L0_0 = headerpage
    L0_0 = L0_0[3]
    if L0_0 == 114 then
      L0_0 = headerpage
      L0_0 = L0_0[4]
    end
  end
elseif L0_0 ~= 116 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:find("rtfextradata", 1, true) or L0_0:find("amd64", 1, true) or L0_0:find("x86", 1, true) or L0_0:find("nsis", 1, true) or L0_0:find("pluginsdir", 1, true) or L0_0:find("resources", 1, true) or L0_0:find("ia64", 1, true) or L0_0:find("winsxs", 1, true) or L0_0:find("\\os\\", 1, true) or L0_0:find("\\device\\", 1, true) or L0_0:find("\\src\\", 1, true) or L0_0:find("\\extractedfiles\\", 1, true) or L0_0:find("\\windowsapps\\", 1, true) or L0_0:find("\\program files\\", 1, true) or L0_0:find("\\debug\\", 1, true) or L0_0:find("\\release\\", 1, true) or L0_0:find("\\obj\\", 1, true) or L0_0:find("\\bin\\", 1, true) or L0_0:find("\\stubexe\\", 1, true) or L0_0:find("backup", 1, true) or L0_0:find("atosc2", 1, true) or L0_0:find("system32", 1, true) or L0_0:find("syswow64", 1, true) or L0_0:find("nservices", 1, true) then
  return mp.CLEAN
end
if headerpage[1] == 123 and headerpage[2] == 92 and headerpage[3] == 114 and headerpage[4] == 116 and headerpage[5] ~= 102 then
  return mp.INFECTED
end
return mp.CLEAN
