if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1564.002", "DefenseEvasion_HideArtifacts_HiddenUsers")
end
return mp.INFECTED
