local L0_0, L1_1
L0_0 = {}
L0_0.cert = "unk"
L1_1 = nri
L1_1 = L1_1.GetRawSSLCertificate
L1_1 = L1_1()
if L1_1 then
  L1_1 = MpCommon.Base64Encode(L1_1)
  if L1_1 then
    L0_0 = {cert = L1_1}
  end
end
nri.AddTelemetry(nri.Telemetry_HOSTNAME, L0_0)
return mp.INFECTED
