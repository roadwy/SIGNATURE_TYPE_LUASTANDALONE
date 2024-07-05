local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L3_3 = 20
L4_4 = 20
L5_5 = 100
L6_6 = "ScanOrBruteforce_"
L7_7, L8_8, L9_9, L10_10 = nil, nil, nil, nil
if this_sigattrlog[24].matched and this_sigattrlog[24].ppid ~= nil then
  L0_0 = this_sigattrlog[24].ppid
  L1_1 = this_sigattrlog[24].utf8p2
  L2_2 = "SSH"
end
if this_sigattrlog[25].matched and this_sigattrlog[25].ppid ~= nil then
  L0_0 = this_sigattrlog[25].ppid
  L1_1 = this_sigattrlog[25].utf8p2
  L2_2 = "Telnet"
end
if this_sigattrlog[26].matched and this_sigattrlog[26].ppid ~= nil then
  L0_0 = this_sigattrlog[26].ppid
  L1_1 = this_sigattrlog[26].utf8p2
  L2_2 = "FTP"
end
if this_sigattrlog[27].matched and this_sigattrlog[27].ppid ~= nil then
  L0_0 = this_sigattrlog[27].ppid
  L1_1 = this_sigattrlog[27].utf8p2
  L2_2 = "SMB"
end
if this_sigattrlog[28].matched and this_sigattrlog[28].ppid ~= nil then
  L0_0 = this_sigattrlog[28].ppid
  L1_1 = this_sigattrlog[28].utf8p2
  L2_2 = "LDAP"
end
if this_sigattrlog[29].matched and this_sigattrlog[29].ppid ~= nil then
  L0_0 = this_sigattrlog[29].ppid
  L1_1 = this_sigattrlog[29].utf8p2
  L2_2 = "Kerberos"
end
if this_sigattrlog[30].matched and this_sigattrlog[30].ppid ~= nil then
  L0_0 = this_sigattrlog[30].ppid
  L1_1 = this_sigattrlog[30].utf8p2
  L2_2 = "RDP"
end
if L2_2 == nil or L0_0 == nil or L1_1 == nil then
  return mp.CLEAN
end
L8_8 = string.match(L1_1, "DestIp=([^;]*);")
if L8_8 == nil or L8_8 == "" then
  return mp.CLEAN
end
L7_7 = L6_6 .. L2_2
L9_9, L10_10 = pcall(MpCommon.RollingQueueCreate, L7_7, L5_5, L3_3)
if not L9_9 then
  return mp.CLEAN
end
L9_9, L10_10 = pcall(MpCommon.RollingQueueAppend, L7_7, L8_8, "", L3_3)
if not L9_9 then
  return mp.CLEAN
end
L9_9, L10_10 = pcall(MpCommon.RollingQueueCount, L7_7)
if not L9_9 then
  return mp.CLEAN
end
if L4_4 < L10_10 then
  TrackPidAndTechniqueBM(L0_0, "T1110", "CredentialAccess")
  return mp.INFECTED
end
return mp.CLEAN
