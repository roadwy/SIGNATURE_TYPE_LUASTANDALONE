if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.004", "DefenseEvasion_ImpairDefenses_DisableSystemFirewall_iptables")
end
return mp.INFECTED
