local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
if this_sigattrlog[9].matched and this_sigattrlog[9].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[9].utf8p1
  L0_0 = this_sigattrlog[9].ppid
end
if this_sigattrlog[10].matched and this_sigattrlog[10].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[10].utf8p1
  L0_0 = this_sigattrlog[10].ppid
end
if this_sigattrlog[11].matched and this_sigattrlog[11].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[11].utf8p1
  L0_0 = this_sigattrlog[11].ppid
end
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[1].utf8p2
  L1_1 = this_sigattrlog[1].ppid
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[2].utf8p2
  L1_1 = this_sigattrlog[2].ppid
end
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[3].utf8p2
  L1_1 = this_sigattrlog[3].ppid
end
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[4].utf8p2
  L1_1 = this_sigattrlog[4].ppid
end
if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[5].utf8p2
  L1_1 = this_sigattrlog[5].ppid
end
if this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[6].utf8p2
  L1_1 = this_sigattrlog[6].ppid
end
if this_sigattrlog[7].matched and this_sigattrlog[7].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[7].utf8p2
  L1_1 = this_sigattrlog[7].ppid
end
if this_sigattrlog[8].matched and this_sigattrlog[8].utf8p2 ~= nil then
  L3_3 = this_sigattrlog[8].utf8p2
  L1_1 = this_sigattrlog[8].ppid
end
if L2_2 == nil or L3_3 == nil then
  return mp.CLEAN
end
L4_4 = string.match(L3_3, "/var/spool/mail/([^;]*)")
if L4_4 ~= nil and L4_4 ~= "" then
  L5_5 = "/var/mail/" .. L4_4
end
if sysio.IsFileExists(L2_2) and string.find(L3_3, ">", 1, true) and (string.find(L3_3, L2_2, 1, true) or L5_5 ~= nil and L5_5 == L2_2) and bm.GetSignatureMatchDuration() < 20000000 then
  if L0_0 ~= nil then
    TrackPidAndTechniqueBM(L0_0, "T1070.002", "DefenseEvasion")
  end
  if L1_1 ~= nil then
    TrackPidAndTechniqueBM(L1_1, "T1070.002", "DefenseEvasion")
  end
  addRelatedProcess()
  if string.find(L3_3, "/var/log/mdatp_cron_job.log", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
