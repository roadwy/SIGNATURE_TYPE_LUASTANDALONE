local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  if ({
    ["chrome.exe"] = true,
    ["svchost.exe"] = true,
    ["wmiprvse.exe"] = true,
    ["msiexec.exe"] = true,
    ["syntpenh.exe"] = true
  })[string.lower(string.sub(L0_0, -15)):match("\\([^\\]+%.exe)$")] then
    return mp.CLEAN
  end
end
return mp.INFECTED
