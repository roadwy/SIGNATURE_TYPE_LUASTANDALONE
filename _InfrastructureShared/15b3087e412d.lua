local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and string.lower(string.sub(L0_0, -15)):match("\\([^\\]+%.exe)$") == "explorer.exe" and string.lower(string.sub(mp.ContextualExpandEnvironmentVariables(L0_0), 2, 11)) == ":\\windows\\" then
  return mp.CLEAN
end
return mp.INFECTED
