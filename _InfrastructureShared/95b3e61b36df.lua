local L0_0, L3_1, L4_2
for _FORV_4_ = 1, L4_2.SIGATTR_LOG_SZ do
  if sigattr_tail[_FORV_4_].matched and sigattr_tail[_FORV_4_].attribute == 16401 then
    L0_0 = sigattr_tail[_FORV_4_].utf8p1
    if L0_0 ~= nil then
      L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
      L0_0 = string.lower(L0_0)
      if L0_0 ~= nil and string.find(L0_0, "\\microsoft office", 1, true) == nil and string.find(L0_0, "\\windowsapps\\microsoft.office.desktop", 1, true) == nil then
        return mp.INFECTED
      end
    end
  end
end
return L3_1
