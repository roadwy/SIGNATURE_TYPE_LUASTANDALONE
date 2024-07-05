local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "MpNewlyCreatedHint"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "BM_MZ_FILE"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "BM_MZ_DLL"
    L0_0 = L0_0(L1_1)
  elseif L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "RPF:TopLevelFile"
    L0_0 = L0_0(L1_1)
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_contextdata
      L1_1 = mp
      L1_1 = L1_1.CONTEXT_DATA_FILEPATH
      L0_0 = L0_0(L1_1)
      if L0_0 ~= nil then
        L1_1 = string
        L1_1 = L1_1.lower
        L1_1 = L1_1(L0_0)
        if string.find(L1_1, "\\program files", 1, true) ~= nil or string.find(L1_1, "\\windows\\", 1, true) ~= nil then
          return mp.CLEAN
        end
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
