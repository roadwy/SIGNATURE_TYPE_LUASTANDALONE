if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 2251000510)
end
return mp.INFECTED
