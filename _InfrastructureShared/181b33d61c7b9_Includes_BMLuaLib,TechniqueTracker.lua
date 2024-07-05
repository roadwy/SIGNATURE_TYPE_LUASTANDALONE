if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1003.001", "credentialdumping_concrete", 86400)
end
sms_untrusted_process()
add_parents()
return mp.INFECTED
