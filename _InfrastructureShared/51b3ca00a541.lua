local L0_0, L1_1, L2_2, L3_3, L4_4
for L3_3 = L0_0.SIGATTR_LOG_SZ, 1, -1 do
  L4_4 = sigattr_head
  L4_4 = L4_4[L3_3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = sigattr_head
    L4_4 = L4_4[L3_3]
    L4_4 = L4_4.attribute
    if L4_4 == 16384 then
      L4_4 = mp
      L4_4 = L4_4.ContextualExpandEnvironmentVariables
      L4_4 = L4_4(sigattr_head[L3_3].utf8p1)
      if L4_4 ~= nil and sysio.IsFileExists(L4_4) then
        mp.ReportLowfi(L4_4, 1501004956)
      end
    end
  end
end
return L0_0
