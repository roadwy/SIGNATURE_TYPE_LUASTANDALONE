local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].ppid
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].ppid
end
if L0_0 ~= nil then
  if isParentPackageManager(L0_0) then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
return mp.CLEAN
