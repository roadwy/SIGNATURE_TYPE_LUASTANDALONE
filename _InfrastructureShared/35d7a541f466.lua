if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil and mp.GetParentProcInfo().ppid ~= nil then
  if string.find(mp.GetParentProcInfo().image_path, "/opt/safebreach/simulator/app/sbsimulation", 1, true) then
    return mp.INFECTED
  end
  if mp.GetParentProcInfo(mp.GetParentProcInfo().ppid) ~= nil and mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).image_path ~= nil and mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).ppid ~= nil and string.find(mp.GetParentProcInfo(mp.GetParentProcInfo().ppid).image_path, "/opt/safebreach/simulator/app/sbsimulation", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
