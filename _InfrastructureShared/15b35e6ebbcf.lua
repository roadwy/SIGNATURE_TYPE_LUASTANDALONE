local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  if ({
    ["explorer.exe"] = true,
    ["chrome.exe"] = true,
    ["microsoftedge.exe"] = true,
    ["iexplore.exe"] = true,
    ["firefox.exe"] = true,
    ["cmd.exe"] = true,
    ["net.exe"] = true,
    ["winword.exe"] = true,
    ["excel.exe"] = true,
    ["onenote.exe"] = true,
    ["powerpnt.exe"] = true,
    ["teams.exe"] = true,
    ["notepad++.exe"] = true,
    ["powershell.exe"] = true
  })[string.lower(string.sub(L0_0, -18)):match("\\([^\\]+%.exe)$")] then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
