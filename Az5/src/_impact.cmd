setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref ConcurrentMode:FALSE
setPreference -pref UseHighz:FALSE
setPreference -pref svfUseTime:FALSE
loadProjectFile -file "D:/AzMemari/Az5/Az5.ipf"
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
ReadIdcode -p 1 
Program -p 1 -defaultVersion 0 
ReadIdcode -p 1 
assignFile -p 1 -file "D:/AzMemari/Az5/main.bit"
Program -p 1 -defaultVersion 0 
ReadIdcode -p 1 
Verify -p 1 
ReadIdcode -p 1 
ReadIdcode -p 1 
ReadIdcode -p 1 
Program -p 1 -defaultVersion 0 
ReadIdcode -p 1 
setCable -port auto
ReadIdcode -p 1 
Program -p 1 -defaultVersion 0 
Program -p 1 -defaultVersion 0 
saveProjectFile -file "D:/AzMemari/Az5/Az5.ipf"
