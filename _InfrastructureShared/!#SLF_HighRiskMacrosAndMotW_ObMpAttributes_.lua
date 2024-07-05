local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L1_1 then
    L1_1 = versioning
    L1_1 = L1_1.IsBeta
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.INFECTED
      return L1_1
    else
      L1_1 = mp
      L1_1 = L1_1.get_contextdata
      L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
      L1_1 = L1_1 or ""
      if L1_1 ~= "" then
        L1_1 = L1_1:lower()
        if ({
          ["winword.exe"] = true,
          ["excel.exe"] = true
        })[L1_1] then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
