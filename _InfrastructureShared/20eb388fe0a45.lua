local L0_0
if this_sigattrlog[20].matched then
  L0_0 = string.lower(this_sigattrlog[20].utf8p2)
end
if string.find(L0_0, "disablerealtimemonitoring $true", 1, true) then
end
if string.find(L0_0, "disablebehaviormonitoring $true", 1, true) then
end
if string.find(L0_0, "disableblockatfirstseen $true", 1, true) then
end
if string.find(L0_0, "disableioavprotection $true", 1, true) then
end
if string.find(L0_0, "disableprivacymode $true", 1, true) then
end
if string.find(L0_0, "disableintrusionpreventionsystem $true", 1, true) then
end
if string.find(L0_0, "disablescriptscanning $true", 1, true) then
end
if string.find(L0_0, "severethreatdefaultaction 6", 1, true) then
end
if string.find(L0_0, "lowthreatdefaultaction 6", 1, true) then
end
if string.find(L0_0, "moderatethreatdefaultaction 6", 1, true) then
end
if string.find(L0_0, "mapsreporting disabled", 1, true) then
end
if string.find(L0_0, "enablecontrolledfolderaccess disabled", 1, true) then
end
if nil + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 > 2 then
  return mp.INFECTED
end
return mp.CLEAN
