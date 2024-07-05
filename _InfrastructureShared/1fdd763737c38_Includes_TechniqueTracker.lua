if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.004", "DefenseEvasion_ImpairDefenses_DisableSystemFirewall")
end
return mp.INFECTED
