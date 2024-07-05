if IsLegacyOrgMachine() then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine("BM", nil, nil, 6)
return mp.INFECTED
