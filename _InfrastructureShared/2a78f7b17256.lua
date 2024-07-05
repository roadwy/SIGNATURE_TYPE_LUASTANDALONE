if mp.get_mpattribute("SIGATTR:VirTool:Win32/Injector.gen!BR") and peattributes.checks_if_debugged_undocumented then
  return mp.INFECTED
end
return mp.CLEAN
