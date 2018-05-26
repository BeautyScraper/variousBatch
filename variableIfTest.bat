Set _cities="Aberdeen, London, Edinburgh"
:: Remove London if found
Set _dummy=%_cities:London=%
IF NOT %_dummy% == %_cities% (ECHO London was found.) ELSE (ECHO London was not found.)