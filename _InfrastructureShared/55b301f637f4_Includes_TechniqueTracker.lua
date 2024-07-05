local L0_0
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L0_0 = L0_0("c1db55ab-c21a-4637-bb3f-a12568109d35")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.IsHipsRuleEnabled
  L0_0 = L0_0("9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2")
elseif L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(bm.get_imagepath())
  if string.find(L0_0, "\\program files", 1, true) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1555.004", "credentialaccess")
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
