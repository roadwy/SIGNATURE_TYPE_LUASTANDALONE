local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L0_0 = L0_0(this_sigattrlog[2].utf8p1)
    if sysio.GetFileSize(L0_0) > 300000000 and string.match(L0_0, ".:\\[^\\]+.exe$") then
      return mp.INFECTED
    else
      return mp.CLEAN
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
