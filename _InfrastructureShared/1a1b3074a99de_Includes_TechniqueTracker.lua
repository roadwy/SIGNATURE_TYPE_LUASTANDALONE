local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and string.len(L0_0) >= 15 then
  if ({
    ["msmpeng.exe"] = true,
    ["mpcmd.exe"] = true,
    ["mpcmdrun.exe"] = true,
    ["resetengine.exe"] = true,
    ["svchost.exe"] = true,
    ["wuauclt.exe"] = true,
    ["dismhost.exe"] = true
  })[string.lower(string.sub(L0_0, -15)):match("\\([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechniqueBM("BM", "T1562.001", "mptamper_cipolicy")
return mp.INFECTED
