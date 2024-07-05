TrackPidAndTechnique("CMDHSTR", "T1562.001", "wmic_def_excl")
if hstrlog[1].matched then
  set_research_data("wmic_method", "add", false)
else
  set_research_data("wmic_method", "set", false)
end
return mp.INFECTED
