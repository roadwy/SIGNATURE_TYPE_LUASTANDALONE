if mp.GetParentProcInfo() and mp.GetParentProcInfo().image_path:lower():find("mousocoreworker.exe") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003", "credapi_wuauclt")
add_parents()
reportSessionInformation()
return mp.INFECTED
