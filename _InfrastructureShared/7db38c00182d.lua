if this_sigattrlog[2].matched then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1), 21307622)
  return mp.INFECTED
end
if this_sigattrlog[3].matched then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p1), 1488451358)
  return mp.INFECTED
end
return mp.INFECTED
