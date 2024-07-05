local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if mp.IsKnownFriendlyFile(L0_0, true, true) == true then
  return mp.CLEAN
end
if L0_0 ~= nil then
  if ({
    ["werfault.exe"] = true,
    ["svchost.exe"] = true,
    ["wmiprvse.exe"] = true,
    ["explorer.exe"] = true
  })[string.lower(string.sub(L0_0, -15)):match("\\([^\\]+%.exe)$")] and string.lower(string.sub(MpCommon.PathToWin32Path(L0_0), 2, 11)) == ":\\windows\\" then
    return mp.CLEAN
  end
end
return mp.INFECTED
