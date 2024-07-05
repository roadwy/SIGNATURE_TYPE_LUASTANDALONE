local L0_0, L1_1, L2_2, L3_3, L4_4
for L4_4 = L1_1.SIGATTR_LOG_SZ, 1, -1 do
  if sigattr_head[L4_4].matched and (sigattr_head[L4_4].attribute == 16384 or sigattr_head[L4_4].attribute == 16389) then
    L0_0 = mp.ContextualExpandEnvironmentVariables(sigattr_head[L4_4].utf8p1)
    if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
      mp.ReportLowfi(L0_0 .. "\000", 3307547556)
    end
  end
end
return L1_1
