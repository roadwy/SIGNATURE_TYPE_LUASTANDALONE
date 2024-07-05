local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = parseLogonEvent
  L0_0 = L0_0(this_sigattrlog[1])
  processPasswordChangeEvent(L0_0)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
