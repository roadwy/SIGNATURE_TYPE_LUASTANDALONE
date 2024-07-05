local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  if ({
    ["wmiprvse.exe"] = true,
    ["csrss.exe"] = true,
    ["svchost.exe"] = true,
    ["gamemon64.des"] = true,
    ["wsqmcons.exe"] = true
  })[string.lower(string.sub(L0_0, -15)):match("\\([^\\]+)$")] then
    return mp.CLEAN
  end
end
return mp.INFECTED
