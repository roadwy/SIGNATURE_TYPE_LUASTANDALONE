if mp.get_mpattribute("LUA:VeriatoCertClean") or mp.get_mpattribute("Exception:MonitoringTool:Uninstaller:Veriato") or mp.get_mpattribute("CERT:Clean:Veriato") then
  return mp.CLEAN
end
return mp.INFECTED
