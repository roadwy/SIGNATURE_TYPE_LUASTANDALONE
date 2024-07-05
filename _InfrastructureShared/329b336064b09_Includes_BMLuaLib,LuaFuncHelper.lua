local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L0_0 = L0_0(string.lower(this_sigattrlog[1].utf8p1), "microsoft.6365217ce6eb4_")
  AppendToRollingQueue("DefenderForIdentity", "Version", L0_0, 31104000, 5)
else
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = AppendToRollingQueue
    L0_0("DefenderForIdentity", "SupportedUsers", this_sigattrlog[2].np2, 31104000, 5)
  else
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = pcall
      L0_0(MpCommon.RollingQueueErase, "DefenderForIdentity")
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
