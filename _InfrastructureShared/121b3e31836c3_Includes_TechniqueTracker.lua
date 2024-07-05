if IsProcNameInParentProcessTree("BM", "windeploy.exe") then
  return mp.CLEAN
end
return mp.INFECTED
