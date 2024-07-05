local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetUACMetadata
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.Type
  if L1_1 == mp.AMSI_UAC_REQUEST_TYPE_EXE then
    L1_1 = L0_0.TrustState
    if L1_1 ~= mp.AMSI_UAC_TRUST_STATE_TRUSTED then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L0_0.Info.ApplicationName)
      if string.find(L1_1, "\\downloads", 1, true) then
        mp.ReportInternalDetection(L0_0.Info.ApplicationName, 3201970721, mp.TYPE_PERSIST)
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.FALSE
return L1_1
