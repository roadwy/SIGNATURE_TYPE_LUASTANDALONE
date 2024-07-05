local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("SCRIPT:GatakNsisInstData")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 3000 or L0_0 > 4000 then
    return mp.CLEAN
  end
  mp.set_mpattribute("//GatakNsisInstData")
  return mp.CLEAN
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("//GatakNsisInstData")
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if L0_0 ~= nil then
    if string.find(L0_0, "%(nsis%-6%-%d+%.exe%)$") then
      return mp.INFECTED
    end
    if string.find(L0_0, "%(nsis%-6%-install%d+%.exe%)$") then
      return mp.INFECTED
    end
    if string.find(L0_0, "%(nsis%-6%-setup%d+%.exe%)$") then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
