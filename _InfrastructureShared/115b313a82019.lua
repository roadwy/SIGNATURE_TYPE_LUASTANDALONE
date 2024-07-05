local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
for _FORV_5_ = 1, #{
  "lsass.exe",
  "svchost.exe",
  "services.exe",
  "connectionclient.exe"
} do
  if L0_0:find(({
    "lsass.exe",
    "svchost.exe",
    "services.exe",
    "connectionclient.exe"
  })[_FORV_5_], 1, true) ~= nil then
    return mp.CLEAN
  end
end
return _FOR_.INFECTED
