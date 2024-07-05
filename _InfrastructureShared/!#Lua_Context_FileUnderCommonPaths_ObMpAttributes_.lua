local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = L0_0.len
  L1_1 = L1_1(L0_0)
  if L1_1 > 60 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0)
    if string.match(L1_1, "\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache\\ie\\.+") then
      mp.set_mpattribute("Lua:Context/FileInINetCacheIE.A")
    end
    if string.find(L1_1, "\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) ~= nil then
      mp.set_mpattribute("Lua:FileInOutlookCache.A")
    end
    if string.match(L1_1, "\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache\\low\\ie\\.+") then
      mp.set_mpattribute("Lua:Context/FileInINetCacheLowIE.A")
    end
    if string.find(L1_1, "\\appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files\\", 1, true) ~= nil then
      mp.set_mpattribute("Lua:FileInWindowsMailApp.A")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
