local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  if string.match(L1_1, "\\users\\[^\\]+\\appdata\\local\\temp\\rar$.+") then
    mp.set_mpattribute("Lua:CplWinrarExtracted.A")
    return mp.INFECTED
  end
  if L1_1:find("\\temp\\7zo", 1, true) ~= nil then
    mp.set_mpattribute("Lua:Cpl7ZipExtracted.A")
    return mp.INFECTED
  end
  if L1_1:find("\\temp\\wz[0-9a-f][0-9a-f][0-9a-f][0-9a-f]$") ~= nil then
    mp.set_mpattribute("Lua:CplWinZipExtracted.A")
    return mp.INFECTED
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "7zg.exe" and (L1_1:find("\\desktop\\", 1, true) ~= nil or L1_1:find("\\downloads\\", 1, true) ~= nil) then
    mp.set_mpattribute("Lua:Cpl7ZipExtracted.B")
  end
  if string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) == "explorer.exe" then
    if L1_1:find("\\temp\\temp[0-9]_.+%.zip$" ~= nil) then
      mp.set_mpattribute("Lua:CplExplorerZIPExtracted.A")
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
