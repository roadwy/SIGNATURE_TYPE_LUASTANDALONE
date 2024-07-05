local L0_0
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadBrowser
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if L0_0 == "utorrent.exe" or L0_0 == "bittorrent.exe" then
    mp.set_mpattribute("Lua:IOAVBrowserUtorrent")
  elseif L0_0 == "chrome.exe" then
    mp.set_mpattribute("Lua:IOAVBrowserChrome")
  elseif L0_0 == "browser_broker.exe" then
    mp.set_mpattribute("Lua:IOAVBrowserEdge")
  elseif L0_0 == "iexplore.exe" then
    mp.set_mpattribute("Lua:IOAVBrowserIE")
  elseif L0_0 == "opera.exe" then
    mp.set_mpattribute("Lua:IOAVBrowserOpera")
  end
end
return mp.CLEAN
