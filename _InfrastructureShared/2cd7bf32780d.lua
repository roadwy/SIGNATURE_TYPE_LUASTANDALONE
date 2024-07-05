local L0_0
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L0_0 = L0_0("BitlockerRansom")
if L0_0 ~= nil then
  for _FORV_4_, _FORV_5_ in ipairs(L0_0) do
    if _FORV_5_ == "D" then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
