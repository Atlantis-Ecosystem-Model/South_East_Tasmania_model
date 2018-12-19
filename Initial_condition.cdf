netcdf Initial_condition {
dimensions:
	t = UNLIMITED ; // (1 currently)
	b = 11 ;
	z = 7 ;
variables:
	double t(t) ;
		t:units = "seconds since 2000-01-01 00:00:00 +10" ;
	double volume(t, b, z) ;
		volume:bmtype = "phys" ;
		volume:units = "m3" ;
		volume:long_name = "Volume" ;
		volume:sumtype = 1 ;
		volume:dtype = 0 ;
		volume:_FillValue = 0. ;
	double hdsource(t, b, z) ;
		hdsource:bmtype = "phys" ;
		hdsource:units = "1" ;
		hdsource:long_name = "Hydrodynamic sources" ;
		hdsource:sumtype = 0 ;
		hdsource:dtype = 0 ;
		hdsource:_FillValue = 0. ;
	double hdsink(t, b, z) ;
		hdsink:bmtype = "phys" ;
		hdsink:units = "1" ;
		hdsink:long_name = "Hydrodynamic sinks" ;
		hdsink:sumtype = 0 ;
		hdsink:dtype = 0 ;
		hdsink:_FillValue = 0. ;
	double eflux(t, b, z) ;
		eflux:bmtype = "phys" ;
		eflux:units = "1" ;
		eflux:long_name = "Hydrodynamic net exchanges" ;
		eflux:sumtype = 0 ;
		eflux:dtype = 0 ;
		eflux:_FillValue = 0. ;
	double vflux(t, b, z) ;
		vflux:bmtype = "phys" ;
		vflux:units = "1" ;
		vflux:long_name = "Hydrodynamic net vertical exchanges" ;
		vflux:sumtype = 0 ;
		vflux:dtype = 0 ;
		vflux:_FillValue = 0. ;
	double porosity(t, b, z) ;
		porosity:bmtype = "phys" ;
		porosity:units = "1" ;
		porosity:long_name = "Porosity" ;
		porosity:sumtype = 0 ;
		porosity:dtype = 0 ;
		porosity:_FillValue = 0. ;
	double nominal_dz(b, z) ;
		nominal_dz:bmtype = "phys" ;
		nominal_dz:units = "m" ;
		nominal_dz:long_name = "Thickness" ;
		nominal_dz:sumtype = 0 ;
		nominal_dz:dtype = 0 ;
		nominal_dz:_FillValue = 0. ;
	double dz(t, b, z) ;
		dz:bmtype = "phys" ;
		dz:units = "m" ;
		dz:long_name = "Thickness" ;
		dz:sumtype = 0 ;
		dz:dtype = 0 ;
		dz:_FillValue = 0. ;
	short numlayers(t, b) ;
		numlayers:bmtype = "phys" ;
		numlayers:units = "" ;
		numlayers:long_name = "Number of layers" ;
		numlayers:sumtype = 0 ;
		numlayers:dtype = 0 ;
		numlayers:_FillValue = 0s ;
	short topk(t, b) ;
		topk:bmtype = "phys" ;
		topk:units = "" ;
		topk:long_name = "Sediment top index" ;
		topk:sumtype = 0 ;
		topk:dtype = 0 ;
		topk:_FillValue = 0s ;
	double sedbiodepth(t, b) ;
		sedbiodepth:bmtype = "phys" ;
		sedbiodepth:units = "m" ;
		sedbiodepth:long_name = "Depth of biological activity" ;
		sedbiodepth:sumtype = 0 ;
		sedbiodepth:dtype = 0 ;
		sedbiodepth:_FillValue = 0.2 ;
	double seddetdepth(t, b) ;
		seddetdepth:bmtype = "phys" ;
		seddetdepth:units = "m" ;
		seddetdepth:long_name = "Max depth of detritus" ;
		seddetdepth:sumtype = 0 ;
		seddetdepth:dtype = 0 ;
		seddetdepth:_FillValue = 0.25 ;
	double sedoxdepth(t, b) ;
		sedoxdepth:bmtype = "phys" ;
		sedoxdepth:units = "m" ;
		sedoxdepth:long_name = "Depth of oxygen horizon" ;
		sedoxdepth:sumtype = 0 ;
		sedoxdepth:dtype = 0 ;
		sedoxdepth:_FillValue = 0.1 ;
	double sedbiodens(t, b) ;
		sedbiodens:bmtype = "phys" ;
		sedbiodens:units = "Animals m-2" ;
		sedbiodens:long_name = "Biological activity" ;
		sedbiodens:sumtype = 0 ;
		sedbiodens:dtype = 0 ;
		sedbiodens:_FillValue = 100. ;
	double sedirrigenh(t, b) ;
		sedirrigenh:bmtype = "phys" ;
		sedirrigenh:units = "1" ;
		sedirrigenh:long_name = "Bioirrigation enhancement" ;
		sedirrigenh:sumtype = 0 ;
		sedirrigenh:dtype = 0 ;
		sedirrigenh:_FillValue = 0. ;
	double sedturbenh(t, b) ;
		sedturbenh:bmtype = "phys" ;
		sedturbenh:units = "1" ;
		sedturbenh:long_name = "Bioturbation enhancement" ;
		sedturbenh:sumtype = 0 ;
		sedturbenh:dtype = 0 ;
		sedturbenh:_FillValue = 1.e-06 ;
	double erosion_rate(t, b) ;
		erosion_rate:bmtype = "phys" ;
		erosion_rate:units = "m s-1" ;
		erosion_rate:long_name = "Erosion rate" ;
		erosion_rate:sumtype = 0 ;
		erosion_rate:dtype = 0 ;
		erosion_rate:_FillValue = 4.e-07 ;
	double reef(t, b) ;
		reef:bmtype = "tracer" ;
		reef:units = "1" ;
		reef:long_name = "Percent reef cover" ;
		reef:sumtype = 1 ;
		reef:dtype = 0 ;
		reef:_FillValue = 0.2 ;
	double flat(t, b) ;
		flat:bmtype = "tracer" ;
		flat:units = "1" ;
		flat:long_name = "Percent flat cover" ;
		flat:sumtype = 1 ;
		flat:dtype = 0 ;
		flat:_FillValue = 0.8 ;
	double soft(t, b) ;
		soft:bmtype = "tracer" ;
		soft:units = "1" ;
		soft:long_name = "Percent soft cover" ;
		soft:sumtype = 1 ;
		soft:dtype = 0 ;
		soft:_FillValue = 0.8 ;
	double canyon(t, b) ;
		canyon:bmtype = "tracer" ;
		canyon:units = "1" ;
		canyon:long_name = "Percent canyon" ;
		canyon:sumtype = 0 ;
		canyon:dtype = 0 ;
		canyon:_FillValue = 0. ;
	double eddy(t, b) ;
		eddy:bmtype = "tracer" ;
		eddy:units = "1" ;
		eddy:long_name = "Eddy strength" ;
		eddy:sumtype = 1 ;
		eddy:dtype = 0 ;
		eddy:_FillValue = 0.8 ;
	double water(t, b, z) ;
		water:bmtype = "tracer" ;
		water:units = "1" ;
		water:long_name = "Water" ;
		water:sumtype = 0 ;
		water:dtype = 0 ;
		water:inwc = 1 ;
		water:insed = 1 ;
		water:dissol = 1 ;
		water:decay = 0. ;
		water:partic = 0 ;
		water:_FillValue = 1. ;
	double NH3(t, b, z) ;
		NH3:bmtype = "tracer" ;
		NH3:units = "mg N m-3" ;
		NH3:long_name = "Ammonia" ;
		NH3:sumtype = 1 ;
		NH3:dtype = 0 ;
		NH3:inwc = 1 ;
		NH3:insed = 1 ;
		NH3:dissol = 1 ;
		NH3:decay = 0. ;
		NH3:partic = 0 ;
		NH3:_FillValue = 5. ;
	double NO3(t, b, z) ;
		NO3:bmtype = "tracer" ;
		NO3:units = "mg N m-3" ;
		NO3:long_name = "Nitrate" ;
		NO3:sumtype = 1 ;
		NO3:dtype = 0 ;
		NO3:inwc = 1 ;
		NO3:insed = 1 ;
		NO3:dissol = 1 ;
		NO3:decay = 0. ;
		NO3:partic = 0 ;
		NO3:_FillValue = 5. ;
	double DON(t, b, z) ;
		DON:bmtype = "tracer" ;
		DON:units = "mg N m-3" ;
		DON:long_name = "Dissolved Organic Nitrogen" ;
		DON:sumtype = 1 ;
		DON:dtype = 0 ;
		DON:inwc = 1 ;
		DON:insed = 1 ;
		DON:dissol = 1 ;
		DON:decay = 0. ;
		DON:partic = 0 ;
		DON:_FillValue = 1. ;
	double MicroNut(t, b, z) ;
		MicroNut:bmtype = "tracer" ;
		MicroNut:units = "mg N m-3" ;
		MicroNut:long_name = "Dissolved Organic Nitrogen" ;
		MicroNut:sumtype = 1 ;
		MicroNut:dtype = 0 ;
		MicroNut:inwc = 1 ;
		MicroNut:insed = 1 ;
		MicroNut:dissol = 1 ;
		MicroNut:decay = 0. ;
		MicroNut:partic = 0 ;
		MicroNut:_FillValue = 0. ;
	double Oxygen(t, b, z) ;
		Oxygen:bmtype = "tracer" ;
		Oxygen:units = "mg O2 m-3" ;
		Oxygen:long_name = "Dissolved Oxygen" ;
		Oxygen:sumtype = 1 ;
		Oxygen:dtype = 0 ;
		Oxygen:inwc = 1 ;
		Oxygen:insed = 1 ;
		Oxygen:dissol = 1 ;
		Oxygen:decay = 0. ;
		Oxygen:partic = 0 ;
		Oxygen:_FillValue = 8000. ;
	double Si(t, b, z) ;
		Si:bmtype = "tracer" ;
		Si:units = "mg Si m-3" ;
		Si:long_name = "Dissolved Silica" ;
		Si:sumtype = 1 ;
		Si:dtype = 0 ;
		Si:inwc = 1 ;
		Si:insed = 1 ;
		Si:dissol = 1 ;
		Si:decay = 0. ;
		Si:partic = 0 ;
		Si:_FillValue = 14. ;
	double Det_Si(t, b, z) ;
		Det_Si:bmtype = "tracer" ;
		Det_Si:units = "mg Si m-3" ;
		Det_Si:long_name = "Detrital Silica" ;
		Det_Si:sumtype = 1 ;
		Det_Si:dtype = 0 ;
		Det_Si:inwc = 1 ;
		Det_Si:insed = 1 ;
		Det_Si:dissol = 0 ;
		Det_Si:decay = 0. ;
		Det_Si:partic = 1 ;
		Det_Si:passive = 1 ;
		Det_Si:svel = -2.894e-05 ;
		Det_Si:xvel = 0. ;
		Det_Si:psize = 1.e-05 ;
		Det_Si:b_dens = 1000000000. ;
		Det_Si:i_conc = 200000000. ;
		Det_Si:f_conc = 200000000. ;
		Det_Si:_FillValue = 1. ;
	double Light(t, b, z) ;
		Light:bmtype = "tracer" ;
		Light:units = "" ;
		Light:long_name = "Light intensity on the surface of a cell" ;
		Light:sumtype = 1 ;
		Light:dtype = 0 ;
		Light:inwc = 0 ;
		Light:insed = 0 ;
		Light:dissol = 1 ;
		Light:decay = 0. ;
		Light:partic = 0 ;
		Light:_FillValue = 0. ;
	double Temp(t, b, z) ;
		Temp:bmtype = "tracer" ;
		Temp:units = "degrees Celcius" ;
		Temp:long_name = "Temperature" ;
		Temp:sumtype = 1 ;
		Temp:dtype = 0 ;
		Temp:inwc = 0 ;
		Temp:insed = 0 ;
		Temp:dissol = 1 ;
		Temp:decay = 0. ;
		Temp:partic = 0 ;
		Temp:_FillValue = 15. ;
	double salt(t, b, z) ;
		salt:bmtype = "tracer" ;
		salt:units = "PSU" ;
		salt:long_name = "Salinity" ;
		salt:sumtype = 1 ;
		salt:dtype = 0 ;
		salt:inwc = 1 ;
		salt:insed = 1 ;
		salt:dissol = 1 ;
		salt:decay = 0. ;
		salt:partic = 0 ;
		salt:_FillValue = 35. ;
	double Denitrifiction(t, b, z) ;
		Denitrifiction:bmtype = "tracer" ;
		Denitrifiction:units = "" ;
		Denitrifiction:long_name = "Denitrifiction" ;
		Denitrifiction:sumtype = 1 ;
		Denitrifiction:dtype = 0 ;
		Denitrifiction:inwc = 0 ;
		Denitrifiction:insed = 0 ;
		Denitrifiction:dissol = 1 ;
		Denitrifiction:decay = 0. ;
		Denitrifiction:partic = 0 ;
		Denitrifiction:_FillValue = 0. ;
	double Nitrification(t, b, z) ;
		Nitrification:bmtype = "tracer" ;
		Nitrification:units = "" ;
		Nitrification:long_name = "Nitrification" ;
		Nitrification:sumtype = 1 ;
		Nitrification:dtype = 0 ;
		Nitrification:inwc = 0 ;
		Nitrification:insed = 0 ;
		Nitrification:dissol = 1 ;
		Nitrification:decay = 0. ;
		Nitrification:partic = 0 ;
		Nitrification:_FillValue = 0. ;
	double Chl_a(t, b, z) ;
		Chl_a:bmtype = "tracer" ;
		Chl_a:units = "" ;
		Chl_a:long_name = "Chlorophyll" ;
		Chl_a:sumtype = 1 ;
		Chl_a:dtype = 0 ;
		Chl_a:inwc = 0 ;
		Chl_a:insed = 0 ;
		Chl_a:dissol = 1 ;
		Chl_a:decay = 0. ;
		Chl_a:partic = 0 ;
		Chl_a:_FillValue = 0. ;
	double Stress(t, b, z) ;
		Stress:bmtype = "tracer" ;
		Stress:units = "N m-2" ;
		Stress:long_name = "Surface stress" ;
		Stress:sumtype = 0 ;
		Stress:dtype = 0 ;
		Stress:inwc = 0 ;
		Stress:insed = 0 ;
		Stress:dissol = 1 ;
		Stress:decay = 0. ;
		Stress:partic = 0 ;
		Stress:_FillValue = 0. ;
	double DiagNGain(t, b, z) ;
		DiagNGain:bmtype = "tracer" ;
		DiagNGain:units = "N m-2" ;
		DiagNGain:long_name = "Diagnostic - gain in checked group" ;
		DiagNGain:sumtype = 0 ;
		DiagNGain:dtype = 0 ;
		DiagNGain:inwc = 0 ;
		DiagNGain:insed = 0 ;
		DiagNGain:dissol = 1 ;
		DiagNGain:decay = 0. ;
		DiagNGain:partic = 0 ;
		DiagNGain:_FillValue = 0. ;
	double DiagNLoss(t, b, z) ;
		DiagNLoss:bmtype = "tracer" ;
		DiagNLoss:units = "N m-2" ;
		DiagNLoss:long_name = "Diagnostic - loss in checked group" ;
		DiagNLoss:sumtype = 0 ;
		DiagNLoss:dtype = 0 ;
		DiagNLoss:inwc = 0 ;
		DiagNLoss:insed = 0 ;
		DiagNLoss:dissol = 1 ;
		DiagNLoss:decay = 0. ;
		DiagNLoss:partic = 0 ;
		DiagNLoss:_FillValue = 0. ;
	double DiagNFlux(t, b, z) ;
		DiagNFlux:bmtype = "tracer" ;
		DiagNFlux:units = "N m-2" ;
		DiagNFlux:long_name = "Diagnostic - flux in checked group" ;
		DiagNFlux:sumtype = 0 ;
		DiagNFlux:dtype = 0 ;
		DiagNFlux:inwc = 0 ;
		DiagNFlux:insed = 0 ;
		DiagNFlux:dissol = 1 ;
		DiagNFlux:decay = 0. ;
		DiagNFlux:partic = 0 ;
		DiagNFlux:_FillValue = 0. ;
	double Light_Adaptn_MB(t, b, z) ;
		Light_Adaptn_MB:bmtype = "tracer" ;
		Light_Adaptn_MB:units = "MBU" ;
		Light_Adaptn_MB:long_name = "Light Adaptation of MicroPB" ;
		Light_Adaptn_MB:sumtype = 0 ;
		Light_Adaptn_MB:dtype = 0 ;
		Light_Adaptn_MB:inwc = 0 ;
		Light_Adaptn_MB:insed = 0 ;
		Light_Adaptn_MB:dissol = 1 ;
		Light_Adaptn_MB:decay = 0. ;
		Light_Adaptn_MB:partic = 0 ;
		Light_Adaptn_MB:_FillValue = 15. ;
	double Light_Adaptn_PL(t, b, z) ;
		Light_Adaptn_PL:bmtype = "tracer" ;
		Light_Adaptn_PL:units = "PSU" ;
		Light_Adaptn_PL:long_name = "Light Adaptation of Diatom" ;
		Light_Adaptn_PL:sumtype = 0 ;
		Light_Adaptn_PL:dtype = 0 ;
		Light_Adaptn_PL:inwc = 0 ;
		Light_Adaptn_PL:insed = 0 ;
		Light_Adaptn_PL:dissol = 1 ;
		Light_Adaptn_PL:decay = 0. ;
		Light_Adaptn_PL:partic = 0 ;
		Light_Adaptn_PL:_FillValue = 15. ;
	double Light_Adaptn_DF(t, b, z) ;
		Light_Adaptn_DF:bmtype = "tracer" ;
		Light_Adaptn_DF:units = "PSU" ;
		Light_Adaptn_DF:long_name = "Light Adaptation of DinoFlag" ;
		Light_Adaptn_DF:sumtype = 0 ;
		Light_Adaptn_DF:dtype = 0 ;
		Light_Adaptn_DF:inwc = 0 ;
		Light_Adaptn_DF:insed = 0 ;
		Light_Adaptn_DF:dissol = 1 ;
		Light_Adaptn_DF:decay = 0. ;
		Light_Adaptn_DF:partic = 0 ;
		Light_Adaptn_DF:_FillValue = 0. ;
	double Light_Adaptn_PS(t, b, z) ;
		Light_Adaptn_PS:bmtype = "tracer" ;
		Light_Adaptn_PS:units = "PSU" ;
		Light_Adaptn_PS:long_name = "Light Adaptation of PicoPhytopl" ;
		Light_Adaptn_PS:sumtype = 0 ;
		Light_Adaptn_PS:dtype = 0 ;
		Light_Adaptn_PS:inwc = 0 ;
		Light_Adaptn_PS:insed = 0 ;
		Light_Adaptn_PS:dissol = 1 ;
		Light_Adaptn_PS:decay = 0. ;
		Light_Adaptn_PS:partic = 0 ;
		Light_Adaptn_PS:_FillValue = 15. ;
	double Cephalopod_N1(t, b, z) ;
		Cephalopod_N1:bmtype = "tracer" ;
		Cephalopod_N1:units = "mg N m-3" ;
		Cephalopod_N1:long_name = "Cephalopod1 Nitrogen" ;
		Cephalopod_N1:sumtype = 1 ;
		Cephalopod_N1:dtype = 0 ;
		Cephalopod_N1:inwc = 1 ;
		Cephalopod_N1:insed = 0 ;
		Cephalopod_N1:dissol = 0 ;
		Cephalopod_N1:decay = 0. ;
		Cephalopod_N1:partic = 1 ;
		Cephalopod_N1:passive = 0 ;
		Cephalopod_N1:svel = 0. ;
		Cephalopod_N1:xvel = 0. ;
		Cephalopod_N1:psize = 10. ;
		Cephalopod_N1:b_dens = 1000000000. ;
		Cephalopod_N1:i_conc = 200000000. ;
		Cephalopod_N1:f_conc = 200000000. ;
		Cephalopod_N1:_FillValue = 0.001 ;
	double Cephalopod_N2(t, b, z) ;
		Cephalopod_N2:bmtype = "tracer" ;
		Cephalopod_N2:units = "mg N m-3" ;
		Cephalopod_N2:long_name = "Cephalopod2 Nitrogen" ;
		Cephalopod_N2:sumtype = 1 ;
		Cephalopod_N2:dtype = 0 ;
		Cephalopod_N2:inwc = 1 ;
		Cephalopod_N2:insed = 0 ;
		Cephalopod_N2:dissol = 0 ;
		Cephalopod_N2:decay = 0. ;
		Cephalopod_N2:partic = 1 ;
		Cephalopod_N2:passive = 0 ;
		Cephalopod_N2:svel = 0. ;
		Cephalopod_N2:xvel = 0. ;
		Cephalopod_N2:psize = 10. ;
		Cephalopod_N2:b_dens = 1000000000. ;
		Cephalopod_N2:i_conc = 200000000. ;
		Cephalopod_N2:f_conc = 200000000. ;
		Cephalopod_N2:_FillValue = 0.001 ;
	double Prawn_N1(t, b, z) ;
		Prawn_N1:bmtype = "tracer" ;
		Prawn_N1:units = "mg N m-3" ;
		Prawn_N1:long_name = "Prawn1 Nitrogen" ;
		Prawn_N1:sumtype = 1 ;
		Prawn_N1:dtype = 0 ;
		Prawn_N1:inwc = 1 ;
		Prawn_N1:insed = 0 ;
		Prawn_N1:dissol = 0 ;
		Prawn_N1:decay = 0. ;
		Prawn_N1:partic = 1 ;
		Prawn_N1:passive = 0 ;
		Prawn_N1:svel = 0. ;
		Prawn_N1:xvel = 0. ;
		Prawn_N1:psize = 10. ;
		Prawn_N1:b_dens = 1000000000. ;
		Prawn_N1:i_conc = 200000000. ;
		Prawn_N1:f_conc = 200000000. ;
		Prawn_N1:_FillValue = 0.001 ;
	double Prawn_N2(t, b, z) ;
		Prawn_N2:bmtype = "tracer" ;
		Prawn_N2:units = "mg N m-3" ;
		Prawn_N2:long_name = "Prawn2 Nitrogen" ;
		Prawn_N2:sumtype = 1 ;
		Prawn_N2:dtype = 0 ;
		Prawn_N2:inwc = 1 ;
		Prawn_N2:insed = 0 ;
		Prawn_N2:dissol = 0 ;
		Prawn_N2:decay = 0. ;
		Prawn_N2:partic = 1 ;
		Prawn_N2:passive = 0 ;
		Prawn_N2:svel = 0. ;
		Prawn_N2:xvel = 0. ;
		Prawn_N2:psize = 10. ;
		Prawn_N2:b_dens = 1000000000. ;
		Prawn_N2:i_conc = 200000000. ;
		Prawn_N2:f_conc = 200000000. ;
		Prawn_N2:_FillValue = 0.001 ;
	double Carniv_Zoo_N(t, b, z) ;
		Carniv_Zoo_N:bmtype = "tracer" ;
		Carniv_Zoo_N:units = "mg N m-3" ;
		Carniv_Zoo_N:long_name = "Carnivorous zooplankton Nitrogen" ;
		Carniv_Zoo_N:sumtype = 1 ;
		Carniv_Zoo_N:dtype = 0 ;
		Carniv_Zoo_N:inwc = 1 ;
		Carniv_Zoo_N:insed = 0 ;
		Carniv_Zoo_N:dissol = 0 ;
		Carniv_Zoo_N:decay = 0. ;
		Carniv_Zoo_N:partic = 1 ;
		Carniv_Zoo_N:passive = 1 ;
		Carniv_Zoo_N:svel = 0. ;
		Carniv_Zoo_N:xvel = 0. ;
		Carniv_Zoo_N:psize = 0.1 ;
		Carniv_Zoo_N:b_dens = 1000000000. ;
		Carniv_Zoo_N:i_conc = 200000000. ;
		Carniv_Zoo_N:f_conc = 200000000. ;
		Carniv_Zoo_N:_FillValue = 0.01 ;
	double Deposit_Feeder_N(t, b, z) ;
		Deposit_Feeder_N:bmtype = "tracer" ;
		Deposit_Feeder_N:units = "mg N m-3" ;
		Deposit_Feeder_N:long_name = "Deposit Feeder Nitrogen" ;
		Deposit_Feeder_N:sumtype = 1 ;
		Deposit_Feeder_N:dtype = 0 ;
		Deposit_Feeder_N:inwc = 0 ;
		Deposit_Feeder_N:insed = 1 ;
		Deposit_Feeder_N:dissol = 0 ;
		Deposit_Feeder_N:decay = 0. ;
		Deposit_Feeder_N:partic = 1 ;
		Deposit_Feeder_N:passive = 0 ;
		Deposit_Feeder_N:svel = 0. ;
		Deposit_Feeder_N:xvel = 0. ;
		Deposit_Feeder_N:psize = 10. ;
		Deposit_Feeder_N:b_dens = 1000000000. ;
		Deposit_Feeder_N:i_conc = 200000000. ;
		Deposit_Feeder_N:f_conc = 200000000. ;
		Deposit_Feeder_N:_FillValue = 5. ;
	double MicroPB_N(t, b, z) ;
		MicroPB_N:bmtype = "tracer" ;
		MicroPB_N:units = "mg N m-3" ;
		MicroPB_N:long_name = "Microphtybenthos Nitrogen" ;
		MicroPB_N:sumtype = 1 ;
		MicroPB_N:dtype = 0 ;
		MicroPB_N:inwc = 1 ;
		MicroPB_N:insed = 1 ;
		MicroPB_N:dissol = 0 ;
		MicroPB_N:decay = 0. ;
		MicroPB_N:partic = 1 ;
		MicroPB_N:passive = 1 ;
		MicroPB_N:svel = -2.893e-06 ;
		MicroPB_N:xvel = 0. ;
		MicroPB_N:psize = 1.e-05 ;
		MicroPB_N:b_dens = 1000000000. ;
		MicroPB_N:i_conc = 200000000. ;
		MicroPB_N:f_conc = 200000000. ;
		MicroPB_N:_FillValue = 0. ;
	double Benthic_Carniv_N(t, b, z) ;
		Benthic_Carniv_N:bmtype = "tracer" ;
		Benthic_Carniv_N:units = "mg N m-3" ;
		Benthic_Carniv_N:long_name = "Benthic Carnivore Nitrogen" ;
		Benthic_Carniv_N:sumtype = 1 ;
		Benthic_Carniv_N:dtype = 0 ;
		Benthic_Carniv_N:inwc = 0 ;
		Benthic_Carniv_N:insed = 1 ;
		Benthic_Carniv_N:dissol = 0 ;
		Benthic_Carniv_N:decay = 0. ;
		Benthic_Carniv_N:partic = 1 ;
		Benthic_Carniv_N:passive = 0 ;
		Benthic_Carniv_N:svel = 0. ;
		Benthic_Carniv_N:xvel = 0. ;
		Benthic_Carniv_N:psize = 10. ;
		Benthic_Carniv_N:b_dens = 1000000000. ;
		Benthic_Carniv_N:i_conc = 200000000. ;
		Benthic_Carniv_N:f_conc = 200000000. ;
		Benthic_Carniv_N:_FillValue = 20. ;
	double Gelat_Zoo_N(t, b, z) ;
		Gelat_Zoo_N:bmtype = "tracer" ;
		Gelat_Zoo_N:units = "mg N m-3" ;
		Gelat_Zoo_N:long_name = "Gelatinous zooplankton Nitrogen" ;
		Gelat_Zoo_N:sumtype = 1 ;
		Gelat_Zoo_N:dtype = 0 ;
		Gelat_Zoo_N:inwc = 1 ;
		Gelat_Zoo_N:insed = 0 ;
		Gelat_Zoo_N:dissol = 0 ;
		Gelat_Zoo_N:decay = 0. ;
		Gelat_Zoo_N:partic = 1 ;
		Gelat_Zoo_N:passive = 1 ;
		Gelat_Zoo_N:svel = 0. ;
		Gelat_Zoo_N:xvel = 0. ;
		Gelat_Zoo_N:psize = 10. ;
		Gelat_Zoo_N:b_dens = 1000000000. ;
		Gelat_Zoo_N:i_conc = 200000000. ;
		Gelat_Zoo_N:f_conc = 200000000. ;
		Gelat_Zoo_N:_FillValue = 0.1 ;
	double Diatom_N(t, b, z) ;
		Diatom_N:bmtype = "tracer" ;
		Diatom_N:units = "mg N m-3" ;
		Diatom_N:long_name = "Diatom Nitrogen" ;
		Diatom_N:sumtype = 0 ;
		Diatom_N:dtype = 0 ;
		Diatom_N:inwc = 1 ;
		Diatom_N:insed = 1 ;
		Diatom_N:dissol = 0 ;
		Diatom_N:decay = 0. ;
		Diatom_N:partic = 1 ;
		Diatom_N:passive = 1 ;
		Diatom_N:svel = -2.893e-06 ;
		Diatom_N:xvel = 0. ;
		Diatom_N:psize = 1.e-05 ;
		Diatom_N:b_dens = 1000000000. ;
		Diatom_N:i_conc = 200000000. ;
		Diatom_N:f_conc = 200000000. ;
		Diatom_N:_FillValue = 0.001 ;
	double DinoFlag_N(t, b, z) ;
		DinoFlag_N:bmtype = "tracer" ;
		DinoFlag_N:units = "mg N m-3" ;
		DinoFlag_N:long_name = "Dinoflagellates Nitrogen" ;
		DinoFlag_N:sumtype = 1 ;
		DinoFlag_N:dtype = 0 ;
		DinoFlag_N:inwc = 1 ;
		DinoFlag_N:insed = 1 ;
		DinoFlag_N:dissol = 0 ;
		DinoFlag_N:decay = 0. ;
		DinoFlag_N:partic = 1 ;
		DinoFlag_N:passive = 1 ;
		DinoFlag_N:svel = 0. ;
		DinoFlag_N:xvel = 0. ;
		DinoFlag_N:psize = 1.e-05 ;
		DinoFlag_N:b_dens = 1000000000. ;
		DinoFlag_N:i_conc = 200000000. ;
		DinoFlag_N:f_conc = 200000000. ;
		DinoFlag_N:_FillValue = 0. ;
	double PicoPhytopl_N(t, b, z) ;
		PicoPhytopl_N:bmtype = "tracer" ;
		PicoPhytopl_N:units = "mg N m-3" ;
		PicoPhytopl_N:long_name = "Pico-phytoplankton Nitrogen" ;
		PicoPhytopl_N:sumtype = 1 ;
		PicoPhytopl_N:dtype = 0 ;
		PicoPhytopl_N:inwc = 1 ;
		PicoPhytopl_N:insed = 1 ;
		PicoPhytopl_N:dissol = 0 ;
		PicoPhytopl_N:decay = 0. ;
		PicoPhytopl_N:partic = 1 ;
		PicoPhytopl_N:passive = 1 ;
		PicoPhytopl_N:svel = 0. ;
		PicoPhytopl_N:xvel = 0. ;
		PicoPhytopl_N:psize = 1.e-05 ;
		PicoPhytopl_N:b_dens = 1000000000. ;
		PicoPhytopl_N:i_conc = 200000000. ;
		PicoPhytopl_N:f_conc = 200000000. ;
		PicoPhytopl_N:_FillValue = 0.001 ;
	double Zoo_N(t, b, z) ;
		Zoo_N:bmtype = "tracer" ;
		Zoo_N:units = "mg N m-3" ;
		Zoo_N:long_name = "Mesozooplankton Nitrogen" ;
		Zoo_N:sumtype = 1 ;
		Zoo_N:dtype = 0 ;
		Zoo_N:inwc = 1 ;
		Zoo_N:insed = 0 ;
		Zoo_N:dissol = 0 ;
		Zoo_N:decay = 0. ;
		Zoo_N:partic = 1 ;
		Zoo_N:passive = 1 ;
		Zoo_N:svel = 0. ;
		Zoo_N:xvel = 0. ;
		Zoo_N:psize = 0.001 ;
		Zoo_N:b_dens = 1000000000. ;
		Zoo_N:i_conc = 200000000. ;
		Zoo_N:f_conc = 200000000. ;
		Zoo_N:_FillValue = 0.01 ;
	double MicroZoo_N(t, b, z) ;
		MicroZoo_N:bmtype = "tracer" ;
		MicroZoo_N:units = "mg N m-3" ;
		MicroZoo_N:long_name = "Microzooplankton Nitrogen" ;
		MicroZoo_N:sumtype = 1 ;
		MicroZoo_N:dtype = 0 ;
		MicroZoo_N:inwc = 1 ;
		MicroZoo_N:insed = 0 ;
		MicroZoo_N:dissol = 0 ;
		MicroZoo_N:decay = 0. ;
		MicroZoo_N:partic = 1 ;
		MicroZoo_N:passive = 1 ;
		MicroZoo_N:svel = 0. ;
		MicroZoo_N:xvel = 0. ;
		MicroZoo_N:psize = 1.e-05 ;
		MicroZoo_N:b_dens = 1000000000. ;
		MicroZoo_N:i_conc = 200000000. ;
		MicroZoo_N:f_conc = 200000000. ;
		MicroZoo_N:_FillValue = 1. ;
	double Pelag_Bact_N(t, b, z) ;
		Pelag_Bact_N:bmtype = "tracer" ;
		Pelag_Bact_N:units = "mg N m-3" ;
		Pelag_Bact_N:long_name = "Pelagic Bacteria Nitrogen" ;
		Pelag_Bact_N:sumtype = 1 ;
		Pelag_Bact_N:dtype = 0 ;
		Pelag_Bact_N:inwc = 1 ;
		Pelag_Bact_N:insed = 0 ;
		Pelag_Bact_N:dissol = 0 ;
		Pelag_Bact_N:decay = 0. ;
		Pelag_Bact_N:partic = 1 ;
		Pelag_Bact_N:passive = 1 ;
		Pelag_Bact_N:svel = 0. ;
		Pelag_Bact_N:xvel = 0. ;
		Pelag_Bact_N:psize = 1.e-05 ;
		Pelag_Bact_N:b_dens = 1000000000. ;
		Pelag_Bact_N:i_conc = 200000000. ;
		Pelag_Bact_N:f_conc = 200000000. ;
		Pelag_Bact_N:_FillValue = 0.02 ;
	double Sed_Bact_N(t, b, z) ;
		Sed_Bact_N:bmtype = "tracer" ;
		Sed_Bact_N:units = "mg N m-3" ;
		Sed_Bact_N:long_name = "Sediment Bacteria Nitrogen" ;
		Sed_Bact_N:sumtype = 1 ;
		Sed_Bact_N:dtype = 0 ;
		Sed_Bact_N:inwc = 0 ;
		Sed_Bact_N:insed = 1 ;
		Sed_Bact_N:dissol = 0 ;
		Sed_Bact_N:decay = 0. ;
		Sed_Bact_N:partic = 1 ;
		Sed_Bact_N:passive = 1 ;
		Sed_Bact_N:svel = 0. ;
		Sed_Bact_N:xvel = 0. ;
		Sed_Bact_N:psize = 1.e-05 ;
		Sed_Bact_N:b_dens = 1000000000. ;
		Sed_Bact_N:i_conc = 200000000. ;
		Sed_Bact_N:f_conc = 200000000. ;
		Sed_Bact_N:_FillValue = 100. ;
	double Meiobenth_N(t, b, z) ;
		Meiobenth_N:bmtype = "tracer" ;
		Meiobenth_N:units = "mg N m-3" ;
		Meiobenth_N:long_name = "Meiobenthos Nitrogen" ;
		Meiobenth_N:sumtype = 1 ;
		Meiobenth_N:dtype = 0 ;
		Meiobenth_N:inwc = 0 ;
		Meiobenth_N:insed = 1 ;
		Meiobenth_N:dissol = 0 ;
		Meiobenth_N:decay = 0. ;
		Meiobenth_N:partic = 1 ;
		Meiobenth_N:passive = 0 ;
		Meiobenth_N:svel = 0. ;
		Meiobenth_N:xvel = 0. ;
		Meiobenth_N:psize = 0.001 ;
		Meiobenth_N:b_dens = 1000000000. ;
		Meiobenth_N:i_conc = 200000000. ;
		Meiobenth_N:f_conc = 200000000. ;
		Meiobenth_N:_FillValue = 100. ;
	double Lab_Det_N(t, b, z) ;
		Lab_Det_N:bmtype = "tracer" ;
		Lab_Det_N:units = "mg N m-3" ;
		Lab_Det_N:long_name = "Labile detritus Nitrogen" ;
		Lab_Det_N:sumtype = 1 ;
		Lab_Det_N:dtype = 0 ;
		Lab_Det_N:inwc = 1 ;
		Lab_Det_N:insed = 1 ;
		Lab_Det_N:dissol = 0 ;
		Lab_Det_N:decay = 0. ;
		Lab_Det_N:partic = 1 ;
		Lab_Det_N:passive = 1 ;
		Lab_Det_N:svel = -3.472e-06 ;
		Lab_Det_N:xvel = 0. ;
		Lab_Det_N:psize = 1.e-05 ;
		Lab_Det_N:b_dens = 1000000000. ;
		Lab_Det_N:i_conc = 200000000. ;
		Lab_Det_N:f_conc = 200000000. ;
		Lab_Det_N:_FillValue = 2. ;
	double Ref_Det_N(t, b, z) ;
		Ref_Det_N:bmtype = "tracer" ;
		Ref_Det_N:units = "mg N m-3" ;
		Ref_Det_N:long_name = "Refractory detritus Nitrogen" ;
		Ref_Det_N:sumtype = 1 ;
		Ref_Det_N:dtype = 0 ;
		Ref_Det_N:inwc = 1 ;
		Ref_Det_N:insed = 1 ;
		Ref_Det_N:dissol = 0 ;
		Ref_Det_N:decay = 1.e-07 ;
		Ref_Det_N:partic = 1 ;
		Ref_Det_N:passive = 1 ;
		Ref_Det_N:svel = -2.314e-06 ;
		Ref_Det_N:xvel = 0. ;
		Ref_Det_N:psize = 1.e-05 ;
		Ref_Det_N:b_dens = 1000000000. ;
		Ref_Det_N:i_conc = 200000000. ;
		Ref_Det_N:f_conc = 200000000. ;
		Ref_Det_N:_FillValue = 2000. ;
	double Carrion_N(t, b, z) ;
		Carrion_N:bmtype = "tracer" ;
		Carrion_N:units = "mg N m-3" ;
		Carrion_N:long_name = "Carrion Nitrogen" ;
		Carrion_N:sumtype = 1 ;
		Carrion_N:dtype = 0 ;
		Carrion_N:inwc = 1 ;
		Carrion_N:insed = 1 ;
		Carrion_N:dissol = 0 ;
		Carrion_N:decay = 0. ;
		Carrion_N:partic = 1 ;
		Carrion_N:passive = 0 ;
		Carrion_N:svel = -3.472e-05 ;
		Carrion_N:xvel = 0. ;
		Carrion_N:psize = 1.e-05 ;
		Carrion_N:b_dens = 1000000000. ;
		Carrion_N:i_conc = 200000000. ;
		Carrion_N:f_conc = 200000000. ;
		Carrion_N:_FillValue = 0. ;
	double Planktiv_S_Fish_N(t, b, z) ;
		Planktiv_S_Fish_N:bmtype = "tracer" ;
		Planktiv_S_Fish_N:units = "mg N m-3" ;
		Planktiv_S_Fish_N:long_name = "Small planktivorous fish total N" ;
		Planktiv_S_Fish_N:sumtype = 1 ;
		Planktiv_S_Fish_N:dtype = 0 ;
		Planktiv_S_Fish_N:inwc = 0 ;
		Planktiv_S_Fish_N:insed = 0 ;
		Planktiv_S_Fish_N:dissol = 1 ;
		Planktiv_S_Fish_N:decay = 0. ;
		Planktiv_S_Fish_N:partic = 0 ;
		Planktiv_S_Fish_N:_FillValue = 0. ;
	double Pisciv_S_Fish_N(t, b, z) ;
		Pisciv_S_Fish_N:bmtype = "tracer" ;
		Pisciv_S_Fish_N:units = "mg N m-3" ;
		Pisciv_S_Fish_N:long_name = "Shallow piscivorous fish total N" ;
		Pisciv_S_Fish_N:sumtype = 1 ;
		Pisciv_S_Fish_N:dtype = 0 ;
		Pisciv_S_Fish_N:inwc = 0 ;
		Pisciv_S_Fish_N:insed = 0 ;
		Pisciv_S_Fish_N:dissol = 1 ;
		Pisciv_S_Fish_N:decay = 0. ;
		Pisciv_S_Fish_N:partic = 0 ;
		Pisciv_S_Fish_N:_FillValue = 0. ;
	double Pisciv_T_Fish_N(t, b, z) ;
		Pisciv_T_Fish_N:bmtype = "tracer" ;
		Pisciv_T_Fish_N:units = "mg N m-3" ;
		Pisciv_T_Fish_N:long_name = "Large piscivorous fish (tuna) total N" ;
		Pisciv_T_Fish_N:sumtype = 1 ;
		Pisciv_T_Fish_N:dtype = 0 ;
		Pisciv_T_Fish_N:inwc = 0 ;
		Pisciv_T_Fish_N:insed = 0 ;
		Pisciv_T_Fish_N:dissol = 1 ;
		Pisciv_T_Fish_N:decay = 0. ;
		Pisciv_T_Fish_N:partic = 0 ;
		Pisciv_T_Fish_N:_FillValue = 0. ;
	double Demersal_S_Fish_N(t, b, z) ;
		Demersal_S_Fish_N:bmtype = "tracer" ;
		Demersal_S_Fish_N:units = "mg N m-3" ;
		Demersal_S_Fish_N:long_name = "Other shallow demersal fish total N" ;
		Demersal_S_Fish_N:sumtype = 1 ;
		Demersal_S_Fish_N:dtype = 0 ;
		Demersal_S_Fish_N:inwc = 0 ;
		Demersal_S_Fish_N:insed = 0 ;
		Demersal_S_Fish_N:dissol = 1 ;
		Demersal_S_Fish_N:decay = 0. ;
		Demersal_S_Fish_N:partic = 0 ;
		Demersal_S_Fish_N:_FillValue = 0. ;
	double Shark_D_N(t, b, z) ;
		Shark_D_N:bmtype = "tracer" ;
		Shark_D_N:units = "mg N m-3" ;
		Shark_D_N:long_name = "Other demersal sharks total N" ;
		Shark_D_N:sumtype = 1 ;
		Shark_D_N:dtype = 0 ;
		Shark_D_N:inwc = 0 ;
		Shark_D_N:insed = 0 ;
		Shark_D_N:dissol = 1 ;
		Shark_D_N:decay = 0. ;
		Shark_D_N:partic = 0 ;
		Shark_D_N:_FillValue = 0. ;
	double Seabird_N(t, b, z) ;
		Seabird_N:bmtype = "tracer" ;
		Seabird_N:units = "mg N m-3" ;
		Seabird_N:long_name = "Seabirds total N" ;
		Seabird_N:sumtype = 1 ;
		Seabird_N:dtype = 0 ;
		Seabird_N:inwc = 0 ;
		Seabird_N:insed = 0 ;
		Seabird_N:dissol = 1 ;
		Seabird_N:decay = 0. ;
		Seabird_N:partic = 0 ;
		Seabird_N:_FillValue = 0. ;
	double Pinniped_N(t, b, z) ;
		Pinniped_N:bmtype = "tracer" ;
		Pinniped_N:units = "mg N m-3" ;
		Pinniped_N:long_name = "Pinnipeds total N" ;
		Pinniped_N:sumtype = 1 ;
		Pinniped_N:dtype = 0 ;
		Pinniped_N:inwc = 0 ;
		Pinniped_N:insed = 0 ;
		Pinniped_N:dissol = 1 ;
		Pinniped_N:decay = 0. ;
		Pinniped_N:partic = 0 ;
		Pinniped_N:_FillValue = 0. ;
	double Whale_Baleen_N(t, b, z) ;
		Whale_Baleen_N:bmtype = "tracer" ;
		Whale_Baleen_N:units = "mg N m-3" ;
		Whale_Baleen_N:long_name = "Baleen whales total N" ;
		Whale_Baleen_N:sumtype = 1 ;
		Whale_Baleen_N:dtype = 0 ;
		Whale_Baleen_N:inwc = 0 ;
		Whale_Baleen_N:insed = 0 ;
		Whale_Baleen_N:dissol = 1 ;
		Whale_Baleen_N:decay = 0. ;
		Whale_Baleen_N:partic = 0 ;
		Whale_Baleen_N:_FillValue = 0. ;
	double Whale_Tooth_N(t, b, z) ;
		Whale_Tooth_N:bmtype = "tracer" ;
		Whale_Tooth_N:units = "mg N m-3" ;
		Whale_Tooth_N:long_name = "Toothed whales  total N" ;
		Whale_Tooth_N:sumtype = 1 ;
		Whale_Tooth_N:dtype = 0 ;
		Whale_Tooth_N:inwc = 0 ;
		Whale_Tooth_N:insed = 0 ;
		Whale_Tooth_N:dissol = 1 ;
		Whale_Tooth_N:decay = 0. ;
		Whale_Tooth_N:partic = 0 ;
		Whale_Tooth_N:_FillValue = 0. ;
	double Planktiv_S_Fish1_Nums(t, b, z) ;
		Planktiv_S_Fish1_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish1_Nums:units = "1" ;
		Planktiv_S_Fish1_Nums:long_name = "Numbers of Small planktivorous fish cohort 1" ;
		Planktiv_S_Fish1_Nums:sumtype = 0 ;
		Planktiv_S_Fish1_Nums:dtype = 0 ;
		Planktiv_S_Fish1_Nums:inwc = 0 ;
		Planktiv_S_Fish1_Nums:insed = 0 ;
		Planktiv_S_Fish1_Nums:dissol = 0 ;
		Planktiv_S_Fish1_Nums:decay = 0. ;
		Planktiv_S_Fish1_Nums:partic = 1 ;
		Planktiv_S_Fish1_Nums:passive = 0 ;
		Planktiv_S_Fish1_Nums:svel = 0. ;
		Planktiv_S_Fish1_Nums:xvel = 0. ;
		Planktiv_S_Fish1_Nums:psize = 10. ;
		Planktiv_S_Fish1_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish1_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish1_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish1_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish1_ResN(t, b, z) ;
		Planktiv_S_Fish1_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish1_ResN:units = "mg N" ;
		Planktiv_S_Fish1_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 1" ;
		Planktiv_S_Fish1_ResN:sumtype = 0 ;
		Planktiv_S_Fish1_ResN:dtype = 0 ;
		Planktiv_S_Fish1_ResN:inwc = 0 ;
		Planktiv_S_Fish1_ResN:insed = 0 ;
		Planktiv_S_Fish1_ResN:dissol = 0 ;
		Planktiv_S_Fish1_ResN:decay = 0. ;
		Planktiv_S_Fish1_ResN:partic = 1 ;
		Planktiv_S_Fish1_ResN:passive = 0 ;
		Planktiv_S_Fish1_ResN:svel = 0. ;
		Planktiv_S_Fish1_ResN:xvel = 0. ;
		Planktiv_S_Fish1_ResN:psize = 10. ;
		Planktiv_S_Fish1_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish1_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish1_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish1_ResN:_FillValue = 0.25 ;
	double Planktiv_S_Fish1_StructN(t, b, z) ;
		Planktiv_S_Fish1_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish1_StructN:units = "mg N" ;
		Planktiv_S_Fish1_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 1" ;
		Planktiv_S_Fish1_StructN:sumtype = 0 ;
		Planktiv_S_Fish1_StructN:dtype = 0 ;
		Planktiv_S_Fish1_StructN:inwc = 0 ;
		Planktiv_S_Fish1_StructN:insed = 0 ;
		Planktiv_S_Fish1_StructN:dissol = 0 ;
		Planktiv_S_Fish1_StructN:decay = 0. ;
		Planktiv_S_Fish1_StructN:partic = 1 ;
		Planktiv_S_Fish1_StructN:passive = 0 ;
		Planktiv_S_Fish1_StructN:svel = 0. ;
		Planktiv_S_Fish1_StructN:xvel = 0. ;
		Planktiv_S_Fish1_StructN:psize = 10. ;
		Planktiv_S_Fish1_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish1_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish1_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish1_StructN:_FillValue = 0.028 ;
	double Planktiv_S_Fish2_Nums(t, b, z) ;
		Planktiv_S_Fish2_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish2_Nums:units = "1" ;
		Planktiv_S_Fish2_Nums:long_name = "Numbers of Small planktivorous fish cohort 2" ;
		Planktiv_S_Fish2_Nums:sumtype = 0 ;
		Planktiv_S_Fish2_Nums:dtype = 0 ;
		Planktiv_S_Fish2_Nums:inwc = 0 ;
		Planktiv_S_Fish2_Nums:insed = 0 ;
		Planktiv_S_Fish2_Nums:dissol = 0 ;
		Planktiv_S_Fish2_Nums:decay = 0. ;
		Planktiv_S_Fish2_Nums:partic = 1 ;
		Planktiv_S_Fish2_Nums:passive = 0 ;
		Planktiv_S_Fish2_Nums:svel = 0. ;
		Planktiv_S_Fish2_Nums:xvel = 0. ;
		Planktiv_S_Fish2_Nums:psize = 10. ;
		Planktiv_S_Fish2_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish2_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish2_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish2_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish2_ResN(t, b, z) ;
		Planktiv_S_Fish2_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish2_ResN:units = "mg N" ;
		Planktiv_S_Fish2_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 2" ;
		Planktiv_S_Fish2_ResN:sumtype = 0 ;
		Planktiv_S_Fish2_ResN:dtype = 0 ;
		Planktiv_S_Fish2_ResN:inwc = 0 ;
		Planktiv_S_Fish2_ResN:insed = 0 ;
		Planktiv_S_Fish2_ResN:dissol = 0 ;
		Planktiv_S_Fish2_ResN:decay = 0. ;
		Planktiv_S_Fish2_ResN:partic = 1 ;
		Planktiv_S_Fish2_ResN:passive = 0 ;
		Planktiv_S_Fish2_ResN:svel = 0. ;
		Planktiv_S_Fish2_ResN:xvel = 0. ;
		Planktiv_S_Fish2_ResN:psize = 10. ;
		Planktiv_S_Fish2_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish2_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish2_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish2_ResN:_FillValue = 18. ;
	double Planktiv_S_Fish2_StructN(t, b, z) ;
		Planktiv_S_Fish2_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish2_StructN:units = "mg N" ;
		Planktiv_S_Fish2_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 2" ;
		Planktiv_S_Fish2_StructN:sumtype = 0 ;
		Planktiv_S_Fish2_StructN:dtype = 0 ;
		Planktiv_S_Fish2_StructN:inwc = 0 ;
		Planktiv_S_Fish2_StructN:insed = 0 ;
		Planktiv_S_Fish2_StructN:dissol = 0 ;
		Planktiv_S_Fish2_StructN:decay = 0. ;
		Planktiv_S_Fish2_StructN:partic = 1 ;
		Planktiv_S_Fish2_StructN:passive = 0 ;
		Planktiv_S_Fish2_StructN:svel = 0. ;
		Planktiv_S_Fish2_StructN:xvel = 0. ;
		Planktiv_S_Fish2_StructN:psize = 10. ;
		Planktiv_S_Fish2_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish2_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish2_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish2_StructN:_FillValue = 7. ;
	double Planktiv_S_Fish3_Nums(t, b, z) ;
		Planktiv_S_Fish3_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish3_Nums:units = "1" ;
		Planktiv_S_Fish3_Nums:long_name = "Numbers of Small planktivorous fish cohort 3" ;
		Planktiv_S_Fish3_Nums:sumtype = 0 ;
		Planktiv_S_Fish3_Nums:dtype = 0 ;
		Planktiv_S_Fish3_Nums:inwc = 0 ;
		Planktiv_S_Fish3_Nums:insed = 0 ;
		Planktiv_S_Fish3_Nums:dissol = 0 ;
		Planktiv_S_Fish3_Nums:decay = 0. ;
		Planktiv_S_Fish3_Nums:partic = 1 ;
		Planktiv_S_Fish3_Nums:passive = 0 ;
		Planktiv_S_Fish3_Nums:svel = 0. ;
		Planktiv_S_Fish3_Nums:xvel = 0. ;
		Planktiv_S_Fish3_Nums:psize = 10. ;
		Planktiv_S_Fish3_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish3_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish3_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish3_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish3_ResN(t, b, z) ;
		Planktiv_S_Fish3_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish3_ResN:units = "mg N" ;
		Planktiv_S_Fish3_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 3" ;
		Planktiv_S_Fish3_ResN:sumtype = 0 ;
		Planktiv_S_Fish3_ResN:dtype = 0 ;
		Planktiv_S_Fish3_ResN:inwc = 0 ;
		Planktiv_S_Fish3_ResN:insed = 0 ;
		Planktiv_S_Fish3_ResN:dissol = 0 ;
		Planktiv_S_Fish3_ResN:decay = 0. ;
		Planktiv_S_Fish3_ResN:partic = 1 ;
		Planktiv_S_Fish3_ResN:passive = 0 ;
		Planktiv_S_Fish3_ResN:svel = 0. ;
		Planktiv_S_Fish3_ResN:xvel = 0. ;
		Planktiv_S_Fish3_ResN:psize = 10. ;
		Planktiv_S_Fish3_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish3_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish3_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish3_ResN:_FillValue = 68. ;
	double Planktiv_S_Fish3_StructN(t, b, z) ;
		Planktiv_S_Fish3_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish3_StructN:units = "mg N" ;
		Planktiv_S_Fish3_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 3" ;
		Planktiv_S_Fish3_StructN:sumtype = 0 ;
		Planktiv_S_Fish3_StructN:dtype = 0 ;
		Planktiv_S_Fish3_StructN:inwc = 0 ;
		Planktiv_S_Fish3_StructN:insed = 0 ;
		Planktiv_S_Fish3_StructN:dissol = 0 ;
		Planktiv_S_Fish3_StructN:decay = 0. ;
		Planktiv_S_Fish3_StructN:partic = 1 ;
		Planktiv_S_Fish3_StructN:passive = 0 ;
		Planktiv_S_Fish3_StructN:svel = 0. ;
		Planktiv_S_Fish3_StructN:xvel = 0. ;
		Planktiv_S_Fish3_StructN:psize = 10. ;
		Planktiv_S_Fish3_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish3_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish3_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish3_StructN:_FillValue = 25.5 ;
	double Planktiv_S_Fish4_Nums(t, b, z) ;
		Planktiv_S_Fish4_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish4_Nums:units = "1" ;
		Planktiv_S_Fish4_Nums:long_name = "Numbers of Small planktivorous fish cohort 4" ;
		Planktiv_S_Fish4_Nums:sumtype = 0 ;
		Planktiv_S_Fish4_Nums:dtype = 0 ;
		Planktiv_S_Fish4_Nums:inwc = 0 ;
		Planktiv_S_Fish4_Nums:insed = 0 ;
		Planktiv_S_Fish4_Nums:dissol = 0 ;
		Planktiv_S_Fish4_Nums:decay = 0. ;
		Planktiv_S_Fish4_Nums:partic = 1 ;
		Planktiv_S_Fish4_Nums:passive = 0 ;
		Planktiv_S_Fish4_Nums:svel = 0. ;
		Planktiv_S_Fish4_Nums:xvel = 0. ;
		Planktiv_S_Fish4_Nums:psize = 10. ;
		Planktiv_S_Fish4_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish4_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish4_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish4_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish4_ResN(t, b, z) ;
		Planktiv_S_Fish4_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish4_ResN:units = "mg N" ;
		Planktiv_S_Fish4_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 4" ;
		Planktiv_S_Fish4_ResN:sumtype = 0 ;
		Planktiv_S_Fish4_ResN:dtype = 0 ;
		Planktiv_S_Fish4_ResN:inwc = 0 ;
		Planktiv_S_Fish4_ResN:insed = 0 ;
		Planktiv_S_Fish4_ResN:dissol = 0 ;
		Planktiv_S_Fish4_ResN:decay = 0. ;
		Planktiv_S_Fish4_ResN:partic = 1 ;
		Planktiv_S_Fish4_ResN:passive = 0 ;
		Planktiv_S_Fish4_ResN:svel = 0. ;
		Planktiv_S_Fish4_ResN:xvel = 0. ;
		Planktiv_S_Fish4_ResN:psize = 10. ;
		Planktiv_S_Fish4_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish4_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish4_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish4_ResN:_FillValue = 115. ;
	double Planktiv_S_Fish4_StructN(t, b, z) ;
		Planktiv_S_Fish4_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish4_StructN:units = "mg N" ;
		Planktiv_S_Fish4_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 4" ;
		Planktiv_S_Fish4_StructN:sumtype = 0 ;
		Planktiv_S_Fish4_StructN:dtype = 0 ;
		Planktiv_S_Fish4_StructN:inwc = 0 ;
		Planktiv_S_Fish4_StructN:insed = 0 ;
		Planktiv_S_Fish4_StructN:dissol = 0 ;
		Planktiv_S_Fish4_StructN:decay = 0. ;
		Planktiv_S_Fish4_StructN:partic = 1 ;
		Planktiv_S_Fish4_StructN:passive = 0 ;
		Planktiv_S_Fish4_StructN:svel = 0. ;
		Planktiv_S_Fish4_StructN:xvel = 0. ;
		Planktiv_S_Fish4_StructN:psize = 10. ;
		Planktiv_S_Fish4_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish4_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish4_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish4_StructN:_FillValue = 44. ;
	double Planktiv_S_Fish5_Nums(t, b, z) ;
		Planktiv_S_Fish5_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish5_Nums:units = "1" ;
		Planktiv_S_Fish5_Nums:long_name = "Numbers of Small planktivorous fish cohort 5" ;
		Planktiv_S_Fish5_Nums:sumtype = 0 ;
		Planktiv_S_Fish5_Nums:dtype = 0 ;
		Planktiv_S_Fish5_Nums:inwc = 0 ;
		Planktiv_S_Fish5_Nums:insed = 0 ;
		Planktiv_S_Fish5_Nums:dissol = 0 ;
		Planktiv_S_Fish5_Nums:decay = 0. ;
		Planktiv_S_Fish5_Nums:partic = 1 ;
		Planktiv_S_Fish5_Nums:passive = 0 ;
		Planktiv_S_Fish5_Nums:svel = 0. ;
		Planktiv_S_Fish5_Nums:xvel = 0. ;
		Planktiv_S_Fish5_Nums:psize = 10. ;
		Planktiv_S_Fish5_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish5_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish5_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish5_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish5_ResN(t, b, z) ;
		Planktiv_S_Fish5_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish5_ResN:units = "mg N" ;
		Planktiv_S_Fish5_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 5" ;
		Planktiv_S_Fish5_ResN:sumtype = 0 ;
		Planktiv_S_Fish5_ResN:dtype = 0 ;
		Planktiv_S_Fish5_ResN:inwc = 0 ;
		Planktiv_S_Fish5_ResN:insed = 0 ;
		Planktiv_S_Fish5_ResN:dissol = 0 ;
		Planktiv_S_Fish5_ResN:decay = 0. ;
		Planktiv_S_Fish5_ResN:partic = 1 ;
		Planktiv_S_Fish5_ResN:passive = 0 ;
		Planktiv_S_Fish5_ResN:svel = 0. ;
		Planktiv_S_Fish5_ResN:xvel = 0. ;
		Planktiv_S_Fish5_ResN:psize = 10. ;
		Planktiv_S_Fish5_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish5_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish5_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish5_ResN:_FillValue = 150. ;
	double Planktiv_S_Fish5_StructN(t, b, z) ;
		Planktiv_S_Fish5_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish5_StructN:units = "mg N" ;
		Planktiv_S_Fish5_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 5" ;
		Planktiv_S_Fish5_StructN:sumtype = 0 ;
		Planktiv_S_Fish5_StructN:dtype = 0 ;
		Planktiv_S_Fish5_StructN:inwc = 0 ;
		Planktiv_S_Fish5_StructN:insed = 0 ;
		Planktiv_S_Fish5_StructN:dissol = 0 ;
		Planktiv_S_Fish5_StructN:decay = 0. ;
		Planktiv_S_Fish5_StructN:partic = 1 ;
		Planktiv_S_Fish5_StructN:passive = 0 ;
		Planktiv_S_Fish5_StructN:svel = 0. ;
		Planktiv_S_Fish5_StructN:xvel = 0. ;
		Planktiv_S_Fish5_StructN:psize = 10. ;
		Planktiv_S_Fish5_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish5_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish5_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish5_StructN:_FillValue = 56. ;
	double Planktiv_S_Fish6_Nums(t, b, z) ;
		Planktiv_S_Fish6_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish6_Nums:units = "1" ;
		Planktiv_S_Fish6_Nums:long_name = "Numbers of Small planktivorous fish cohort 6" ;
		Planktiv_S_Fish6_Nums:sumtype = 0 ;
		Planktiv_S_Fish6_Nums:dtype = 0 ;
		Planktiv_S_Fish6_Nums:inwc = 0 ;
		Planktiv_S_Fish6_Nums:insed = 0 ;
		Planktiv_S_Fish6_Nums:dissol = 0 ;
		Planktiv_S_Fish6_Nums:decay = 0. ;
		Planktiv_S_Fish6_Nums:partic = 1 ;
		Planktiv_S_Fish6_Nums:passive = 0 ;
		Planktiv_S_Fish6_Nums:svel = 0. ;
		Planktiv_S_Fish6_Nums:xvel = 0. ;
		Planktiv_S_Fish6_Nums:psize = 10. ;
		Planktiv_S_Fish6_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish6_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish6_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish6_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish6_ResN(t, b, z) ;
		Planktiv_S_Fish6_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish6_ResN:units = "mg N" ;
		Planktiv_S_Fish6_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 6" ;
		Planktiv_S_Fish6_ResN:sumtype = 0 ;
		Planktiv_S_Fish6_ResN:dtype = 0 ;
		Planktiv_S_Fish6_ResN:inwc = 0 ;
		Planktiv_S_Fish6_ResN:insed = 0 ;
		Planktiv_S_Fish6_ResN:dissol = 0 ;
		Planktiv_S_Fish6_ResN:decay = 0. ;
		Planktiv_S_Fish6_ResN:partic = 1 ;
		Planktiv_S_Fish6_ResN:passive = 0 ;
		Planktiv_S_Fish6_ResN:svel = 0. ;
		Planktiv_S_Fish6_ResN:xvel = 0. ;
		Planktiv_S_Fish6_ResN:psize = 10. ;
		Planktiv_S_Fish6_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish6_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish6_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish6_ResN:_FillValue = 170. ;
	double Planktiv_S_Fish6_StructN(t, b, z) ;
		Planktiv_S_Fish6_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish6_StructN:units = "mg N" ;
		Planktiv_S_Fish6_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 6" ;
		Planktiv_S_Fish6_StructN:sumtype = 0 ;
		Planktiv_S_Fish6_StructN:dtype = 0 ;
		Planktiv_S_Fish6_StructN:inwc = 0 ;
		Planktiv_S_Fish6_StructN:insed = 0 ;
		Planktiv_S_Fish6_StructN:dissol = 0 ;
		Planktiv_S_Fish6_StructN:decay = 0. ;
		Planktiv_S_Fish6_StructN:partic = 1 ;
		Planktiv_S_Fish6_StructN:passive = 0 ;
		Planktiv_S_Fish6_StructN:svel = 0. ;
		Planktiv_S_Fish6_StructN:xvel = 0. ;
		Planktiv_S_Fish6_StructN:psize = 10. ;
		Planktiv_S_Fish6_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish6_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish6_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish6_StructN:_FillValue = 64. ;
	double Planktiv_S_Fish7_Nums(t, b, z) ;
		Planktiv_S_Fish7_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish7_Nums:units = "1" ;
		Planktiv_S_Fish7_Nums:long_name = "Numbers of Small planktivorous fish cohort 7" ;
		Planktiv_S_Fish7_Nums:sumtype = 0 ;
		Planktiv_S_Fish7_Nums:dtype = 0 ;
		Planktiv_S_Fish7_Nums:inwc = 0 ;
		Planktiv_S_Fish7_Nums:insed = 0 ;
		Planktiv_S_Fish7_Nums:dissol = 0 ;
		Planktiv_S_Fish7_Nums:decay = 0. ;
		Planktiv_S_Fish7_Nums:partic = 1 ;
		Planktiv_S_Fish7_Nums:passive = 0 ;
		Planktiv_S_Fish7_Nums:svel = 0. ;
		Planktiv_S_Fish7_Nums:xvel = 0. ;
		Planktiv_S_Fish7_Nums:psize = 10. ;
		Planktiv_S_Fish7_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish7_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish7_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish7_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish7_ResN(t, b, z) ;
		Planktiv_S_Fish7_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish7_ResN:units = "mg N" ;
		Planktiv_S_Fish7_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 7" ;
		Planktiv_S_Fish7_ResN:sumtype = 0 ;
		Planktiv_S_Fish7_ResN:dtype = 0 ;
		Planktiv_S_Fish7_ResN:inwc = 0 ;
		Planktiv_S_Fish7_ResN:insed = 0 ;
		Planktiv_S_Fish7_ResN:dissol = 0 ;
		Planktiv_S_Fish7_ResN:decay = 0. ;
		Planktiv_S_Fish7_ResN:partic = 1 ;
		Planktiv_S_Fish7_ResN:passive = 0 ;
		Planktiv_S_Fish7_ResN:svel = 0. ;
		Planktiv_S_Fish7_ResN:xvel = 0. ;
		Planktiv_S_Fish7_ResN:psize = 10. ;
		Planktiv_S_Fish7_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish7_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish7_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish7_ResN:_FillValue = 182. ;
	double Planktiv_S_Fish7_StructN(t, b, z) ;
		Planktiv_S_Fish7_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish7_StructN:units = "mg N" ;
		Planktiv_S_Fish7_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 7" ;
		Planktiv_S_Fish7_StructN:sumtype = 0 ;
		Planktiv_S_Fish7_StructN:dtype = 0 ;
		Planktiv_S_Fish7_StructN:inwc = 0 ;
		Planktiv_S_Fish7_StructN:insed = 0 ;
		Planktiv_S_Fish7_StructN:dissol = 0 ;
		Planktiv_S_Fish7_StructN:decay = 0. ;
		Planktiv_S_Fish7_StructN:partic = 1 ;
		Planktiv_S_Fish7_StructN:passive = 0 ;
		Planktiv_S_Fish7_StructN:svel = 0. ;
		Planktiv_S_Fish7_StructN:xvel = 0. ;
		Planktiv_S_Fish7_StructN:psize = 10. ;
		Planktiv_S_Fish7_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish7_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish7_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish7_StructN:_FillValue = 69. ;
	double Planktiv_S_Fish8_Nums(t, b, z) ;
		Planktiv_S_Fish8_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish8_Nums:units = "1" ;
		Planktiv_S_Fish8_Nums:long_name = "Numbers of Small planktivorous fish cohort 8" ;
		Planktiv_S_Fish8_Nums:sumtype = 0 ;
		Planktiv_S_Fish8_Nums:dtype = 0 ;
		Planktiv_S_Fish8_Nums:inwc = 0 ;
		Planktiv_S_Fish8_Nums:insed = 0 ;
		Planktiv_S_Fish8_Nums:dissol = 0 ;
		Planktiv_S_Fish8_Nums:decay = 0. ;
		Planktiv_S_Fish8_Nums:partic = 1 ;
		Planktiv_S_Fish8_Nums:passive = 0 ;
		Planktiv_S_Fish8_Nums:svel = 0. ;
		Planktiv_S_Fish8_Nums:xvel = 0. ;
		Planktiv_S_Fish8_Nums:psize = 10. ;
		Planktiv_S_Fish8_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish8_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish8_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish8_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish8_ResN(t, b, z) ;
		Planktiv_S_Fish8_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish8_ResN:units = "mg N" ;
		Planktiv_S_Fish8_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 8" ;
		Planktiv_S_Fish8_ResN:sumtype = 0 ;
		Planktiv_S_Fish8_ResN:dtype = 0 ;
		Planktiv_S_Fish8_ResN:inwc = 0 ;
		Planktiv_S_Fish8_ResN:insed = 0 ;
		Planktiv_S_Fish8_ResN:dissol = 0 ;
		Planktiv_S_Fish8_ResN:decay = 0. ;
		Planktiv_S_Fish8_ResN:partic = 1 ;
		Planktiv_S_Fish8_ResN:passive = 0 ;
		Planktiv_S_Fish8_ResN:svel = 0. ;
		Planktiv_S_Fish8_ResN:xvel = 0. ;
		Planktiv_S_Fish8_ResN:psize = 10. ;
		Planktiv_S_Fish8_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish8_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish8_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish8_ResN:_FillValue = 189. ;
	double Planktiv_S_Fish8_StructN(t, b, z) ;
		Planktiv_S_Fish8_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish8_StructN:units = "mg N" ;
		Planktiv_S_Fish8_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 8" ;
		Planktiv_S_Fish8_StructN:sumtype = 0 ;
		Planktiv_S_Fish8_StructN:dtype = 0 ;
		Planktiv_S_Fish8_StructN:inwc = 0 ;
		Planktiv_S_Fish8_StructN:insed = 0 ;
		Planktiv_S_Fish8_StructN:dissol = 0 ;
		Planktiv_S_Fish8_StructN:decay = 0. ;
		Planktiv_S_Fish8_StructN:partic = 1 ;
		Planktiv_S_Fish8_StructN:passive = 0 ;
		Planktiv_S_Fish8_StructN:svel = 0. ;
		Planktiv_S_Fish8_StructN:xvel = 0. ;
		Planktiv_S_Fish8_StructN:psize = 10. ;
		Planktiv_S_Fish8_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish8_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish8_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish8_StructN:_FillValue = 72. ;
	double Planktiv_S_Fish9_Nums(t, b, z) ;
		Planktiv_S_Fish9_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish9_Nums:units = "1" ;
		Planktiv_S_Fish9_Nums:long_name = "Numbers of Small planktivorous fish cohort 9" ;
		Planktiv_S_Fish9_Nums:sumtype = 0 ;
		Planktiv_S_Fish9_Nums:dtype = 0 ;
		Planktiv_S_Fish9_Nums:inwc = 0 ;
		Planktiv_S_Fish9_Nums:insed = 0 ;
		Planktiv_S_Fish9_Nums:dissol = 0 ;
		Planktiv_S_Fish9_Nums:decay = 0. ;
		Planktiv_S_Fish9_Nums:partic = 1 ;
		Planktiv_S_Fish9_Nums:passive = 0 ;
		Planktiv_S_Fish9_Nums:svel = 0. ;
		Planktiv_S_Fish9_Nums:xvel = 0. ;
		Planktiv_S_Fish9_Nums:psize = 10. ;
		Planktiv_S_Fish9_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish9_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish9_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish9_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish9_ResN(t, b, z) ;
		Planktiv_S_Fish9_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish9_ResN:units = "mg N" ;
		Planktiv_S_Fish9_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 9" ;
		Planktiv_S_Fish9_ResN:sumtype = 0 ;
		Planktiv_S_Fish9_ResN:dtype = 0 ;
		Planktiv_S_Fish9_ResN:inwc = 0 ;
		Planktiv_S_Fish9_ResN:insed = 0 ;
		Planktiv_S_Fish9_ResN:dissol = 0 ;
		Planktiv_S_Fish9_ResN:decay = 0. ;
		Planktiv_S_Fish9_ResN:partic = 1 ;
		Planktiv_S_Fish9_ResN:passive = 0 ;
		Planktiv_S_Fish9_ResN:svel = 0. ;
		Planktiv_S_Fish9_ResN:xvel = 0. ;
		Planktiv_S_Fish9_ResN:psize = 10. ;
		Planktiv_S_Fish9_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish9_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish9_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish9_ResN:_FillValue = 193. ;
	double Planktiv_S_Fish9_StructN(t, b, z) ;
		Planktiv_S_Fish9_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish9_StructN:units = "mg N" ;
		Planktiv_S_Fish9_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 9" ;
		Planktiv_S_Fish9_StructN:sumtype = 0 ;
		Planktiv_S_Fish9_StructN:dtype = 0 ;
		Planktiv_S_Fish9_StructN:inwc = 0 ;
		Planktiv_S_Fish9_StructN:insed = 0 ;
		Planktiv_S_Fish9_StructN:dissol = 0 ;
		Planktiv_S_Fish9_StructN:decay = 0. ;
		Planktiv_S_Fish9_StructN:partic = 1 ;
		Planktiv_S_Fish9_StructN:passive = 0 ;
		Planktiv_S_Fish9_StructN:svel = 0. ;
		Planktiv_S_Fish9_StructN:xvel = 0. ;
		Planktiv_S_Fish9_StructN:psize = 10. ;
		Planktiv_S_Fish9_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish9_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish9_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish9_StructN:_FillValue = 73. ;
	double Planktiv_S_Fish10_Nums(t, b, z) ;
		Planktiv_S_Fish10_Nums:bmtype = "tracer" ;
		Planktiv_S_Fish10_Nums:units = "1" ;
		Planktiv_S_Fish10_Nums:long_name = "Numbers of Small planktivorous fish cohort 10" ;
		Planktiv_S_Fish10_Nums:sumtype = 0 ;
		Planktiv_S_Fish10_Nums:dtype = 0 ;
		Planktiv_S_Fish10_Nums:inwc = 0 ;
		Planktiv_S_Fish10_Nums:insed = 0 ;
		Planktiv_S_Fish10_Nums:dissol = 0 ;
		Planktiv_S_Fish10_Nums:decay = 0. ;
		Planktiv_S_Fish10_Nums:partic = 1 ;
		Planktiv_S_Fish10_Nums:passive = 0 ;
		Planktiv_S_Fish10_Nums:svel = 0. ;
		Planktiv_S_Fish10_Nums:xvel = 0. ;
		Planktiv_S_Fish10_Nums:psize = 10. ;
		Planktiv_S_Fish10_Nums:b_dens = 1000000000. ;
		Planktiv_S_Fish10_Nums:i_conc = 200000000. ;
		Planktiv_S_Fish10_Nums:f_conc = 200000000. ;
		Planktiv_S_Fish10_Nums:_FillValue = 0. ;
	double Planktiv_S_Fish10_ResN(t, b, z) ;
		Planktiv_S_Fish10_ResN:bmtype = "tracer" ;
		Planktiv_S_Fish10_ResN:units = "mg N" ;
		Planktiv_S_Fish10_ResN:long_name = "Individ reserve N for Small planktivorous fish cohort 10" ;
		Planktiv_S_Fish10_ResN:sumtype = 0 ;
		Planktiv_S_Fish10_ResN:dtype = 0 ;
		Planktiv_S_Fish10_ResN:inwc = 0 ;
		Planktiv_S_Fish10_ResN:insed = 0 ;
		Planktiv_S_Fish10_ResN:dissol = 0 ;
		Planktiv_S_Fish10_ResN:decay = 0. ;
		Planktiv_S_Fish10_ResN:partic = 1 ;
		Planktiv_S_Fish10_ResN:passive = 0 ;
		Planktiv_S_Fish10_ResN:svel = 0. ;
		Planktiv_S_Fish10_ResN:xvel = 0. ;
		Planktiv_S_Fish10_ResN:psize = 10. ;
		Planktiv_S_Fish10_ResN:b_dens = 1000000000. ;
		Planktiv_S_Fish10_ResN:i_conc = 200000000. ;
		Planktiv_S_Fish10_ResN:f_conc = 200000000. ;
		Planktiv_S_Fish10_ResN:_FillValue = 195. ;
	double Planktiv_S_Fish10_StructN(t, b, z) ;
		Planktiv_S_Fish10_StructN:bmtype = "tracer" ;
		Planktiv_S_Fish10_StructN:units = "mg N" ;
		Planktiv_S_Fish10_StructN:long_name = "Individ structural N for Small planktivorous fish cohort 10" ;
		Planktiv_S_Fish10_StructN:sumtype = 0 ;
		Planktiv_S_Fish10_StructN:dtype = 0 ;
		Planktiv_S_Fish10_StructN:inwc = 0 ;
		Planktiv_S_Fish10_StructN:insed = 0 ;
		Planktiv_S_Fish10_StructN:dissol = 0 ;
		Planktiv_S_Fish10_StructN:decay = 0. ;
		Planktiv_S_Fish10_StructN:partic = 1 ;
		Planktiv_S_Fish10_StructN:passive = 0 ;
		Planktiv_S_Fish10_StructN:svel = 0. ;
		Planktiv_S_Fish10_StructN:xvel = 0. ;
		Planktiv_S_Fish10_StructN:psize = 10. ;
		Planktiv_S_Fish10_StructN:b_dens = 1000000000. ;
		Planktiv_S_Fish10_StructN:i_conc = 200000000. ;
		Planktiv_S_Fish10_StructN:f_conc = 200000000. ;
		Planktiv_S_Fish10_StructN:_FillValue = 74. ;
	double Pisciv_S_Fish1_Nums(t, b, z) ;
		Pisciv_S_Fish1_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish1_Nums:units = "1" ;
		Pisciv_S_Fish1_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 1" ;
		Pisciv_S_Fish1_Nums:sumtype = 0 ;
		Pisciv_S_Fish1_Nums:dtype = 0 ;
		Pisciv_S_Fish1_Nums:inwc = 0 ;
		Pisciv_S_Fish1_Nums:insed = 0 ;
		Pisciv_S_Fish1_Nums:dissol = 0 ;
		Pisciv_S_Fish1_Nums:decay = 0. ;
		Pisciv_S_Fish1_Nums:partic = 1 ;
		Pisciv_S_Fish1_Nums:passive = 0 ;
		Pisciv_S_Fish1_Nums:svel = 0. ;
		Pisciv_S_Fish1_Nums:xvel = 0. ;
		Pisciv_S_Fish1_Nums:psize = 10. ;
		Pisciv_S_Fish1_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish1_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish1_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish1_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish1_ResN(t, b, z) ;
		Pisciv_S_Fish1_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish1_ResN:units = "mg N" ;
		Pisciv_S_Fish1_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 1" ;
		Pisciv_S_Fish1_ResN:sumtype = 0 ;
		Pisciv_S_Fish1_ResN:dtype = 0 ;
		Pisciv_S_Fish1_ResN:inwc = 0 ;
		Pisciv_S_Fish1_ResN:insed = 0 ;
		Pisciv_S_Fish1_ResN:dissol = 0 ;
		Pisciv_S_Fish1_ResN:decay = 0. ;
		Pisciv_S_Fish1_ResN:partic = 1 ;
		Pisciv_S_Fish1_ResN:passive = 0 ;
		Pisciv_S_Fish1_ResN:svel = 0. ;
		Pisciv_S_Fish1_ResN:xvel = 0. ;
		Pisciv_S_Fish1_ResN:psize = 10. ;
		Pisciv_S_Fish1_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish1_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish1_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish1_ResN:_FillValue = 9837. ;
	double Pisciv_S_Fish1_StructN(t, b, z) ;
		Pisciv_S_Fish1_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish1_StructN:units = "mg N" ;
		Pisciv_S_Fish1_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 1" ;
		Pisciv_S_Fish1_StructN:sumtype = 0 ;
		Pisciv_S_Fish1_StructN:dtype = 0 ;
		Pisciv_S_Fish1_StructN:inwc = 0 ;
		Pisciv_S_Fish1_StructN:insed = 0 ;
		Pisciv_S_Fish1_StructN:dissol = 0 ;
		Pisciv_S_Fish1_StructN:decay = 0. ;
		Pisciv_S_Fish1_StructN:partic = 1 ;
		Pisciv_S_Fish1_StructN:passive = 0 ;
		Pisciv_S_Fish1_StructN:svel = 0. ;
		Pisciv_S_Fish1_StructN:xvel = 0. ;
		Pisciv_S_Fish1_StructN:psize = 10. ;
		Pisciv_S_Fish1_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish1_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish1_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish1_StructN:_FillValue = 2077. ;
	double Pisciv_S_Fish2_Nums(t, b, z) ;
		Pisciv_S_Fish2_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish2_Nums:units = "1" ;
		Pisciv_S_Fish2_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 2" ;
		Pisciv_S_Fish2_Nums:sumtype = 0 ;
		Pisciv_S_Fish2_Nums:dtype = 0 ;
		Pisciv_S_Fish2_Nums:inwc = 0 ;
		Pisciv_S_Fish2_Nums:insed = 0 ;
		Pisciv_S_Fish2_Nums:dissol = 0 ;
		Pisciv_S_Fish2_Nums:decay = 0. ;
		Pisciv_S_Fish2_Nums:partic = 1 ;
		Pisciv_S_Fish2_Nums:passive = 0 ;
		Pisciv_S_Fish2_Nums:svel = 0. ;
		Pisciv_S_Fish2_Nums:xvel = 0. ;
		Pisciv_S_Fish2_Nums:psize = 10. ;
		Pisciv_S_Fish2_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish2_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish2_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish2_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish2_ResN(t, b, z) ;
		Pisciv_S_Fish2_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish2_ResN:units = "mg N" ;
		Pisciv_S_Fish2_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 2" ;
		Pisciv_S_Fish2_ResN:sumtype = 0 ;
		Pisciv_S_Fish2_ResN:dtype = 0 ;
		Pisciv_S_Fish2_ResN:inwc = 0 ;
		Pisciv_S_Fish2_ResN:insed = 0 ;
		Pisciv_S_Fish2_ResN:dissol = 0 ;
		Pisciv_S_Fish2_ResN:decay = 0. ;
		Pisciv_S_Fish2_ResN:partic = 1 ;
		Pisciv_S_Fish2_ResN:passive = 0 ;
		Pisciv_S_Fish2_ResN:svel = 0. ;
		Pisciv_S_Fish2_ResN:xvel = 0. ;
		Pisciv_S_Fish2_ResN:psize = 10. ;
		Pisciv_S_Fish2_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish2_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish2_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish2_ResN:_FillValue = 20113. ;
	double Pisciv_S_Fish2_StructN(t, b, z) ;
		Pisciv_S_Fish2_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish2_StructN:units = "mg N" ;
		Pisciv_S_Fish2_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 2" ;
		Pisciv_S_Fish2_StructN:sumtype = 0 ;
		Pisciv_S_Fish2_StructN:dtype = 0 ;
		Pisciv_S_Fish2_StructN:inwc = 0 ;
		Pisciv_S_Fish2_StructN:insed = 0 ;
		Pisciv_S_Fish2_StructN:dissol = 0 ;
		Pisciv_S_Fish2_StructN:decay = 0. ;
		Pisciv_S_Fish2_StructN:partic = 1 ;
		Pisciv_S_Fish2_StructN:passive = 0 ;
		Pisciv_S_Fish2_StructN:svel = 0. ;
		Pisciv_S_Fish2_StructN:xvel = 0. ;
		Pisciv_S_Fish2_StructN:psize = 10. ;
		Pisciv_S_Fish2_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish2_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish2_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish2_StructN:_FillValue = 6759. ;
	double Pisciv_S_Fish3_Nums(t, b, z) ;
		Pisciv_S_Fish3_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish3_Nums:units = "1" ;
		Pisciv_S_Fish3_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 3" ;
		Pisciv_S_Fish3_Nums:sumtype = 0 ;
		Pisciv_S_Fish3_Nums:dtype = 0 ;
		Pisciv_S_Fish3_Nums:inwc = 0 ;
		Pisciv_S_Fish3_Nums:insed = 0 ;
		Pisciv_S_Fish3_Nums:dissol = 0 ;
		Pisciv_S_Fish3_Nums:decay = 0. ;
		Pisciv_S_Fish3_Nums:partic = 1 ;
		Pisciv_S_Fish3_Nums:passive = 0 ;
		Pisciv_S_Fish3_Nums:svel = 0. ;
		Pisciv_S_Fish3_Nums:xvel = 0. ;
		Pisciv_S_Fish3_Nums:psize = 10. ;
		Pisciv_S_Fish3_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish3_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish3_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish3_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish3_ResN(t, b, z) ;
		Pisciv_S_Fish3_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish3_ResN:units = "mg N" ;
		Pisciv_S_Fish3_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 3" ;
		Pisciv_S_Fish3_ResN:sumtype = 0 ;
		Pisciv_S_Fish3_ResN:dtype = 0 ;
		Pisciv_S_Fish3_ResN:inwc = 0 ;
		Pisciv_S_Fish3_ResN:insed = 0 ;
		Pisciv_S_Fish3_ResN:dissol = 0 ;
		Pisciv_S_Fish3_ResN:decay = 0. ;
		Pisciv_S_Fish3_ResN:partic = 1 ;
		Pisciv_S_Fish3_ResN:passive = 0 ;
		Pisciv_S_Fish3_ResN:svel = 0. ;
		Pisciv_S_Fish3_ResN:xvel = 0. ;
		Pisciv_S_Fish3_ResN:psize = 10. ;
		Pisciv_S_Fish3_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish3_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish3_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish3_ResN:_FillValue = 24083. ;
	double Pisciv_S_Fish3_StructN(t, b, z) ;
		Pisciv_S_Fish3_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish3_StructN:units = "mg N" ;
		Pisciv_S_Fish3_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 3" ;
		Pisciv_S_Fish3_StructN:sumtype = 0 ;
		Pisciv_S_Fish3_StructN:dtype = 0 ;
		Pisciv_S_Fish3_StructN:inwc = 0 ;
		Pisciv_S_Fish3_StructN:insed = 0 ;
		Pisciv_S_Fish3_StructN:dissol = 0 ;
		Pisciv_S_Fish3_StructN:decay = 0. ;
		Pisciv_S_Fish3_StructN:partic = 1 ;
		Pisciv_S_Fish3_StructN:passive = 0 ;
		Pisciv_S_Fish3_StructN:svel = 0. ;
		Pisciv_S_Fish3_StructN:xvel = 0. ;
		Pisciv_S_Fish3_StructN:psize = 10. ;
		Pisciv_S_Fish3_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish3_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish3_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish3_StructN:_FillValue = 8786. ;
	double Pisciv_S_Fish4_Nums(t, b, z) ;
		Pisciv_S_Fish4_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish4_Nums:units = "1" ;
		Pisciv_S_Fish4_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 4" ;
		Pisciv_S_Fish4_Nums:sumtype = 0 ;
		Pisciv_S_Fish4_Nums:dtype = 0 ;
		Pisciv_S_Fish4_Nums:inwc = 0 ;
		Pisciv_S_Fish4_Nums:insed = 0 ;
		Pisciv_S_Fish4_Nums:dissol = 0 ;
		Pisciv_S_Fish4_Nums:decay = 0. ;
		Pisciv_S_Fish4_Nums:partic = 1 ;
		Pisciv_S_Fish4_Nums:passive = 0 ;
		Pisciv_S_Fish4_Nums:svel = 0. ;
		Pisciv_S_Fish4_Nums:xvel = 0. ;
		Pisciv_S_Fish4_Nums:psize = 10. ;
		Pisciv_S_Fish4_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish4_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish4_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish4_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish4_ResN(t, b, z) ;
		Pisciv_S_Fish4_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish4_ResN:units = "mg N" ;
		Pisciv_S_Fish4_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 4" ;
		Pisciv_S_Fish4_ResN:sumtype = 0 ;
		Pisciv_S_Fish4_ResN:dtype = 0 ;
		Pisciv_S_Fish4_ResN:inwc = 0 ;
		Pisciv_S_Fish4_ResN:insed = 0 ;
		Pisciv_S_Fish4_ResN:dissol = 0 ;
		Pisciv_S_Fish4_ResN:decay = 0. ;
		Pisciv_S_Fish4_ResN:partic = 1 ;
		Pisciv_S_Fish4_ResN:passive = 0 ;
		Pisciv_S_Fish4_ResN:svel = 0. ;
		Pisciv_S_Fish4_ResN:xvel = 0. ;
		Pisciv_S_Fish4_ResN:psize = 10. ;
		Pisciv_S_Fish4_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish4_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish4_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish4_ResN:_FillValue = 25177. ;
	double Pisciv_S_Fish4_StructN(t, b, z) ;
		Pisciv_S_Fish4_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish4_StructN:units = "mg N" ;
		Pisciv_S_Fish4_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 4" ;
		Pisciv_S_Fish4_StructN:sumtype = 0 ;
		Pisciv_S_Fish4_StructN:dtype = 0 ;
		Pisciv_S_Fish4_StructN:inwc = 0 ;
		Pisciv_S_Fish4_StructN:insed = 0 ;
		Pisciv_S_Fish4_StructN:dissol = 0 ;
		Pisciv_S_Fish4_StructN:decay = 0. ;
		Pisciv_S_Fish4_StructN:partic = 1 ;
		Pisciv_S_Fish4_StructN:passive = 0 ;
		Pisciv_S_Fish4_StructN:svel = 0. ;
		Pisciv_S_Fish4_StructN:xvel = 0. ;
		Pisciv_S_Fish4_StructN:psize = 10. ;
		Pisciv_S_Fish4_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish4_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish4_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish4_StructN:_FillValue = 9425. ;
	double Pisciv_S_Fish5_Nums(t, b, z) ;
		Pisciv_S_Fish5_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish5_Nums:units = "1" ;
		Pisciv_S_Fish5_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 5" ;
		Pisciv_S_Fish5_Nums:sumtype = 0 ;
		Pisciv_S_Fish5_Nums:dtype = 0 ;
		Pisciv_S_Fish5_Nums:inwc = 0 ;
		Pisciv_S_Fish5_Nums:insed = 0 ;
		Pisciv_S_Fish5_Nums:dissol = 0 ;
		Pisciv_S_Fish5_Nums:decay = 0. ;
		Pisciv_S_Fish5_Nums:partic = 1 ;
		Pisciv_S_Fish5_Nums:passive = 0 ;
		Pisciv_S_Fish5_Nums:svel = 0. ;
		Pisciv_S_Fish5_Nums:xvel = 0. ;
		Pisciv_S_Fish5_Nums:psize = 10. ;
		Pisciv_S_Fish5_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish5_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish5_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish5_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish5_ResN(t, b, z) ;
		Pisciv_S_Fish5_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish5_ResN:units = "mg N" ;
		Pisciv_S_Fish5_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 5" ;
		Pisciv_S_Fish5_ResN:sumtype = 0 ;
		Pisciv_S_Fish5_ResN:dtype = 0 ;
		Pisciv_S_Fish5_ResN:inwc = 0 ;
		Pisciv_S_Fish5_ResN:insed = 0 ;
		Pisciv_S_Fish5_ResN:dissol = 0 ;
		Pisciv_S_Fish5_ResN:decay = 0. ;
		Pisciv_S_Fish5_ResN:partic = 1 ;
		Pisciv_S_Fish5_ResN:passive = 0 ;
		Pisciv_S_Fish5_ResN:svel = 0. ;
		Pisciv_S_Fish5_ResN:xvel = 0. ;
		Pisciv_S_Fish5_ResN:psize = 10. ;
		Pisciv_S_Fish5_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish5_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish5_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish5_ResN:_FillValue = 25472. ;
	double Pisciv_S_Fish5_StructN(t, b, z) ;
		Pisciv_S_Fish5_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish5_StructN:units = "mg N" ;
		Pisciv_S_Fish5_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 5" ;
		Pisciv_S_Fish5_StructN:sumtype = 0 ;
		Pisciv_S_Fish5_StructN:dtype = 0 ;
		Pisciv_S_Fish5_StructN:inwc = 0 ;
		Pisciv_S_Fish5_StructN:insed = 0 ;
		Pisciv_S_Fish5_StructN:dissol = 0 ;
		Pisciv_S_Fish5_StructN:decay = 0. ;
		Pisciv_S_Fish5_StructN:partic = 1 ;
		Pisciv_S_Fish5_StructN:passive = 0 ;
		Pisciv_S_Fish5_StructN:svel = 0. ;
		Pisciv_S_Fish5_StructN:xvel = 0. ;
		Pisciv_S_Fish5_StructN:psize = 10. ;
		Pisciv_S_Fish5_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish5_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish5_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish5_StructN:_FillValue = 9612. ;
	double Pisciv_S_Fish6_Nums(t, b, z) ;
		Pisciv_S_Fish6_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish6_Nums:units = "1" ;
		Pisciv_S_Fish6_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 6" ;
		Pisciv_S_Fish6_Nums:sumtype = 0 ;
		Pisciv_S_Fish6_Nums:dtype = 0 ;
		Pisciv_S_Fish6_Nums:inwc = 0 ;
		Pisciv_S_Fish6_Nums:insed = 0 ;
		Pisciv_S_Fish6_Nums:dissol = 0 ;
		Pisciv_S_Fish6_Nums:decay = 0. ;
		Pisciv_S_Fish6_Nums:partic = 1 ;
		Pisciv_S_Fish6_Nums:passive = 0 ;
		Pisciv_S_Fish6_Nums:svel = 0. ;
		Pisciv_S_Fish6_Nums:xvel = 0. ;
		Pisciv_S_Fish6_Nums:psize = 10. ;
		Pisciv_S_Fish6_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish6_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish6_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish6_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish6_ResN(t, b, z) ;
		Pisciv_S_Fish6_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish6_ResN:units = "mg N" ;
		Pisciv_S_Fish6_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 6" ;
		Pisciv_S_Fish6_ResN:sumtype = 0 ;
		Pisciv_S_Fish6_ResN:dtype = 0 ;
		Pisciv_S_Fish6_ResN:inwc = 0 ;
		Pisciv_S_Fish6_ResN:insed = 0 ;
		Pisciv_S_Fish6_ResN:dissol = 0 ;
		Pisciv_S_Fish6_ResN:decay = 0. ;
		Pisciv_S_Fish6_ResN:partic = 1 ;
		Pisciv_S_Fish6_ResN:passive = 0 ;
		Pisciv_S_Fish6_ResN:svel = 0. ;
		Pisciv_S_Fish6_ResN:xvel = 0. ;
		Pisciv_S_Fish6_ResN:psize = 10. ;
		Pisciv_S_Fish6_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish6_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish6_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish6_ResN:_FillValue = 25613. ;
	double Pisciv_S_Fish6_StructN(t, b, z) ;
		Pisciv_S_Fish6_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish6_StructN:units = "mg N" ;
		Pisciv_S_Fish6_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 6" ;
		Pisciv_S_Fish6_StructN:sumtype = 0 ;
		Pisciv_S_Fish6_StructN:dtype = 0 ;
		Pisciv_S_Fish6_StructN:inwc = 0 ;
		Pisciv_S_Fish6_StructN:insed = 0 ;
		Pisciv_S_Fish6_StructN:dissol = 0 ;
		Pisciv_S_Fish6_StructN:decay = 0. ;
		Pisciv_S_Fish6_StructN:partic = 1 ;
		Pisciv_S_Fish6_StructN:passive = 0 ;
		Pisciv_S_Fish6_StructN:svel = 0. ;
		Pisciv_S_Fish6_StructN:xvel = 0. ;
		Pisciv_S_Fish6_StructN:psize = 10. ;
		Pisciv_S_Fish6_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish6_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish6_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish6_StructN:_FillValue = 9666. ;
	double Pisciv_S_Fish7_Nums(t, b, z) ;
		Pisciv_S_Fish7_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish7_Nums:units = "1" ;
		Pisciv_S_Fish7_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 7" ;
		Pisciv_S_Fish7_Nums:sumtype = 0 ;
		Pisciv_S_Fish7_Nums:dtype = 0 ;
		Pisciv_S_Fish7_Nums:inwc = 0 ;
		Pisciv_S_Fish7_Nums:insed = 0 ;
		Pisciv_S_Fish7_Nums:dissol = 0 ;
		Pisciv_S_Fish7_Nums:decay = 0. ;
		Pisciv_S_Fish7_Nums:partic = 1 ;
		Pisciv_S_Fish7_Nums:passive = 0 ;
		Pisciv_S_Fish7_Nums:svel = 0. ;
		Pisciv_S_Fish7_Nums:xvel = 0. ;
		Pisciv_S_Fish7_Nums:psize = 10. ;
		Pisciv_S_Fish7_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish7_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish7_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish7_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish7_ResN(t, b, z) ;
		Pisciv_S_Fish7_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish7_ResN:units = "mg N" ;
		Pisciv_S_Fish7_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 7" ;
		Pisciv_S_Fish7_ResN:sumtype = 0 ;
		Pisciv_S_Fish7_ResN:dtype = 0 ;
		Pisciv_S_Fish7_ResN:inwc = 0 ;
		Pisciv_S_Fish7_ResN:insed = 0 ;
		Pisciv_S_Fish7_ResN:dissol = 0 ;
		Pisciv_S_Fish7_ResN:decay = 0. ;
		Pisciv_S_Fish7_ResN:partic = 1 ;
		Pisciv_S_Fish7_ResN:passive = 0 ;
		Pisciv_S_Fish7_ResN:svel = 0. ;
		Pisciv_S_Fish7_ResN:xvel = 0. ;
		Pisciv_S_Fish7_ResN:psize = 10. ;
		Pisciv_S_Fish7_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish7_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish7_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish7_ResN:_FillValue = 25653. ;
	double Pisciv_S_Fish7_StructN(t, b, z) ;
		Pisciv_S_Fish7_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish7_StructN:units = "mg N" ;
		Pisciv_S_Fish7_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 7" ;
		Pisciv_S_Fish7_StructN:sumtype = 0 ;
		Pisciv_S_Fish7_StructN:dtype = 0 ;
		Pisciv_S_Fish7_StructN:inwc = 0 ;
		Pisciv_S_Fish7_StructN:insed = 0 ;
		Pisciv_S_Fish7_StructN:dissol = 0 ;
		Pisciv_S_Fish7_StructN:decay = 0. ;
		Pisciv_S_Fish7_StructN:partic = 1 ;
		Pisciv_S_Fish7_StructN:passive = 0 ;
		Pisciv_S_Fish7_StructN:svel = 0. ;
		Pisciv_S_Fish7_StructN:xvel = 0. ;
		Pisciv_S_Fish7_StructN:psize = 10. ;
		Pisciv_S_Fish7_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish7_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish7_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish7_StructN:_FillValue = 9681. ;
	double Pisciv_S_Fish8_Nums(t, b, z) ;
		Pisciv_S_Fish8_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish8_Nums:units = "1" ;
		Pisciv_S_Fish8_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 8" ;
		Pisciv_S_Fish8_Nums:sumtype = 0 ;
		Pisciv_S_Fish8_Nums:dtype = 0 ;
		Pisciv_S_Fish8_Nums:inwc = 0 ;
		Pisciv_S_Fish8_Nums:insed = 0 ;
		Pisciv_S_Fish8_Nums:dissol = 0 ;
		Pisciv_S_Fish8_Nums:decay = 0. ;
		Pisciv_S_Fish8_Nums:partic = 1 ;
		Pisciv_S_Fish8_Nums:passive = 0 ;
		Pisciv_S_Fish8_Nums:svel = 0. ;
		Pisciv_S_Fish8_Nums:xvel = 0. ;
		Pisciv_S_Fish8_Nums:psize = 10. ;
		Pisciv_S_Fish8_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish8_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish8_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish8_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish8_ResN(t, b, z) ;
		Pisciv_S_Fish8_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish8_ResN:units = "mg N" ;
		Pisciv_S_Fish8_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 8" ;
		Pisciv_S_Fish8_ResN:sumtype = 0 ;
		Pisciv_S_Fish8_ResN:dtype = 0 ;
		Pisciv_S_Fish8_ResN:inwc = 0 ;
		Pisciv_S_Fish8_ResN:insed = 0 ;
		Pisciv_S_Fish8_ResN:dissol = 0 ;
		Pisciv_S_Fish8_ResN:decay = 0. ;
		Pisciv_S_Fish8_ResN:partic = 1 ;
		Pisciv_S_Fish8_ResN:passive = 0 ;
		Pisciv_S_Fish8_ResN:svel = 0. ;
		Pisciv_S_Fish8_ResN:xvel = 0. ;
		Pisciv_S_Fish8_ResN:psize = 10. ;
		Pisciv_S_Fish8_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish8_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish8_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish8_ResN:_FillValue = 25665. ;
	double Pisciv_S_Fish8_StructN(t, b, z) ;
		Pisciv_S_Fish8_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish8_StructN:units = "mg N" ;
		Pisciv_S_Fish8_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 8" ;
		Pisciv_S_Fish8_StructN:sumtype = 0 ;
		Pisciv_S_Fish8_StructN:dtype = 0 ;
		Pisciv_S_Fish8_StructN:inwc = 0 ;
		Pisciv_S_Fish8_StructN:insed = 0 ;
		Pisciv_S_Fish8_StructN:dissol = 0 ;
		Pisciv_S_Fish8_StructN:decay = 0. ;
		Pisciv_S_Fish8_StructN:partic = 1 ;
		Pisciv_S_Fish8_StructN:passive = 0 ;
		Pisciv_S_Fish8_StructN:svel = 0. ;
		Pisciv_S_Fish8_StructN:xvel = 0. ;
		Pisciv_S_Fish8_StructN:psize = 10. ;
		Pisciv_S_Fish8_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish8_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish8_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish8_StructN:_FillValue = 9685. ;
	double Pisciv_S_Fish9_Nums(t, b, z) ;
		Pisciv_S_Fish9_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish9_Nums:units = "1" ;
		Pisciv_S_Fish9_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 9" ;
		Pisciv_S_Fish9_Nums:sumtype = 0 ;
		Pisciv_S_Fish9_Nums:dtype = 0 ;
		Pisciv_S_Fish9_Nums:inwc = 0 ;
		Pisciv_S_Fish9_Nums:insed = 0 ;
		Pisciv_S_Fish9_Nums:dissol = 0 ;
		Pisciv_S_Fish9_Nums:decay = 0. ;
		Pisciv_S_Fish9_Nums:partic = 1 ;
		Pisciv_S_Fish9_Nums:passive = 0 ;
		Pisciv_S_Fish9_Nums:svel = 0. ;
		Pisciv_S_Fish9_Nums:xvel = 0. ;
		Pisciv_S_Fish9_Nums:psize = 10. ;
		Pisciv_S_Fish9_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish9_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish9_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish9_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish9_ResN(t, b, z) ;
		Pisciv_S_Fish9_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish9_ResN:units = "mg N" ;
		Pisciv_S_Fish9_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 9" ;
		Pisciv_S_Fish9_ResN:sumtype = 0 ;
		Pisciv_S_Fish9_ResN:dtype = 0 ;
		Pisciv_S_Fish9_ResN:inwc = 0 ;
		Pisciv_S_Fish9_ResN:insed = 0 ;
		Pisciv_S_Fish9_ResN:dissol = 0 ;
		Pisciv_S_Fish9_ResN:decay = 0. ;
		Pisciv_S_Fish9_ResN:partic = 1 ;
		Pisciv_S_Fish9_ResN:passive = 0 ;
		Pisciv_S_Fish9_ResN:svel = 0. ;
		Pisciv_S_Fish9_ResN:xvel = 0. ;
		Pisciv_S_Fish9_ResN:psize = 10. ;
		Pisciv_S_Fish9_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish9_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish9_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish9_ResN:_FillValue = 25668. ;
	double Pisciv_S_Fish9_StructN(t, b, z) ;
		Pisciv_S_Fish9_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish9_StructN:units = "mg N" ;
		Pisciv_S_Fish9_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 9" ;
		Pisciv_S_Fish9_StructN:sumtype = 0 ;
		Pisciv_S_Fish9_StructN:dtype = 0 ;
		Pisciv_S_Fish9_StructN:inwc = 0 ;
		Pisciv_S_Fish9_StructN:insed = 0 ;
		Pisciv_S_Fish9_StructN:dissol = 0 ;
		Pisciv_S_Fish9_StructN:decay = 0. ;
		Pisciv_S_Fish9_StructN:partic = 1 ;
		Pisciv_S_Fish9_StructN:passive = 0 ;
		Pisciv_S_Fish9_StructN:svel = 0. ;
		Pisciv_S_Fish9_StructN:xvel = 0. ;
		Pisciv_S_Fish9_StructN:psize = 10. ;
		Pisciv_S_Fish9_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish9_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish9_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish9_StructN:_FillValue = 9686. ;
	double Pisciv_S_Fish10_Nums(t, b, z) ;
		Pisciv_S_Fish10_Nums:bmtype = "tracer" ;
		Pisciv_S_Fish10_Nums:units = "1" ;
		Pisciv_S_Fish10_Nums:long_name = "Numbers of Shallow piscivorous fish cohort 10" ;
		Pisciv_S_Fish10_Nums:sumtype = 0 ;
		Pisciv_S_Fish10_Nums:dtype = 0 ;
		Pisciv_S_Fish10_Nums:inwc = 0 ;
		Pisciv_S_Fish10_Nums:insed = 0 ;
		Pisciv_S_Fish10_Nums:dissol = 0 ;
		Pisciv_S_Fish10_Nums:decay = 0. ;
		Pisciv_S_Fish10_Nums:partic = 1 ;
		Pisciv_S_Fish10_Nums:passive = 0 ;
		Pisciv_S_Fish10_Nums:svel = 0. ;
		Pisciv_S_Fish10_Nums:xvel = 0. ;
		Pisciv_S_Fish10_Nums:psize = 10. ;
		Pisciv_S_Fish10_Nums:b_dens = 1000000000. ;
		Pisciv_S_Fish10_Nums:i_conc = 200000000. ;
		Pisciv_S_Fish10_Nums:f_conc = 200000000. ;
		Pisciv_S_Fish10_Nums:_FillValue = 0. ;
	double Pisciv_S_Fish10_ResN(t, b, z) ;
		Pisciv_S_Fish10_ResN:bmtype = "tracer" ;
		Pisciv_S_Fish10_ResN:units = "mg N" ;
		Pisciv_S_Fish10_ResN:long_name = "Individ reserve N for Shallow piscivorous fish cohort 10" ;
		Pisciv_S_Fish10_ResN:sumtype = 0 ;
		Pisciv_S_Fish10_ResN:dtype = 0 ;
		Pisciv_S_Fish10_ResN:inwc = 0 ;
		Pisciv_S_Fish10_ResN:insed = 0 ;
		Pisciv_S_Fish10_ResN:dissol = 0 ;
		Pisciv_S_Fish10_ResN:decay = 0. ;
		Pisciv_S_Fish10_ResN:partic = 1 ;
		Pisciv_S_Fish10_ResN:passive = 0 ;
		Pisciv_S_Fish10_ResN:svel = 0. ;
		Pisciv_S_Fish10_ResN:xvel = 0. ;
		Pisciv_S_Fish10_ResN:psize = 10. ;
		Pisciv_S_Fish10_ResN:b_dens = 1000000000. ;
		Pisciv_S_Fish10_ResN:i_conc = 200000000. ;
		Pisciv_S_Fish10_ResN:f_conc = 200000000. ;
		Pisciv_S_Fish10_ResN:_FillValue = 25669. ;
	double Pisciv_S_Fish10_StructN(t, b, z) ;
		Pisciv_S_Fish10_StructN:bmtype = "tracer" ;
		Pisciv_S_Fish10_StructN:units = "mg N" ;
		Pisciv_S_Fish10_StructN:long_name = "Individ structural N for Shallow piscivorous fish cohort 10" ;
		Pisciv_S_Fish10_StructN:sumtype = 0 ;
		Pisciv_S_Fish10_StructN:dtype = 0 ;
		Pisciv_S_Fish10_StructN:inwc = 0 ;
		Pisciv_S_Fish10_StructN:insed = 0 ;
		Pisciv_S_Fish10_StructN:dissol = 0 ;
		Pisciv_S_Fish10_StructN:decay = 0. ;
		Pisciv_S_Fish10_StructN:partic = 1 ;
		Pisciv_S_Fish10_StructN:passive = 0 ;
		Pisciv_S_Fish10_StructN:svel = 0. ;
		Pisciv_S_Fish10_StructN:xvel = 0. ;
		Pisciv_S_Fish10_StructN:psize = 10. ;
		Pisciv_S_Fish10_StructN:b_dens = 1000000000. ;
		Pisciv_S_Fish10_StructN:i_conc = 200000000. ;
		Pisciv_S_Fish10_StructN:f_conc = 200000000. ;
		Pisciv_S_Fish10_StructN:_FillValue = 9687. ;
	double Pisciv_T_Fish1_Nums(t, b, z) ;
		Pisciv_T_Fish1_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish1_Nums:units = "1" ;
		Pisciv_T_Fish1_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 1" ;
		Pisciv_T_Fish1_Nums:sumtype = 0 ;
		Pisciv_T_Fish1_Nums:dtype = 0 ;
		Pisciv_T_Fish1_Nums:inwc = 0 ;
		Pisciv_T_Fish1_Nums:insed = 0 ;
		Pisciv_T_Fish1_Nums:dissol = 0 ;
		Pisciv_T_Fish1_Nums:decay = 0. ;
		Pisciv_T_Fish1_Nums:partic = 1 ;
		Pisciv_T_Fish1_Nums:passive = 0 ;
		Pisciv_T_Fish1_Nums:svel = 0. ;
		Pisciv_T_Fish1_Nums:xvel = 0. ;
		Pisciv_T_Fish1_Nums:psize = 10. ;
		Pisciv_T_Fish1_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish1_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish1_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish1_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish1_ResN(t, b, z) ;
		Pisciv_T_Fish1_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish1_ResN:units = "mg N" ;
		Pisciv_T_Fish1_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 1" ;
		Pisciv_T_Fish1_ResN:sumtype = 0 ;
		Pisciv_T_Fish1_ResN:dtype = 0 ;
		Pisciv_T_Fish1_ResN:inwc = 0 ;
		Pisciv_T_Fish1_ResN:insed = 0 ;
		Pisciv_T_Fish1_ResN:dissol = 0 ;
		Pisciv_T_Fish1_ResN:decay = 0. ;
		Pisciv_T_Fish1_ResN:partic = 1 ;
		Pisciv_T_Fish1_ResN:passive = 0 ;
		Pisciv_T_Fish1_ResN:svel = 0. ;
		Pisciv_T_Fish1_ResN:xvel = 0. ;
		Pisciv_T_Fish1_ResN:psize = 10. ;
		Pisciv_T_Fish1_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish1_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish1_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish1_ResN:_FillValue = 114107. ;
	double Pisciv_T_Fish1_StructN(t, b, z) ;
		Pisciv_T_Fish1_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish1_StructN:units = "mg N" ;
		Pisciv_T_Fish1_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 1" ;
		Pisciv_T_Fish1_StructN:sumtype = 0 ;
		Pisciv_T_Fish1_StructN:dtype = 0 ;
		Pisciv_T_Fish1_StructN:inwc = 0 ;
		Pisciv_T_Fish1_StructN:insed = 0 ;
		Pisciv_T_Fish1_StructN:dissol = 0 ;
		Pisciv_T_Fish1_StructN:decay = 0. ;
		Pisciv_T_Fish1_StructN:partic = 1 ;
		Pisciv_T_Fish1_StructN:passive = 0 ;
		Pisciv_T_Fish1_StructN:svel = 0. ;
		Pisciv_T_Fish1_StructN:xvel = 0. ;
		Pisciv_T_Fish1_StructN:psize = 10. ;
		Pisciv_T_Fish1_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish1_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish1_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish1_StructN:_FillValue = 11049. ;
	double Pisciv_T_Fish2_Nums(t, b, z) ;
		Pisciv_T_Fish2_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish2_Nums:units = "1" ;
		Pisciv_T_Fish2_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 2" ;
		Pisciv_T_Fish2_Nums:sumtype = 0 ;
		Pisciv_T_Fish2_Nums:dtype = 0 ;
		Pisciv_T_Fish2_Nums:inwc = 0 ;
		Pisciv_T_Fish2_Nums:insed = 0 ;
		Pisciv_T_Fish2_Nums:dissol = 0 ;
		Pisciv_T_Fish2_Nums:decay = 0. ;
		Pisciv_T_Fish2_Nums:partic = 1 ;
		Pisciv_T_Fish2_Nums:passive = 0 ;
		Pisciv_T_Fish2_Nums:svel = 0. ;
		Pisciv_T_Fish2_Nums:xvel = 0. ;
		Pisciv_T_Fish2_Nums:psize = 10. ;
		Pisciv_T_Fish2_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish2_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish2_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish2_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish2_ResN(t, b, z) ;
		Pisciv_T_Fish2_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish2_ResN:units = "mg N" ;
		Pisciv_T_Fish2_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 2" ;
		Pisciv_T_Fish2_ResN:sumtype = 0 ;
		Pisciv_T_Fish2_ResN:dtype = 0 ;
		Pisciv_T_Fish2_ResN:inwc = 0 ;
		Pisciv_T_Fish2_ResN:insed = 0 ;
		Pisciv_T_Fish2_ResN:dissol = 0 ;
		Pisciv_T_Fish2_ResN:decay = 0. ;
		Pisciv_T_Fish2_ResN:partic = 1 ;
		Pisciv_T_Fish2_ResN:passive = 0 ;
		Pisciv_T_Fish2_ResN:svel = 0. ;
		Pisciv_T_Fish2_ResN:xvel = 0. ;
		Pisciv_T_Fish2_ResN:psize = 10. ;
		Pisciv_T_Fish2_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish2_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish2_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish2_ResN:_FillValue = 342269. ;
	double Pisciv_T_Fish2_StructN(t, b, z) ;
		Pisciv_T_Fish2_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish2_StructN:units = "mg N" ;
		Pisciv_T_Fish2_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 2" ;
		Pisciv_T_Fish2_StructN:sumtype = 0 ;
		Pisciv_T_Fish2_StructN:dtype = 0 ;
		Pisciv_T_Fish2_StructN:inwc = 0 ;
		Pisciv_T_Fish2_StructN:insed = 0 ;
		Pisciv_T_Fish2_StructN:dissol = 0 ;
		Pisciv_T_Fish2_StructN:decay = 0. ;
		Pisciv_T_Fish2_StructN:partic = 1 ;
		Pisciv_T_Fish2_StructN:passive = 0 ;
		Pisciv_T_Fish2_StructN:svel = 0. ;
		Pisciv_T_Fish2_StructN:xvel = 0. ;
		Pisciv_T_Fish2_StructN:psize = 10. ;
		Pisciv_T_Fish2_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish2_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish2_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish2_StructN:_FillValue = 90200. ;
	double Pisciv_T_Fish3_Nums(t, b, z) ;
		Pisciv_T_Fish3_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish3_Nums:units = "1" ;
		Pisciv_T_Fish3_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 3" ;
		Pisciv_T_Fish3_Nums:sumtype = 0 ;
		Pisciv_T_Fish3_Nums:dtype = 0 ;
		Pisciv_T_Fish3_Nums:inwc = 0 ;
		Pisciv_T_Fish3_Nums:insed = 0 ;
		Pisciv_T_Fish3_Nums:dissol = 0 ;
		Pisciv_T_Fish3_Nums:decay = 0. ;
		Pisciv_T_Fish3_Nums:partic = 1 ;
		Pisciv_T_Fish3_Nums:passive = 0 ;
		Pisciv_T_Fish3_Nums:svel = 0. ;
		Pisciv_T_Fish3_Nums:xvel = 0. ;
		Pisciv_T_Fish3_Nums:psize = 10. ;
		Pisciv_T_Fish3_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish3_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish3_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish3_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish3_ResN(t, b, z) ;
		Pisciv_T_Fish3_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish3_ResN:units = "mg N" ;
		Pisciv_T_Fish3_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 3" ;
		Pisciv_T_Fish3_ResN:sumtype = 0 ;
		Pisciv_T_Fish3_ResN:dtype = 0 ;
		Pisciv_T_Fish3_ResN:inwc = 0 ;
		Pisciv_T_Fish3_ResN:insed = 0 ;
		Pisciv_T_Fish3_ResN:dissol = 0 ;
		Pisciv_T_Fish3_ResN:decay = 0. ;
		Pisciv_T_Fish3_ResN:partic = 1 ;
		Pisciv_T_Fish3_ResN:passive = 0 ;
		Pisciv_T_Fish3_ResN:svel = 0. ;
		Pisciv_T_Fish3_ResN:xvel = 0. ;
		Pisciv_T_Fish3_ResN:psize = 10. ;
		Pisciv_T_Fish3_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish3_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish3_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish3_ResN:_FillValue = 503525. ;
	double Pisciv_T_Fish3_StructN(t, b, z) ;
		Pisciv_T_Fish3_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish3_StructN:units = "mg N" ;
		Pisciv_T_Fish3_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 3" ;
		Pisciv_T_Fish3_StructN:sumtype = 0 ;
		Pisciv_T_Fish3_StructN:dtype = 0 ;
		Pisciv_T_Fish3_StructN:inwc = 0 ;
		Pisciv_T_Fish3_StructN:insed = 0 ;
		Pisciv_T_Fish3_StructN:dissol = 0 ;
		Pisciv_T_Fish3_StructN:decay = 0. ;
		Pisciv_T_Fish3_StructN:partic = 1 ;
		Pisciv_T_Fish3_StructN:passive = 0 ;
		Pisciv_T_Fish3_StructN:svel = 0. ;
		Pisciv_T_Fish3_StructN:xvel = 0. ;
		Pisciv_T_Fish3_StructN:psize = 10. ;
		Pisciv_T_Fish3_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish3_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish3_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish3_StructN:_FillValue = 165776. ;
	double Pisciv_T_Fish4_Nums(t, b, z) ;
		Pisciv_T_Fish4_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish4_Nums:units = "1" ;
		Pisciv_T_Fish4_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 4" ;
		Pisciv_T_Fish4_Nums:sumtype = 0 ;
		Pisciv_T_Fish4_Nums:dtype = 0 ;
		Pisciv_T_Fish4_Nums:inwc = 0 ;
		Pisciv_T_Fish4_Nums:insed = 0 ;
		Pisciv_T_Fish4_Nums:dissol = 0 ;
		Pisciv_T_Fish4_Nums:decay = 0. ;
		Pisciv_T_Fish4_Nums:partic = 1 ;
		Pisciv_T_Fish4_Nums:passive = 0 ;
		Pisciv_T_Fish4_Nums:svel = 0. ;
		Pisciv_T_Fish4_Nums:xvel = 0. ;
		Pisciv_T_Fish4_Nums:psize = 10. ;
		Pisciv_T_Fish4_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish4_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish4_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish4_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish4_ResN(t, b, z) ;
		Pisciv_T_Fish4_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish4_ResN:units = "mg N" ;
		Pisciv_T_Fish4_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 4" ;
		Pisciv_T_Fish4_ResN:sumtype = 0 ;
		Pisciv_T_Fish4_ResN:dtype = 0 ;
		Pisciv_T_Fish4_ResN:inwc = 0 ;
		Pisciv_T_Fish4_ResN:insed = 0 ;
		Pisciv_T_Fish4_ResN:dissol = 0 ;
		Pisciv_T_Fish4_ResN:decay = 0. ;
		Pisciv_T_Fish4_ResN:partic = 1 ;
		Pisciv_T_Fish4_ResN:passive = 0 ;
		Pisciv_T_Fish4_ResN:svel = 0. ;
		Pisciv_T_Fish4_ResN:xvel = 0. ;
		Pisciv_T_Fish4_ResN:psize = 10. ;
		Pisciv_T_Fish4_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish4_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish4_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish4_ResN:_FillValue = 589895. ;
	double Pisciv_T_Fish4_StructN(t, b, z) ;
		Pisciv_T_Fish4_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish4_StructN:units = "mg N" ;
		Pisciv_T_Fish4_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 4" ;
		Pisciv_T_Fish4_StructN:sumtype = 0 ;
		Pisciv_T_Fish4_StructN:dtype = 0 ;
		Pisciv_T_Fish4_StructN:inwc = 0 ;
		Pisciv_T_Fish4_StructN:insed = 0 ;
		Pisciv_T_Fish4_StructN:dissol = 0 ;
		Pisciv_T_Fish4_StructN:decay = 0. ;
		Pisciv_T_Fish4_StructN:partic = 1 ;
		Pisciv_T_Fish4_StructN:passive = 0 ;
		Pisciv_T_Fish4_StructN:svel = 0. ;
		Pisciv_T_Fish4_StructN:xvel = 0. ;
		Pisciv_T_Fish4_StructN:psize = 10. ;
		Pisciv_T_Fish4_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish4_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish4_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish4_StructN:_FillValue = 210196. ;
	double Pisciv_T_Fish5_Nums(t, b, z) ;
		Pisciv_T_Fish5_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish5_Nums:units = "1" ;
		Pisciv_T_Fish5_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 5" ;
		Pisciv_T_Fish5_Nums:sumtype = 0 ;
		Pisciv_T_Fish5_Nums:dtype = 0 ;
		Pisciv_T_Fish5_Nums:inwc = 0 ;
		Pisciv_T_Fish5_Nums:insed = 0 ;
		Pisciv_T_Fish5_Nums:dissol = 0 ;
		Pisciv_T_Fish5_Nums:decay = 0. ;
		Pisciv_T_Fish5_Nums:partic = 1 ;
		Pisciv_T_Fish5_Nums:passive = 0 ;
		Pisciv_T_Fish5_Nums:svel = 0. ;
		Pisciv_T_Fish5_Nums:xvel = 0. ;
		Pisciv_T_Fish5_Nums:psize = 10. ;
		Pisciv_T_Fish5_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish5_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish5_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish5_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish5_ResN(t, b, z) ;
		Pisciv_T_Fish5_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish5_ResN:units = "mg N" ;
		Pisciv_T_Fish5_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 5" ;
		Pisciv_T_Fish5_ResN:sumtype = 0 ;
		Pisciv_T_Fish5_ResN:dtype = 0 ;
		Pisciv_T_Fish5_ResN:inwc = 0 ;
		Pisciv_T_Fish5_ResN:insed = 0 ;
		Pisciv_T_Fish5_ResN:dissol = 0 ;
		Pisciv_T_Fish5_ResN:decay = 0. ;
		Pisciv_T_Fish5_ResN:partic = 1 ;
		Pisciv_T_Fish5_ResN:passive = 0 ;
		Pisciv_T_Fish5_ResN:svel = 0. ;
		Pisciv_T_Fish5_ResN:xvel = 0. ;
		Pisciv_T_Fish5_ResN:psize = 10. ;
		Pisciv_T_Fish5_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish5_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish5_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish5_ResN:_FillValue = 616077. ;
	double Pisciv_T_Fish5_StructN(t, b, z) ;
		Pisciv_T_Fish5_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish5_StructN:units = "mg N" ;
		Pisciv_T_Fish5_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 5" ;
		Pisciv_T_Fish5_StructN:sumtype = 0 ;
		Pisciv_T_Fish5_StructN:dtype = 0 ;
		Pisciv_T_Fish5_StructN:inwc = 0 ;
		Pisciv_T_Fish5_StructN:insed = 0 ;
		Pisciv_T_Fish5_StructN:dissol = 0 ;
		Pisciv_T_Fish5_StructN:decay = 0. ;
		Pisciv_T_Fish5_StructN:partic = 1 ;
		Pisciv_T_Fish5_StructN:passive = 0 ;
		Pisciv_T_Fish5_StructN:svel = 0. ;
		Pisciv_T_Fish5_StructN:xvel = 0. ;
		Pisciv_T_Fish5_StructN:psize = 10. ;
		Pisciv_T_Fish5_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish5_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish5_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish5_StructN:_FillValue = 232481. ;
	double Pisciv_T_Fish6_Nums(t, b, z) ;
		Pisciv_T_Fish6_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish6_Nums:units = "1" ;
		Pisciv_T_Fish6_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 6" ;
		Pisciv_T_Fish6_Nums:sumtype = 0 ;
		Pisciv_T_Fish6_Nums:dtype = 0 ;
		Pisciv_T_Fish6_Nums:inwc = 0 ;
		Pisciv_T_Fish6_Nums:insed = 0 ;
		Pisciv_T_Fish6_Nums:dissol = 0 ;
		Pisciv_T_Fish6_Nums:decay = 0. ;
		Pisciv_T_Fish6_Nums:partic = 1 ;
		Pisciv_T_Fish6_Nums:passive = 0 ;
		Pisciv_T_Fish6_Nums:svel = 0. ;
		Pisciv_T_Fish6_Nums:xvel = 0. ;
		Pisciv_T_Fish6_Nums:psize = 10. ;
		Pisciv_T_Fish6_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish6_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish6_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish6_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish6_ResN(t, b, z) ;
		Pisciv_T_Fish6_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish6_ResN:units = "mg N" ;
		Pisciv_T_Fish6_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 6" ;
		Pisciv_T_Fish6_ResN:sumtype = 0 ;
		Pisciv_T_Fish6_ResN:dtype = 0 ;
		Pisciv_T_Fish6_ResN:inwc = 0 ;
		Pisciv_T_Fish6_ResN:insed = 0 ;
		Pisciv_T_Fish6_ResN:dissol = 0 ;
		Pisciv_T_Fish6_ResN:decay = 0. ;
		Pisciv_T_Fish6_ResN:partic = 1 ;
		Pisciv_T_Fish6_ResN:passive = 0 ;
		Pisciv_T_Fish6_ResN:svel = 0. ;
		Pisciv_T_Fish6_ResN:xvel = 0. ;
		Pisciv_T_Fish6_ResN:psize = 10. ;
		Pisciv_T_Fish6_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish6_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish6_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish6_ResN:_FillValue = 643909. ;
	double Pisciv_T_Fish6_StructN(t, b, z) ;
		Pisciv_T_Fish6_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish6_StructN:units = "mg N" ;
		Pisciv_T_Fish6_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 6" ;
		Pisciv_T_Fish6_StructN:sumtype = 0 ;
		Pisciv_T_Fish6_StructN:dtype = 0 ;
		Pisciv_T_Fish6_StructN:inwc = 0 ;
		Pisciv_T_Fish6_StructN:insed = 0 ;
		Pisciv_T_Fish6_StructN:dissol = 0 ;
		Pisciv_T_Fish6_StructN:decay = 0. ;
		Pisciv_T_Fish6_StructN:partic = 1 ;
		Pisciv_T_Fish6_StructN:passive = 0 ;
		Pisciv_T_Fish6_StructN:svel = 0. ;
		Pisciv_T_Fish6_StructN:xvel = 0. ;
		Pisciv_T_Fish6_StructN:psize = 10. ;
		Pisciv_T_Fish6_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish6_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish6_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish6_StructN:_FillValue = 242984. ;
	double Pisciv_T_Fish7_Nums(t, b, z) ;
		Pisciv_T_Fish7_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish7_Nums:units = "1" ;
		Pisciv_T_Fish7_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 7" ;
		Pisciv_T_Fish7_Nums:sumtype = 0 ;
		Pisciv_T_Fish7_Nums:dtype = 0 ;
		Pisciv_T_Fish7_Nums:inwc = 0 ;
		Pisciv_T_Fish7_Nums:insed = 0 ;
		Pisciv_T_Fish7_Nums:dissol = 0 ;
		Pisciv_T_Fish7_Nums:decay = 0. ;
		Pisciv_T_Fish7_Nums:partic = 1 ;
		Pisciv_T_Fish7_Nums:passive = 0 ;
		Pisciv_T_Fish7_Nums:svel = 0. ;
		Pisciv_T_Fish7_Nums:xvel = 0. ;
		Pisciv_T_Fish7_Nums:psize = 10. ;
		Pisciv_T_Fish7_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish7_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish7_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish7_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish7_ResN(t, b, z) ;
		Pisciv_T_Fish7_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish7_ResN:units = "mg N" ;
		Pisciv_T_Fish7_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 7" ;
		Pisciv_T_Fish7_ResN:sumtype = 0 ;
		Pisciv_T_Fish7_ResN:dtype = 0 ;
		Pisciv_T_Fish7_ResN:inwc = 0 ;
		Pisciv_T_Fish7_ResN:insed = 0 ;
		Pisciv_T_Fish7_ResN:dissol = 0 ;
		Pisciv_T_Fish7_ResN:decay = 0. ;
		Pisciv_T_Fish7_ResN:partic = 1 ;
		Pisciv_T_Fish7_ResN:passive = 0 ;
		Pisciv_T_Fish7_ResN:svel = 0. ;
		Pisciv_T_Fish7_ResN:xvel = 0. ;
		Pisciv_T_Fish7_ResN:psize = 10. ;
		Pisciv_T_Fish7_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish7_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish7_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish7_ResN:_FillValue = 656681. ;
	double Pisciv_T_Fish7_StructN(t, b, z) ;
		Pisciv_T_Fish7_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish7_StructN:units = "mg N" ;
		Pisciv_T_Fish7_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 7" ;
		Pisciv_T_Fish7_StructN:sumtype = 0 ;
		Pisciv_T_Fish7_StructN:dtype = 0 ;
		Pisciv_T_Fish7_StructN:inwc = 0 ;
		Pisciv_T_Fish7_StructN:insed = 0 ;
		Pisciv_T_Fish7_StructN:dissol = 0 ;
		Pisciv_T_Fish7_StructN:decay = 0. ;
		Pisciv_T_Fish7_StructN:partic = 1 ;
		Pisciv_T_Fish7_StructN:passive = 0 ;
		Pisciv_T_Fish7_StructN:svel = 0. ;
		Pisciv_T_Fish7_StructN:xvel = 0. ;
		Pisciv_T_Fish7_StructN:psize = 10. ;
		Pisciv_T_Fish7_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish7_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish7_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish7_StructN:_FillValue = 247804. ;
	double Pisciv_T_Fish8_Nums(t, b, z) ;
		Pisciv_T_Fish8_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish8_Nums:units = "1" ;
		Pisciv_T_Fish8_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 8" ;
		Pisciv_T_Fish8_Nums:sumtype = 0 ;
		Pisciv_T_Fish8_Nums:dtype = 0 ;
		Pisciv_T_Fish8_Nums:inwc = 0 ;
		Pisciv_T_Fish8_Nums:insed = 0 ;
		Pisciv_T_Fish8_Nums:dissol = 0 ;
		Pisciv_T_Fish8_Nums:decay = 0. ;
		Pisciv_T_Fish8_Nums:partic = 1 ;
		Pisciv_T_Fish8_Nums:passive = 0 ;
		Pisciv_T_Fish8_Nums:svel = 0. ;
		Pisciv_T_Fish8_Nums:xvel = 0. ;
		Pisciv_T_Fish8_Nums:psize = 10. ;
		Pisciv_T_Fish8_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish8_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish8_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish8_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish8_ResN(t, b, z) ;
		Pisciv_T_Fish8_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish8_ResN:units = "mg N" ;
		Pisciv_T_Fish8_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 8" ;
		Pisciv_T_Fish8_ResN:sumtype = 0 ;
		Pisciv_T_Fish8_ResN:dtype = 0 ;
		Pisciv_T_Fish8_ResN:inwc = 0 ;
		Pisciv_T_Fish8_ResN:insed = 0 ;
		Pisciv_T_Fish8_ResN:dissol = 0 ;
		Pisciv_T_Fish8_ResN:decay = 0. ;
		Pisciv_T_Fish8_ResN:partic = 1 ;
		Pisciv_T_Fish8_ResN:passive = 0 ;
		Pisciv_T_Fish8_ResN:svel = 0. ;
		Pisciv_T_Fish8_ResN:xvel = 0. ;
		Pisciv_T_Fish8_ResN:psize = 10. ;
		Pisciv_T_Fish8_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish8_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish8_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish8_ResN:_FillValue = 662474. ;
	double Pisciv_T_Fish8_StructN(t, b, z) ;
		Pisciv_T_Fish8_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish8_StructN:units = "mg N" ;
		Pisciv_T_Fish8_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 8" ;
		Pisciv_T_Fish8_StructN:sumtype = 0 ;
		Pisciv_T_Fish8_StructN:dtype = 0 ;
		Pisciv_T_Fish8_StructN:inwc = 0 ;
		Pisciv_T_Fish8_StructN:insed = 0 ;
		Pisciv_T_Fish8_StructN:dissol = 0 ;
		Pisciv_T_Fish8_StructN:decay = 0. ;
		Pisciv_T_Fish8_StructN:partic = 1 ;
		Pisciv_T_Fish8_StructN:passive = 0 ;
		Pisciv_T_Fish8_StructN:svel = 0. ;
		Pisciv_T_Fish8_StructN:xvel = 0. ;
		Pisciv_T_Fish8_StructN:psize = 10. ;
		Pisciv_T_Fish8_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish8_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish8_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish8_StructN:_FillValue = 249990. ;
	double Pisciv_T_Fish9_Nums(t, b, z) ;
		Pisciv_T_Fish9_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish9_Nums:units = "1" ;
		Pisciv_T_Fish9_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 9" ;
		Pisciv_T_Fish9_Nums:sumtype = 0 ;
		Pisciv_T_Fish9_Nums:dtype = 0 ;
		Pisciv_T_Fish9_Nums:inwc = 0 ;
		Pisciv_T_Fish9_Nums:insed = 0 ;
		Pisciv_T_Fish9_Nums:dissol = 0 ;
		Pisciv_T_Fish9_Nums:decay = 0. ;
		Pisciv_T_Fish9_Nums:partic = 1 ;
		Pisciv_T_Fish9_Nums:passive = 0 ;
		Pisciv_T_Fish9_Nums:svel = 0. ;
		Pisciv_T_Fish9_Nums:xvel = 0. ;
		Pisciv_T_Fish9_Nums:psize = 10. ;
		Pisciv_T_Fish9_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish9_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish9_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish9_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish9_ResN(t, b, z) ;
		Pisciv_T_Fish9_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish9_ResN:units = "mg N" ;
		Pisciv_T_Fish9_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 9" ;
		Pisciv_T_Fish9_ResN:sumtype = 0 ;
		Pisciv_T_Fish9_ResN:dtype = 0 ;
		Pisciv_T_Fish9_ResN:inwc = 0 ;
		Pisciv_T_Fish9_ResN:insed = 0 ;
		Pisciv_T_Fish9_ResN:dissol = 0 ;
		Pisciv_T_Fish9_ResN:decay = 0. ;
		Pisciv_T_Fish9_ResN:partic = 1 ;
		Pisciv_T_Fish9_ResN:passive = 0 ;
		Pisciv_T_Fish9_ResN:svel = 0. ;
		Pisciv_T_Fish9_ResN:xvel = 0. ;
		Pisciv_T_Fish9_ResN:psize = 10. ;
		Pisciv_T_Fish9_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish9_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish9_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish9_ResN:_FillValue = 665088. ;
	double Pisciv_T_Fish9_StructN(t, b, z) ;
		Pisciv_T_Fish9_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish9_StructN:units = "mg N" ;
		Pisciv_T_Fish9_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 9" ;
		Pisciv_T_Fish9_StructN:sumtype = 0 ;
		Pisciv_T_Fish9_StructN:dtype = 0 ;
		Pisciv_T_Fish9_StructN:inwc = 0 ;
		Pisciv_T_Fish9_StructN:insed = 0 ;
		Pisciv_T_Fish9_StructN:dissol = 0 ;
		Pisciv_T_Fish9_StructN:decay = 0. ;
		Pisciv_T_Fish9_StructN:partic = 1 ;
		Pisciv_T_Fish9_StructN:passive = 0 ;
		Pisciv_T_Fish9_StructN:svel = 0. ;
		Pisciv_T_Fish9_StructN:xvel = 0. ;
		Pisciv_T_Fish9_StructN:psize = 10. ;
		Pisciv_T_Fish9_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish9_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish9_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish9_StructN:_FillValue = 250977. ;
	double Pisciv_T_Fish10_Nums(t, b, z) ;
		Pisciv_T_Fish10_Nums:bmtype = "tracer" ;
		Pisciv_T_Fish10_Nums:units = "1" ;
		Pisciv_T_Fish10_Nums:long_name = "Numbers of Large piscivorous fish (tuna) cohort 10" ;
		Pisciv_T_Fish10_Nums:sumtype = 0 ;
		Pisciv_T_Fish10_Nums:dtype = 0 ;
		Pisciv_T_Fish10_Nums:inwc = 0 ;
		Pisciv_T_Fish10_Nums:insed = 0 ;
		Pisciv_T_Fish10_Nums:dissol = 0 ;
		Pisciv_T_Fish10_Nums:decay = 0. ;
		Pisciv_T_Fish10_Nums:partic = 1 ;
		Pisciv_T_Fish10_Nums:passive = 0 ;
		Pisciv_T_Fish10_Nums:svel = 0. ;
		Pisciv_T_Fish10_Nums:xvel = 0. ;
		Pisciv_T_Fish10_Nums:psize = 10. ;
		Pisciv_T_Fish10_Nums:b_dens = 1000000000. ;
		Pisciv_T_Fish10_Nums:i_conc = 200000000. ;
		Pisciv_T_Fish10_Nums:f_conc = 200000000. ;
		Pisciv_T_Fish10_Nums:_FillValue = 0. ;
	double Pisciv_T_Fish10_ResN(t, b, z) ;
		Pisciv_T_Fish10_ResN:bmtype = "tracer" ;
		Pisciv_T_Fish10_ResN:units = "mg N" ;
		Pisciv_T_Fish10_ResN:long_name = "Individ reserve N for Large piscivorous fish (tuna) cohort 10" ;
		Pisciv_T_Fish10_ResN:sumtype = 0 ;
		Pisciv_T_Fish10_ResN:dtype = 0 ;
		Pisciv_T_Fish10_ResN:inwc = 0 ;
		Pisciv_T_Fish10_ResN:insed = 0 ;
		Pisciv_T_Fish10_ResN:dissol = 0 ;
		Pisciv_T_Fish10_ResN:decay = 0. ;
		Pisciv_T_Fish10_ResN:partic = 1 ;
		Pisciv_T_Fish10_ResN:passive = 0 ;
		Pisciv_T_Fish10_ResN:svel = 0. ;
		Pisciv_T_Fish10_ResN:xvel = 0. ;
		Pisciv_T_Fish10_ResN:psize = 10. ;
		Pisciv_T_Fish10_ResN:b_dens = 1000000000. ;
		Pisciv_T_Fish10_ResN:i_conc = 200000000. ;
		Pisciv_T_Fish10_ResN:f_conc = 200000000. ;
		Pisciv_T_Fish10_ResN:_FillValue = 666265. ;
	double Pisciv_T_Fish10_StructN(t, b, z) ;
		Pisciv_T_Fish10_StructN:bmtype = "tracer" ;
		Pisciv_T_Fish10_StructN:units = "mg N" ;
		Pisciv_T_Fish10_StructN:long_name = "Individ structural N for Large piscivorous fish (tuna) cohort 10" ;
		Pisciv_T_Fish10_StructN:sumtype = 0 ;
		Pisciv_T_Fish10_StructN:dtype = 0 ;
		Pisciv_T_Fish10_StructN:inwc = 0 ;
		Pisciv_T_Fish10_StructN:insed = 0 ;
		Pisciv_T_Fish10_StructN:dissol = 0 ;
		Pisciv_T_Fish10_StructN:decay = 0. ;
		Pisciv_T_Fish10_StructN:partic = 1 ;
		Pisciv_T_Fish10_StructN:passive = 0 ;
		Pisciv_T_Fish10_StructN:svel = 0. ;
		Pisciv_T_Fish10_StructN:xvel = 0. ;
		Pisciv_T_Fish10_StructN:psize = 10. ;
		Pisciv_T_Fish10_StructN:b_dens = 1000000000. ;
		Pisciv_T_Fish10_StructN:i_conc = 200000000. ;
		Pisciv_T_Fish10_StructN:f_conc = 200000000. ;
		Pisciv_T_Fish10_StructN:_FillValue = 251420. ;
	double Demersal_S_Fish1_Nums(t, b, z) ;
		Demersal_S_Fish1_Nums:bmtype = "tracer" ;
		Demersal_S_Fish1_Nums:units = "1" ;
		Demersal_S_Fish1_Nums:long_name = "Numbers of Other shallow demersal fish cohort 1" ;
		Demersal_S_Fish1_Nums:sumtype = 0 ;
		Demersal_S_Fish1_Nums:dtype = 0 ;
		Demersal_S_Fish1_Nums:inwc = 0 ;
		Demersal_S_Fish1_Nums:insed = 0 ;
		Demersal_S_Fish1_Nums:dissol = 0 ;
		Demersal_S_Fish1_Nums:decay = 0. ;
		Demersal_S_Fish1_Nums:partic = 1 ;
		Demersal_S_Fish1_Nums:passive = 0 ;
		Demersal_S_Fish1_Nums:svel = 0. ;
		Demersal_S_Fish1_Nums:xvel = 0. ;
		Demersal_S_Fish1_Nums:psize = 10. ;
		Demersal_S_Fish1_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish1_Nums:i_conc = 200000000. ;
		Demersal_S_Fish1_Nums:f_conc = 200000000. ;
		Demersal_S_Fish1_Nums:_FillValue = 0. ;
	double Demersal_S_Fish1_ResN(t, b, z) ;
		Demersal_S_Fish1_ResN:bmtype = "tracer" ;
		Demersal_S_Fish1_ResN:units = "mg N" ;
		Demersal_S_Fish1_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 1" ;
		Demersal_S_Fish1_ResN:sumtype = 0 ;
		Demersal_S_Fish1_ResN:dtype = 0 ;
		Demersal_S_Fish1_ResN:inwc = 0 ;
		Demersal_S_Fish1_ResN:insed = 0 ;
		Demersal_S_Fish1_ResN:dissol = 0 ;
		Demersal_S_Fish1_ResN:decay = 0. ;
		Demersal_S_Fish1_ResN:partic = 1 ;
		Demersal_S_Fish1_ResN:passive = 0 ;
		Demersal_S_Fish1_ResN:svel = 0. ;
		Demersal_S_Fish1_ResN:xvel = 0. ;
		Demersal_S_Fish1_ResN:psize = 10. ;
		Demersal_S_Fish1_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish1_ResN:i_conc = 200000000. ;
		Demersal_S_Fish1_ResN:f_conc = 200000000. ;
		Demersal_S_Fish1_ResN:_FillValue = 298. ;
	double Demersal_S_Fish1_StructN(t, b, z) ;
		Demersal_S_Fish1_StructN:bmtype = "tracer" ;
		Demersal_S_Fish1_StructN:units = "mg N" ;
		Demersal_S_Fish1_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 1" ;
		Demersal_S_Fish1_StructN:sumtype = 0 ;
		Demersal_S_Fish1_StructN:dtype = 0 ;
		Demersal_S_Fish1_StructN:inwc = 0 ;
		Demersal_S_Fish1_StructN:insed = 0 ;
		Demersal_S_Fish1_StructN:dissol = 0 ;
		Demersal_S_Fish1_StructN:decay = 0. ;
		Demersal_S_Fish1_StructN:partic = 1 ;
		Demersal_S_Fish1_StructN:passive = 0 ;
		Demersal_S_Fish1_StructN:svel = 0. ;
		Demersal_S_Fish1_StructN:xvel = 0. ;
		Demersal_S_Fish1_StructN:psize = 10. ;
		Demersal_S_Fish1_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish1_StructN:i_conc = 200000000. ;
		Demersal_S_Fish1_StructN:f_conc = 200000000. ;
		Demersal_S_Fish1_StructN:_FillValue = 112.1304 ;
	double Demersal_S_Fish2_Nums(t, b, z) ;
		Demersal_S_Fish2_Nums:bmtype = "tracer" ;
		Demersal_S_Fish2_Nums:units = "1" ;
		Demersal_S_Fish2_Nums:long_name = "Numbers of Other shallow demersal fish cohort 2" ;
		Demersal_S_Fish2_Nums:sumtype = 0 ;
		Demersal_S_Fish2_Nums:dtype = 0 ;
		Demersal_S_Fish2_Nums:inwc = 0 ;
		Demersal_S_Fish2_Nums:insed = 0 ;
		Demersal_S_Fish2_Nums:dissol = 0 ;
		Demersal_S_Fish2_Nums:decay = 0. ;
		Demersal_S_Fish2_Nums:partic = 1 ;
		Demersal_S_Fish2_Nums:passive = 0 ;
		Demersal_S_Fish2_Nums:svel = 0. ;
		Demersal_S_Fish2_Nums:xvel = 0. ;
		Demersal_S_Fish2_Nums:psize = 10. ;
		Demersal_S_Fish2_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish2_Nums:i_conc = 200000000. ;
		Demersal_S_Fish2_Nums:f_conc = 200000000. ;
		Demersal_S_Fish2_Nums:_FillValue = 0. ;
	double Demersal_S_Fish2_ResN(t, b, z) ;
		Demersal_S_Fish2_ResN:bmtype = "tracer" ;
		Demersal_S_Fish2_ResN:units = "mg N" ;
		Demersal_S_Fish2_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 2" ;
		Demersal_S_Fish2_ResN:sumtype = 0 ;
		Demersal_S_Fish2_ResN:dtype = 0 ;
		Demersal_S_Fish2_ResN:inwc = 0 ;
		Demersal_S_Fish2_ResN:insed = 0 ;
		Demersal_S_Fish2_ResN:dissol = 0 ;
		Demersal_S_Fish2_ResN:decay = 0. ;
		Demersal_S_Fish2_ResN:partic = 1 ;
		Demersal_S_Fish2_ResN:passive = 0 ;
		Demersal_S_Fish2_ResN:svel = 0. ;
		Demersal_S_Fish2_ResN:xvel = 0. ;
		Demersal_S_Fish2_ResN:psize = 10. ;
		Demersal_S_Fish2_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish2_ResN:i_conc = 200000000. ;
		Demersal_S_Fish2_ResN:f_conc = 200000000. ;
		Demersal_S_Fish2_ResN:_FillValue = 1441. ;
	double Demersal_S_Fish2_StructN(t, b, z) ;
		Demersal_S_Fish2_StructN:bmtype = "tracer" ;
		Demersal_S_Fish2_StructN:units = "mg N" ;
		Demersal_S_Fish2_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 2" ;
		Demersal_S_Fish2_StructN:sumtype = 0 ;
		Demersal_S_Fish2_StructN:dtype = 0 ;
		Demersal_S_Fish2_StructN:inwc = 0 ;
		Demersal_S_Fish2_StructN:insed = 0 ;
		Demersal_S_Fish2_StructN:dissol = 0 ;
		Demersal_S_Fish2_StructN:decay = 0. ;
		Demersal_S_Fish2_StructN:partic = 1 ;
		Demersal_S_Fish2_StructN:passive = 0 ;
		Demersal_S_Fish2_StructN:svel = 0. ;
		Demersal_S_Fish2_StructN:xvel = 0. ;
		Demersal_S_Fish2_StructN:psize = 10. ;
		Demersal_S_Fish2_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish2_StructN:i_conc = 200000000. ;
		Demersal_S_Fish2_StructN:f_conc = 200000000. ;
		Demersal_S_Fish2_StructN:_FillValue = 543.5964 ;
	double Demersal_S_Fish3_Nums(t, b, z) ;
		Demersal_S_Fish3_Nums:bmtype = "tracer" ;
		Demersal_S_Fish3_Nums:units = "1" ;
		Demersal_S_Fish3_Nums:long_name = "Numbers of Other shallow demersal fish cohort 3" ;
		Demersal_S_Fish3_Nums:sumtype = 0 ;
		Demersal_S_Fish3_Nums:dtype = 0 ;
		Demersal_S_Fish3_Nums:inwc = 0 ;
		Demersal_S_Fish3_Nums:insed = 0 ;
		Demersal_S_Fish3_Nums:dissol = 0 ;
		Demersal_S_Fish3_Nums:decay = 0. ;
		Demersal_S_Fish3_Nums:partic = 1 ;
		Demersal_S_Fish3_Nums:passive = 0 ;
		Demersal_S_Fish3_Nums:svel = 0. ;
		Demersal_S_Fish3_Nums:xvel = 0. ;
		Demersal_S_Fish3_Nums:psize = 10. ;
		Demersal_S_Fish3_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish3_Nums:i_conc = 200000000. ;
		Demersal_S_Fish3_Nums:f_conc = 200000000. ;
		Demersal_S_Fish3_Nums:_FillValue = 0. ;
	double Demersal_S_Fish3_ResN(t, b, z) ;
		Demersal_S_Fish3_ResN:bmtype = "tracer" ;
		Demersal_S_Fish3_ResN:units = "mg N" ;
		Demersal_S_Fish3_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 3" ;
		Demersal_S_Fish3_ResN:sumtype = 0 ;
		Demersal_S_Fish3_ResN:dtype = 0 ;
		Demersal_S_Fish3_ResN:inwc = 0 ;
		Demersal_S_Fish3_ResN:insed = 0 ;
		Demersal_S_Fish3_ResN:dissol = 0 ;
		Demersal_S_Fish3_ResN:decay = 0. ;
		Demersal_S_Fish3_ResN:partic = 1 ;
		Demersal_S_Fish3_ResN:passive = 0 ;
		Demersal_S_Fish3_ResN:svel = 0. ;
		Demersal_S_Fish3_ResN:xvel = 0. ;
		Demersal_S_Fish3_ResN:psize = 10. ;
		Demersal_S_Fish3_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish3_ResN:i_conc = 200000000. ;
		Demersal_S_Fish3_ResN:f_conc = 200000000. ;
		Demersal_S_Fish3_ResN:_FillValue = 2876. ;
	double Demersal_S_Fish3_StructN(t, b, z) ;
		Demersal_S_Fish3_StructN:bmtype = "tracer" ;
		Demersal_S_Fish3_StructN:units = "mg N" ;
		Demersal_S_Fish3_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 3" ;
		Demersal_S_Fish3_StructN:sumtype = 0 ;
		Demersal_S_Fish3_StructN:dtype = 0 ;
		Demersal_S_Fish3_StructN:inwc = 0 ;
		Demersal_S_Fish3_StructN:insed = 0 ;
		Demersal_S_Fish3_StructN:dissol = 0 ;
		Demersal_S_Fish3_StructN:decay = 0. ;
		Demersal_S_Fish3_StructN:partic = 1 ;
		Demersal_S_Fish3_StructN:passive = 0 ;
		Demersal_S_Fish3_StructN:svel = 0. ;
		Demersal_S_Fish3_StructN:xvel = 0. ;
		Demersal_S_Fish3_StructN:psize = 10. ;
		Demersal_S_Fish3_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish3_StructN:i_conc = 200000000. ;
		Demersal_S_Fish3_StructN:f_conc = 200000000. ;
		Demersal_S_Fish3_StructN:_FillValue = 1085.102 ;
	double Demersal_S_Fish4_Nums(t, b, z) ;
		Demersal_S_Fish4_Nums:bmtype = "tracer" ;
		Demersal_S_Fish4_Nums:units = "1" ;
		Demersal_S_Fish4_Nums:long_name = "Numbers of Other shallow demersal fish cohort 4" ;
		Demersal_S_Fish4_Nums:sumtype = 0 ;
		Demersal_S_Fish4_Nums:dtype = 0 ;
		Demersal_S_Fish4_Nums:inwc = 0 ;
		Demersal_S_Fish4_Nums:insed = 0 ;
		Demersal_S_Fish4_Nums:dissol = 0 ;
		Demersal_S_Fish4_Nums:decay = 0. ;
		Demersal_S_Fish4_Nums:partic = 1 ;
		Demersal_S_Fish4_Nums:passive = 0 ;
		Demersal_S_Fish4_Nums:svel = 0. ;
		Demersal_S_Fish4_Nums:xvel = 0. ;
		Demersal_S_Fish4_Nums:psize = 10. ;
		Demersal_S_Fish4_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish4_Nums:i_conc = 200000000. ;
		Demersal_S_Fish4_Nums:f_conc = 200000000. ;
		Demersal_S_Fish4_Nums:_FillValue = 0. ;
	double Demersal_S_Fish4_ResN(t, b, z) ;
		Demersal_S_Fish4_ResN:bmtype = "tracer" ;
		Demersal_S_Fish4_ResN:units = "mg N" ;
		Demersal_S_Fish4_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 4" ;
		Demersal_S_Fish4_ResN:sumtype = 0 ;
		Demersal_S_Fish4_ResN:dtype = 0 ;
		Demersal_S_Fish4_ResN:inwc = 0 ;
		Demersal_S_Fish4_ResN:insed = 0 ;
		Demersal_S_Fish4_ResN:dissol = 0 ;
		Demersal_S_Fish4_ResN:decay = 0. ;
		Demersal_S_Fish4_ResN:partic = 1 ;
		Demersal_S_Fish4_ResN:passive = 0 ;
		Demersal_S_Fish4_ResN:svel = 0. ;
		Demersal_S_Fish4_ResN:xvel = 0. ;
		Demersal_S_Fish4_ResN:psize = 10. ;
		Demersal_S_Fish4_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish4_ResN:i_conc = 200000000. ;
		Demersal_S_Fish4_ResN:f_conc = 200000000. ;
		Demersal_S_Fish4_ResN:_FillValue = 4074. ;
	double Demersal_S_Fish4_StructN(t, b, z) ;
		Demersal_S_Fish4_StructN:bmtype = "tracer" ;
		Demersal_S_Fish4_StructN:units = "mg N" ;
		Demersal_S_Fish4_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 4" ;
		Demersal_S_Fish4_StructN:sumtype = 0 ;
		Demersal_S_Fish4_StructN:dtype = 0 ;
		Demersal_S_Fish4_StructN:inwc = 0 ;
		Demersal_S_Fish4_StructN:insed = 0 ;
		Demersal_S_Fish4_StructN:dissol = 0 ;
		Demersal_S_Fish4_StructN:decay = 0. ;
		Demersal_S_Fish4_StructN:partic = 1 ;
		Demersal_S_Fish4_StructN:passive = 0 ;
		Demersal_S_Fish4_StructN:svel = 0. ;
		Demersal_S_Fish4_StructN:xvel = 0. ;
		Demersal_S_Fish4_StructN:psize = 10. ;
		Demersal_S_Fish4_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish4_StructN:i_conc = 200000000. ;
		Demersal_S_Fish4_StructN:f_conc = 200000000. ;
		Demersal_S_Fish4_StructN:_FillValue = 1521.74 ;
	double Demersal_S_Fish5_Nums(t, b, z) ;
		Demersal_S_Fish5_Nums:bmtype = "tracer" ;
		Demersal_S_Fish5_Nums:units = "1" ;
		Demersal_S_Fish5_Nums:long_name = "Numbers of Other shallow demersal fish cohort 5" ;
		Demersal_S_Fish5_Nums:sumtype = 0 ;
		Demersal_S_Fish5_Nums:dtype = 0 ;
		Demersal_S_Fish5_Nums:inwc = 0 ;
		Demersal_S_Fish5_Nums:insed = 0 ;
		Demersal_S_Fish5_Nums:dissol = 0 ;
		Demersal_S_Fish5_Nums:decay = 0. ;
		Demersal_S_Fish5_Nums:partic = 1 ;
		Demersal_S_Fish5_Nums:passive = 0 ;
		Demersal_S_Fish5_Nums:svel = 0. ;
		Demersal_S_Fish5_Nums:xvel = 0. ;
		Demersal_S_Fish5_Nums:psize = 10. ;
		Demersal_S_Fish5_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish5_Nums:i_conc = 200000000. ;
		Demersal_S_Fish5_Nums:f_conc = 200000000. ;
		Demersal_S_Fish5_Nums:_FillValue = 0. ;
	double Demersal_S_Fish5_ResN(t, b, z) ;
		Demersal_S_Fish5_ResN:bmtype = "tracer" ;
		Demersal_S_Fish5_ResN:units = "mg N" ;
		Demersal_S_Fish5_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 5" ;
		Demersal_S_Fish5_ResN:sumtype = 0 ;
		Demersal_S_Fish5_ResN:dtype = 0 ;
		Demersal_S_Fish5_ResN:inwc = 0 ;
		Demersal_S_Fish5_ResN:insed = 0 ;
		Demersal_S_Fish5_ResN:dissol = 0 ;
		Demersal_S_Fish5_ResN:decay = 0. ;
		Demersal_S_Fish5_ResN:partic = 1 ;
		Demersal_S_Fish5_ResN:passive = 0 ;
		Demersal_S_Fish5_ResN:svel = 0. ;
		Demersal_S_Fish5_ResN:xvel = 0. ;
		Demersal_S_Fish5_ResN:psize = 10. ;
		Demersal_S_Fish5_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish5_ResN:i_conc = 200000000. ;
		Demersal_S_Fish5_ResN:f_conc = 200000000. ;
		Demersal_S_Fish5_ResN:_FillValue = 4783. ;
	double Demersal_S_Fish5_StructN(t, b, z) ;
		Demersal_S_Fish5_StructN:bmtype = "tracer" ;
		Demersal_S_Fish5_StructN:units = "mg N" ;
		Demersal_S_Fish5_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 5" ;
		Demersal_S_Fish5_StructN:sumtype = 0 ;
		Demersal_S_Fish5_StructN:dtype = 0 ;
		Demersal_S_Fish5_StructN:inwc = 0 ;
		Demersal_S_Fish5_StructN:insed = 0 ;
		Demersal_S_Fish5_StructN:dissol = 0 ;
		Demersal_S_Fish5_StructN:decay = 0. ;
		Demersal_S_Fish5_StructN:partic = 1 ;
		Demersal_S_Fish5_StructN:passive = 0 ;
		Demersal_S_Fish5_StructN:svel = 0. ;
		Demersal_S_Fish5_StructN:xvel = 0. ;
		Demersal_S_Fish5_StructN:psize = 10. ;
		Demersal_S_Fish5_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish5_StructN:i_conc = 200000000. ;
		Demersal_S_Fish5_StructN:f_conc = 200000000. ;
		Demersal_S_Fish5_StructN:_FillValue = 1798.466 ;
	double Demersal_S_Fish6_Nums(t, b, z) ;
		Demersal_S_Fish6_Nums:bmtype = "tracer" ;
		Demersal_S_Fish6_Nums:units = "1" ;
		Demersal_S_Fish6_Nums:long_name = "Numbers of Other shallow demersal fish cohort 6" ;
		Demersal_S_Fish6_Nums:sumtype = 0 ;
		Demersal_S_Fish6_Nums:dtype = 0 ;
		Demersal_S_Fish6_Nums:inwc = 0 ;
		Demersal_S_Fish6_Nums:insed = 0 ;
		Demersal_S_Fish6_Nums:dissol = 0 ;
		Demersal_S_Fish6_Nums:decay = 0. ;
		Demersal_S_Fish6_Nums:partic = 1 ;
		Demersal_S_Fish6_Nums:passive = 0 ;
		Demersal_S_Fish6_Nums:svel = 0. ;
		Demersal_S_Fish6_Nums:xvel = 0. ;
		Demersal_S_Fish6_Nums:psize = 10. ;
		Demersal_S_Fish6_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish6_Nums:i_conc = 200000000. ;
		Demersal_S_Fish6_Nums:f_conc = 200000000. ;
		Demersal_S_Fish6_Nums:_FillValue = 0. ;
	double Demersal_S_Fish6_ResN(t, b, z) ;
		Demersal_S_Fish6_ResN:bmtype = "tracer" ;
		Demersal_S_Fish6_ResN:units = "mg N" ;
		Demersal_S_Fish6_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 6" ;
		Demersal_S_Fish6_ResN:sumtype = 0 ;
		Demersal_S_Fish6_ResN:dtype = 0 ;
		Demersal_S_Fish6_ResN:inwc = 0 ;
		Demersal_S_Fish6_ResN:insed = 0 ;
		Demersal_S_Fish6_ResN:dissol = 0 ;
		Demersal_S_Fish6_ResN:decay = 0. ;
		Demersal_S_Fish6_ResN:partic = 1 ;
		Demersal_S_Fish6_ResN:passive = 0 ;
		Demersal_S_Fish6_ResN:svel = 0. ;
		Demersal_S_Fish6_ResN:xvel = 0. ;
		Demersal_S_Fish6_ResN:psize = 10. ;
		Demersal_S_Fish6_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish6_ResN:i_conc = 200000000. ;
		Demersal_S_Fish6_ResN:f_conc = 200000000. ;
		Demersal_S_Fish6_ResN:_FillValue = 5281. ;
	double Demersal_S_Fish6_StructN(t, b, z) ;
		Demersal_S_Fish6_StructN:bmtype = "tracer" ;
		Demersal_S_Fish6_StructN:units = "mg N" ;
		Demersal_S_Fish6_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 6" ;
		Demersal_S_Fish6_StructN:sumtype = 0 ;
		Demersal_S_Fish6_StructN:dtype = 0 ;
		Demersal_S_Fish6_StructN:inwc = 0 ;
		Demersal_S_Fish6_StructN:insed = 0 ;
		Demersal_S_Fish6_StructN:dissol = 0 ;
		Demersal_S_Fish6_StructN:decay = 0. ;
		Demersal_S_Fish6_StructN:partic = 1 ;
		Demersal_S_Fish6_StructN:passive = 0 ;
		Demersal_S_Fish6_StructN:svel = 0. ;
		Demersal_S_Fish6_StructN:xvel = 0. ;
		Demersal_S_Fish6_StructN:psize = 10. ;
		Demersal_S_Fish6_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish6_StructN:i_conc = 200000000. ;
		Demersal_S_Fish6_StructN:f_conc = 200000000. ;
		Demersal_S_Fish6_StructN:_FillValue = 1990.036 ;
	double Demersal_S_Fish7_Nums(t, b, z) ;
		Demersal_S_Fish7_Nums:bmtype = "tracer" ;
		Demersal_S_Fish7_Nums:units = "1" ;
		Demersal_S_Fish7_Nums:long_name = "Numbers of Other shallow demersal fish cohort 7" ;
		Demersal_S_Fish7_Nums:sumtype = 0 ;
		Demersal_S_Fish7_Nums:dtype = 0 ;
		Demersal_S_Fish7_Nums:inwc = 0 ;
		Demersal_S_Fish7_Nums:insed = 0 ;
		Demersal_S_Fish7_Nums:dissol = 0 ;
		Demersal_S_Fish7_Nums:decay = 0. ;
		Demersal_S_Fish7_Nums:partic = 1 ;
		Demersal_S_Fish7_Nums:passive = 0 ;
		Demersal_S_Fish7_Nums:svel = 0. ;
		Demersal_S_Fish7_Nums:xvel = 0. ;
		Demersal_S_Fish7_Nums:psize = 10. ;
		Demersal_S_Fish7_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish7_Nums:i_conc = 200000000. ;
		Demersal_S_Fish7_Nums:f_conc = 200000000. ;
		Demersal_S_Fish7_Nums:_FillValue = 0. ;
	double Demersal_S_Fish7_ResN(t, b, z) ;
		Demersal_S_Fish7_ResN:bmtype = "tracer" ;
		Demersal_S_Fish7_ResN:units = "mg N" ;
		Demersal_S_Fish7_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 7" ;
		Demersal_S_Fish7_ResN:sumtype = 0 ;
		Demersal_S_Fish7_ResN:dtype = 0 ;
		Demersal_S_Fish7_ResN:inwc = 0 ;
		Demersal_S_Fish7_ResN:insed = 0 ;
		Demersal_S_Fish7_ResN:dissol = 0 ;
		Demersal_S_Fish7_ResN:decay = 0. ;
		Demersal_S_Fish7_ResN:partic = 1 ;
		Demersal_S_Fish7_ResN:passive = 0 ;
		Demersal_S_Fish7_ResN:svel = 0. ;
		Demersal_S_Fish7_ResN:xvel = 0. ;
		Demersal_S_Fish7_ResN:psize = 10. ;
		Demersal_S_Fish7_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish7_ResN:i_conc = 200000000. ;
		Demersal_S_Fish7_ResN:f_conc = 200000000. ;
		Demersal_S_Fish7_ResN:_FillValue = 5625. ;
	double Demersal_S_Fish7_StructN(t, b, z) ;
		Demersal_S_Fish7_StructN:bmtype = "tracer" ;
		Demersal_S_Fish7_StructN:units = "mg N" ;
		Demersal_S_Fish7_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 7" ;
		Demersal_S_Fish7_StructN:sumtype = 0 ;
		Demersal_S_Fish7_StructN:dtype = 0 ;
		Demersal_S_Fish7_StructN:inwc = 0 ;
		Demersal_S_Fish7_StructN:insed = 0 ;
		Demersal_S_Fish7_StructN:dissol = 0 ;
		Demersal_S_Fish7_StructN:decay = 0. ;
		Demersal_S_Fish7_StructN:partic = 1 ;
		Demersal_S_Fish7_StructN:passive = 0 ;
		Demersal_S_Fish7_StructN:svel = 0. ;
		Demersal_S_Fish7_StructN:xvel = 0. ;
		Demersal_S_Fish7_StructN:psize = 10. ;
		Demersal_S_Fish7_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish7_StructN:i_conc = 200000000. ;
		Demersal_S_Fish7_StructN:f_conc = 200000000. ;
		Demersal_S_Fish7_StructN:_FillValue = 2121.714 ;
	double Demersal_S_Fish8_Nums(t, b, z) ;
		Demersal_S_Fish8_Nums:bmtype = "tracer" ;
		Demersal_S_Fish8_Nums:units = "1" ;
		Demersal_S_Fish8_Nums:long_name = "Numbers of Other shallow demersal fish cohort 8" ;
		Demersal_S_Fish8_Nums:sumtype = 0 ;
		Demersal_S_Fish8_Nums:dtype = 0 ;
		Demersal_S_Fish8_Nums:inwc = 0 ;
		Demersal_S_Fish8_Nums:insed = 0 ;
		Demersal_S_Fish8_Nums:dissol = 0 ;
		Demersal_S_Fish8_Nums:decay = 0. ;
		Demersal_S_Fish8_Nums:partic = 1 ;
		Demersal_S_Fish8_Nums:passive = 0 ;
		Demersal_S_Fish8_Nums:svel = 0. ;
		Demersal_S_Fish8_Nums:xvel = 0. ;
		Demersal_S_Fish8_Nums:psize = 10. ;
		Demersal_S_Fish8_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish8_Nums:i_conc = 200000000. ;
		Demersal_S_Fish8_Nums:f_conc = 200000000. ;
		Demersal_S_Fish8_Nums:_FillValue = 0. ;
	double Demersal_S_Fish8_ResN(t, b, z) ;
		Demersal_S_Fish8_ResN:bmtype = "tracer" ;
		Demersal_S_Fish8_ResN:units = "mg N" ;
		Demersal_S_Fish8_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 8" ;
		Demersal_S_Fish8_ResN:sumtype = 0 ;
		Demersal_S_Fish8_ResN:dtype = 0 ;
		Demersal_S_Fish8_ResN:inwc = 0 ;
		Demersal_S_Fish8_ResN:insed = 0 ;
		Demersal_S_Fish8_ResN:dissol = 0 ;
		Demersal_S_Fish8_ResN:decay = 0. ;
		Demersal_S_Fish8_ResN:partic = 1 ;
		Demersal_S_Fish8_ResN:passive = 0 ;
		Demersal_S_Fish8_ResN:svel = 0. ;
		Demersal_S_Fish8_ResN:xvel = 0. ;
		Demersal_S_Fish8_ResN:psize = 10. ;
		Demersal_S_Fish8_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish8_ResN:i_conc = 200000000. ;
		Demersal_S_Fish8_ResN:f_conc = 200000000. ;
		Demersal_S_Fish8_ResN:_FillValue = 5861. ;
	double Demersal_S_Fish8_StructN(t, b, z) ;
		Demersal_S_Fish8_StructN:bmtype = "tracer" ;
		Demersal_S_Fish8_StructN:units = "mg N" ;
		Demersal_S_Fish8_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 8" ;
		Demersal_S_Fish8_StructN:sumtype = 0 ;
		Demersal_S_Fish8_StructN:dtype = 0 ;
		Demersal_S_Fish8_StructN:inwc = 0 ;
		Demersal_S_Fish8_StructN:insed = 0 ;
		Demersal_S_Fish8_StructN:dissol = 0 ;
		Demersal_S_Fish8_StructN:decay = 0. ;
		Demersal_S_Fish8_StructN:partic = 1 ;
		Demersal_S_Fish8_StructN:passive = 0 ;
		Demersal_S_Fish8_StructN:svel = 0. ;
		Demersal_S_Fish8_StructN:xvel = 0. ;
		Demersal_S_Fish8_StructN:psize = 10. ;
		Demersal_S_Fish8_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish8_StructN:i_conc = 200000000. ;
		Demersal_S_Fish8_StructN:f_conc = 200000000. ;
		Demersal_S_Fish8_StructN:_FillValue = 2211.786 ;
	double Demersal_S_Fish9_Nums(t, b, z) ;
		Demersal_S_Fish9_Nums:bmtype = "tracer" ;
		Demersal_S_Fish9_Nums:units = "1" ;
		Demersal_S_Fish9_Nums:long_name = "Numbers of Other shallow demersal fish cohort 9" ;
		Demersal_S_Fish9_Nums:sumtype = 0 ;
		Demersal_S_Fish9_Nums:dtype = 0 ;
		Demersal_S_Fish9_Nums:inwc = 0 ;
		Demersal_S_Fish9_Nums:insed = 0 ;
		Demersal_S_Fish9_Nums:dissol = 0 ;
		Demersal_S_Fish9_Nums:decay = 0. ;
		Demersal_S_Fish9_Nums:partic = 1 ;
		Demersal_S_Fish9_Nums:passive = 0 ;
		Demersal_S_Fish9_Nums:svel = 0. ;
		Demersal_S_Fish9_Nums:xvel = 0. ;
		Demersal_S_Fish9_Nums:psize = 10. ;
		Demersal_S_Fish9_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish9_Nums:i_conc = 200000000. ;
		Demersal_S_Fish9_Nums:f_conc = 200000000. ;
		Demersal_S_Fish9_Nums:_FillValue = 0. ;
	double Demersal_S_Fish9_ResN(t, b, z) ;
		Demersal_S_Fish9_ResN:bmtype = "tracer" ;
		Demersal_S_Fish9_ResN:units = "mg N" ;
		Demersal_S_Fish9_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 9" ;
		Demersal_S_Fish9_ResN:sumtype = 0 ;
		Demersal_S_Fish9_ResN:dtype = 0 ;
		Demersal_S_Fish9_ResN:inwc = 0 ;
		Demersal_S_Fish9_ResN:insed = 0 ;
		Demersal_S_Fish9_ResN:dissol = 0 ;
		Demersal_S_Fish9_ResN:decay = 0. ;
		Demersal_S_Fish9_ResN:partic = 1 ;
		Demersal_S_Fish9_ResN:passive = 0 ;
		Demersal_S_Fish9_ResN:svel = 0. ;
		Demersal_S_Fish9_ResN:xvel = 0. ;
		Demersal_S_Fish9_ResN:psize = 10. ;
		Demersal_S_Fish9_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish9_ResN:i_conc = 200000000. ;
		Demersal_S_Fish9_ResN:f_conc = 200000000. ;
		Demersal_S_Fish9_ResN:_FillValue = 6022. ;
	double Demersal_S_Fish9_StructN(t, b, z) ;
		Demersal_S_Fish9_StructN:bmtype = "tracer" ;
		Demersal_S_Fish9_StructN:units = "mg N" ;
		Demersal_S_Fish9_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 9" ;
		Demersal_S_Fish9_StructN:sumtype = 0 ;
		Demersal_S_Fish9_StructN:dtype = 0 ;
		Demersal_S_Fish9_StructN:inwc = 0 ;
		Demersal_S_Fish9_StructN:insed = 0 ;
		Demersal_S_Fish9_StructN:dissol = 0 ;
		Demersal_S_Fish9_StructN:decay = 0. ;
		Demersal_S_Fish9_StructN:partic = 1 ;
		Demersal_S_Fish9_StructN:passive = 0 ;
		Demersal_S_Fish9_StructN:svel = 0. ;
		Demersal_S_Fish9_StructN:xvel = 0. ;
		Demersal_S_Fish9_StructN:psize = 10. ;
		Demersal_S_Fish9_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish9_StructN:i_conc = 200000000. ;
		Demersal_S_Fish9_StructN:f_conc = 200000000. ;
		Demersal_S_Fish9_StructN:_FillValue = 2272.629 ;
	double Demersal_S_Fish10_Nums(t, b, z) ;
		Demersal_S_Fish10_Nums:bmtype = "tracer" ;
		Demersal_S_Fish10_Nums:units = "1" ;
		Demersal_S_Fish10_Nums:long_name = "Numbers of Other shallow demersal fish cohort 10" ;
		Demersal_S_Fish10_Nums:sumtype = 0 ;
		Demersal_S_Fish10_Nums:dtype = 0 ;
		Demersal_S_Fish10_Nums:inwc = 0 ;
		Demersal_S_Fish10_Nums:insed = 0 ;
		Demersal_S_Fish10_Nums:dissol = 0 ;
		Demersal_S_Fish10_Nums:decay = 0. ;
		Demersal_S_Fish10_Nums:partic = 1 ;
		Demersal_S_Fish10_Nums:passive = 0 ;
		Demersal_S_Fish10_Nums:svel = 0. ;
		Demersal_S_Fish10_Nums:xvel = 0. ;
		Demersal_S_Fish10_Nums:psize = 10. ;
		Demersal_S_Fish10_Nums:b_dens = 1000000000. ;
		Demersal_S_Fish10_Nums:i_conc = 200000000. ;
		Demersal_S_Fish10_Nums:f_conc = 200000000. ;
		Demersal_S_Fish10_Nums:_FillValue = 0. ;
	double Demersal_S_Fish10_ResN(t, b, z) ;
		Demersal_S_Fish10_ResN:bmtype = "tracer" ;
		Demersal_S_Fish10_ResN:units = "mg N" ;
		Demersal_S_Fish10_ResN:long_name = "Individ reserve N for Other shallow demersal fish cohort 10" ;
		Demersal_S_Fish10_ResN:sumtype = 0 ;
		Demersal_S_Fish10_ResN:dtype = 0 ;
		Demersal_S_Fish10_ResN:inwc = 0 ;
		Demersal_S_Fish10_ResN:insed = 0 ;
		Demersal_S_Fish10_ResN:dissol = 0 ;
		Demersal_S_Fish10_ResN:decay = 0. ;
		Demersal_S_Fish10_ResN:partic = 1 ;
		Demersal_S_Fish10_ResN:passive = 0 ;
		Demersal_S_Fish10_ResN:svel = 0. ;
		Demersal_S_Fish10_ResN:xvel = 0. ;
		Demersal_S_Fish10_ResN:psize = 10. ;
		Demersal_S_Fish10_ResN:b_dens = 1000000000. ;
		Demersal_S_Fish10_ResN:i_conc = 200000000. ;
		Demersal_S_Fish10_ResN:f_conc = 200000000. ;
		Demersal_S_Fish10_ResN:_FillValue = 6132. ;
	double Demersal_S_Fish10_StructN(t, b, z) ;
		Demersal_S_Fish10_StructN:bmtype = "tracer" ;
		Demersal_S_Fish10_StructN:units = "mg N" ;
		Demersal_S_Fish10_StructN:long_name = "Individ structural N for Other shallow demersal fish cohort 10" ;
		Demersal_S_Fish10_StructN:sumtype = 0 ;
		Demersal_S_Fish10_StructN:dtype = 0 ;
		Demersal_S_Fish10_StructN:inwc = 0 ;
		Demersal_S_Fish10_StructN:insed = 0 ;
		Demersal_S_Fish10_StructN:dissol = 0 ;
		Demersal_S_Fish10_StructN:decay = 0. ;
		Demersal_S_Fish10_StructN:partic = 1 ;
		Demersal_S_Fish10_StructN:passive = 0 ;
		Demersal_S_Fish10_StructN:svel = 0. ;
		Demersal_S_Fish10_StructN:xvel = 0. ;
		Demersal_S_Fish10_StructN:psize = 10. ;
		Demersal_S_Fish10_StructN:b_dens = 1000000000. ;
		Demersal_S_Fish10_StructN:i_conc = 200000000. ;
		Demersal_S_Fish10_StructN:f_conc = 200000000. ;
		Demersal_S_Fish10_StructN:_FillValue = 2314.375 ;
	double Shark_D1_Nums(t, b, z) ;
		Shark_D1_Nums:bmtype = "tracer" ;
		Shark_D1_Nums:units = "1" ;
		Shark_D1_Nums:long_name = "Numbers of Other demersal sharks cohort 1" ;
		Shark_D1_Nums:sumtype = 0 ;
		Shark_D1_Nums:dtype = 0 ;
		Shark_D1_Nums:inwc = 0 ;
		Shark_D1_Nums:insed = 0 ;
		Shark_D1_Nums:dissol = 0 ;
		Shark_D1_Nums:decay = 0. ;
		Shark_D1_Nums:partic = 1 ;
		Shark_D1_Nums:passive = 0 ;
		Shark_D1_Nums:svel = 0. ;
		Shark_D1_Nums:xvel = 0. ;
		Shark_D1_Nums:psize = 10. ;
		Shark_D1_Nums:b_dens = 1000000000. ;
		Shark_D1_Nums:i_conc = 200000000. ;
		Shark_D1_Nums:f_conc = 200000000. ;
		Shark_D1_Nums:_FillValue = 0. ;
	double Shark_D1_ResN(t, b, z) ;
		Shark_D1_ResN:bmtype = "tracer" ;
		Shark_D1_ResN:units = "mg N" ;
		Shark_D1_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 1" ;
		Shark_D1_ResN:sumtype = 0 ;
		Shark_D1_ResN:dtype = 0 ;
		Shark_D1_ResN:inwc = 0 ;
		Shark_D1_ResN:insed = 0 ;
		Shark_D1_ResN:dissol = 0 ;
		Shark_D1_ResN:decay = 0. ;
		Shark_D1_ResN:partic = 1 ;
		Shark_D1_ResN:passive = 0 ;
		Shark_D1_ResN:svel = 0. ;
		Shark_D1_ResN:xvel = 0. ;
		Shark_D1_ResN:psize = 10. ;
		Shark_D1_ResN:b_dens = 1000000000. ;
		Shark_D1_ResN:i_conc = 200000000. ;
		Shark_D1_ResN:f_conc = 200000000. ;
		Shark_D1_ResN:_FillValue = 55257. ;
	double Shark_D1_StructN(t, b, z) ;
		Shark_D1_StructN:bmtype = "tracer" ;
		Shark_D1_StructN:units = "mg N" ;
		Shark_D1_StructN:long_name = "Individ structural N for Other demersal sharks cohort 1" ;
		Shark_D1_StructN:sumtype = 0 ;
		Shark_D1_StructN:dtype = 0 ;
		Shark_D1_StructN:inwc = 0 ;
		Shark_D1_StructN:insed = 0 ;
		Shark_D1_StructN:dissol = 0 ;
		Shark_D1_StructN:decay = 0. ;
		Shark_D1_StructN:partic = 1 ;
		Shark_D1_StructN:passive = 0 ;
		Shark_D1_StructN:svel = 0. ;
		Shark_D1_StructN:xvel = 0. ;
		Shark_D1_StructN:psize = 10. ;
		Shark_D1_StructN:b_dens = 1000000000. ;
		Shark_D1_StructN:i_conc = 200000000. ;
		Shark_D1_StructN:f_conc = 200000000. ;
		Shark_D1_StructN:_FillValue = 20851. ;
	double Shark_D2_Nums(t, b, z) ;
		Shark_D2_Nums:bmtype = "tracer" ;
		Shark_D2_Nums:units = "1" ;
		Shark_D2_Nums:long_name = "Numbers of Other demersal sharks cohort 2" ;
		Shark_D2_Nums:sumtype = 0 ;
		Shark_D2_Nums:dtype = 0 ;
		Shark_D2_Nums:inwc = 0 ;
		Shark_D2_Nums:insed = 0 ;
		Shark_D2_Nums:dissol = 0 ;
		Shark_D2_Nums:decay = 0. ;
		Shark_D2_Nums:partic = 1 ;
		Shark_D2_Nums:passive = 0 ;
		Shark_D2_Nums:svel = 0. ;
		Shark_D2_Nums:xvel = 0. ;
		Shark_D2_Nums:psize = 10. ;
		Shark_D2_Nums:b_dens = 1000000000. ;
		Shark_D2_Nums:i_conc = 200000000. ;
		Shark_D2_Nums:f_conc = 200000000. ;
		Shark_D2_Nums:_FillValue = 0. ;
	double Shark_D2_ResN(t, b, z) ;
		Shark_D2_ResN:bmtype = "tracer" ;
		Shark_D2_ResN:units = "mg N" ;
		Shark_D2_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 2" ;
		Shark_D2_ResN:sumtype = 0 ;
		Shark_D2_ResN:dtype = 0 ;
		Shark_D2_ResN:inwc = 0 ;
		Shark_D2_ResN:insed = 0 ;
		Shark_D2_ResN:dissol = 0 ;
		Shark_D2_ResN:decay = 0. ;
		Shark_D2_ResN:partic = 1 ;
		Shark_D2_ResN:passive = 0 ;
		Shark_D2_ResN:svel = 0. ;
		Shark_D2_ResN:xvel = 0. ;
		Shark_D2_ResN:psize = 10. ;
		Shark_D2_ResN:b_dens = 1000000000. ;
		Shark_D2_ResN:i_conc = 200000000. ;
		Shark_D2_ResN:f_conc = 200000000. ;
		Shark_D2_ResN:_FillValue = 123986. ;
	double Shark_D2_StructN(t, b, z) ;
		Shark_D2_StructN:bmtype = "tracer" ;
		Shark_D2_StructN:units = "mg N" ;
		Shark_D2_StructN:long_name = "Individ structural N for Other demersal sharks cohort 2" ;
		Shark_D2_StructN:sumtype = 0 ;
		Shark_D2_StructN:dtype = 0 ;
		Shark_D2_StructN:inwc = 0 ;
		Shark_D2_StructN:insed = 0 ;
		Shark_D2_StructN:dissol = 0 ;
		Shark_D2_StructN:decay = 0. ;
		Shark_D2_StructN:partic = 1 ;
		Shark_D2_StructN:passive = 0 ;
		Shark_D2_StructN:svel = 0. ;
		Shark_D2_StructN:xvel = 0. ;
		Shark_D2_StructN:psize = 10. ;
		Shark_D2_StructN:b_dens = 1000000000. ;
		Shark_D2_StructN:i_conc = 200000000. ;
		Shark_D2_StructN:f_conc = 200000000. ;
		Shark_D2_StructN:_FillValue = 46787. ;
	double Shark_D3_Nums(t, b, z) ;
		Shark_D3_Nums:bmtype = "tracer" ;
		Shark_D3_Nums:units = "1" ;
		Shark_D3_Nums:long_name = "Numbers of Other demersal sharks cohort 3" ;
		Shark_D3_Nums:sumtype = 0 ;
		Shark_D3_Nums:dtype = 0 ;
		Shark_D3_Nums:inwc = 0 ;
		Shark_D3_Nums:insed = 0 ;
		Shark_D3_Nums:dissol = 0 ;
		Shark_D3_Nums:decay = 0. ;
		Shark_D3_Nums:partic = 1 ;
		Shark_D3_Nums:passive = 0 ;
		Shark_D3_Nums:svel = 0. ;
		Shark_D3_Nums:xvel = 0. ;
		Shark_D3_Nums:psize = 10. ;
		Shark_D3_Nums:b_dens = 1000000000. ;
		Shark_D3_Nums:i_conc = 200000000. ;
		Shark_D3_Nums:f_conc = 200000000. ;
		Shark_D3_Nums:_FillValue = 0. ;
	double Shark_D3_ResN(t, b, z) ;
		Shark_D3_ResN:bmtype = "tracer" ;
		Shark_D3_ResN:units = "mg N" ;
		Shark_D3_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 3" ;
		Shark_D3_ResN:sumtype = 0 ;
		Shark_D3_ResN:dtype = 0 ;
		Shark_D3_ResN:inwc = 0 ;
		Shark_D3_ResN:insed = 0 ;
		Shark_D3_ResN:dissol = 0 ;
		Shark_D3_ResN:decay = 0. ;
		Shark_D3_ResN:partic = 1 ;
		Shark_D3_ResN:passive = 0 ;
		Shark_D3_ResN:svel = 0. ;
		Shark_D3_ResN:xvel = 0. ;
		Shark_D3_ResN:psize = 10. ;
		Shark_D3_ResN:b_dens = 1000000000. ;
		Shark_D3_ResN:i_conc = 200000000. ;
		Shark_D3_ResN:f_conc = 200000000. ;
		Shark_D3_ResN:_FillValue = 193772. ;
	double Shark_D3_StructN(t, b, z) ;
		Shark_D3_StructN:bmtype = "tracer" ;
		Shark_D3_StructN:units = "mg N" ;
		Shark_D3_StructN:long_name = "Individ structural N for Other demersal sharks cohort 3" ;
		Shark_D3_StructN:sumtype = 0 ;
		Shark_D3_StructN:dtype = 0 ;
		Shark_D3_StructN:inwc = 0 ;
		Shark_D3_StructN:insed = 0 ;
		Shark_D3_StructN:dissol = 0 ;
		Shark_D3_StructN:decay = 0. ;
		Shark_D3_StructN:partic = 1 ;
		Shark_D3_StructN:passive = 0 ;
		Shark_D3_StructN:svel = 0. ;
		Shark_D3_StructN:xvel = 0. ;
		Shark_D3_StructN:psize = 10. ;
		Shark_D3_StructN:b_dens = 1000000000. ;
		Shark_D3_StructN:i_conc = 200000000. ;
		Shark_D3_StructN:f_conc = 200000000. ;
		Shark_D3_StructN:_FillValue = 73122. ;
	double Shark_D4_Nums(t, b, z) ;
		Shark_D4_Nums:bmtype = "tracer" ;
		Shark_D4_Nums:units = "1" ;
		Shark_D4_Nums:long_name = "Numbers of Other demersal sharks cohort 4" ;
		Shark_D4_Nums:sumtype = 0 ;
		Shark_D4_Nums:dtype = 0 ;
		Shark_D4_Nums:inwc = 0 ;
		Shark_D4_Nums:insed = 0 ;
		Shark_D4_Nums:dissol = 0 ;
		Shark_D4_Nums:decay = 0. ;
		Shark_D4_Nums:partic = 1 ;
		Shark_D4_Nums:passive = 0 ;
		Shark_D4_Nums:svel = 0. ;
		Shark_D4_Nums:xvel = 0. ;
		Shark_D4_Nums:psize = 10. ;
		Shark_D4_Nums:b_dens = 1000000000. ;
		Shark_D4_Nums:i_conc = 200000000. ;
		Shark_D4_Nums:f_conc = 200000000. ;
		Shark_D4_Nums:_FillValue = 0. ;
	double Shark_D4_ResN(t, b, z) ;
		Shark_D4_ResN:bmtype = "tracer" ;
		Shark_D4_ResN:units = "mg N" ;
		Shark_D4_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 4" ;
		Shark_D4_ResN:sumtype = 0 ;
		Shark_D4_ResN:dtype = 0 ;
		Shark_D4_ResN:inwc = 0 ;
		Shark_D4_ResN:insed = 0 ;
		Shark_D4_ResN:dissol = 0 ;
		Shark_D4_ResN:decay = 0. ;
		Shark_D4_ResN:partic = 1 ;
		Shark_D4_ResN:passive = 0 ;
		Shark_D4_ResN:svel = 0. ;
		Shark_D4_ResN:xvel = 0. ;
		Shark_D4_ResN:psize = 10. ;
		Shark_D4_ResN:b_dens = 1000000000. ;
		Shark_D4_ResN:i_conc = 200000000. ;
		Shark_D4_ResN:f_conc = 200000000. ;
		Shark_D4_ResN:_FillValue = 259524. ;
	double Shark_D4_StructN(t, b, z) ;
		Shark_D4_StructN:bmtype = "tracer" ;
		Shark_D4_StructN:units = "mg N" ;
		Shark_D4_StructN:long_name = "Individ structural N for Other demersal sharks cohort 4" ;
		Shark_D4_StructN:sumtype = 0 ;
		Shark_D4_StructN:dtype = 0 ;
		Shark_D4_StructN:inwc = 0 ;
		Shark_D4_StructN:insed = 0 ;
		Shark_D4_StructN:dissol = 0 ;
		Shark_D4_StructN:decay = 0. ;
		Shark_D4_StructN:partic = 1 ;
		Shark_D4_StructN:passive = 0 ;
		Shark_D4_StructN:svel = 0. ;
		Shark_D4_StructN:xvel = 0. ;
		Shark_D4_StructN:psize = 10. ;
		Shark_D4_StructN:b_dens = 1000000000. ;
		Shark_D4_StructN:i_conc = 200000000. ;
		Shark_D4_StructN:f_conc = 200000000. ;
		Shark_D4_StructN:_FillValue = 97934. ;
	double Shark_D5_Nums(t, b, z) ;
		Shark_D5_Nums:bmtype = "tracer" ;
		Shark_D5_Nums:units = "1" ;
		Shark_D5_Nums:long_name = "Numbers of Other demersal sharks cohort 5" ;
		Shark_D5_Nums:sumtype = 0 ;
		Shark_D5_Nums:dtype = 0 ;
		Shark_D5_Nums:inwc = 0 ;
		Shark_D5_Nums:insed = 0 ;
		Shark_D5_Nums:dissol = 0 ;
		Shark_D5_Nums:decay = 0. ;
		Shark_D5_Nums:partic = 1 ;
		Shark_D5_Nums:passive = 0 ;
		Shark_D5_Nums:svel = 0. ;
		Shark_D5_Nums:xvel = 0. ;
		Shark_D5_Nums:psize = 10. ;
		Shark_D5_Nums:b_dens = 1000000000. ;
		Shark_D5_Nums:i_conc = 200000000. ;
		Shark_D5_Nums:f_conc = 200000000. ;
		Shark_D5_Nums:_FillValue = 0. ;
	double Shark_D5_ResN(t, b, z) ;
		Shark_D5_ResN:bmtype = "tracer" ;
		Shark_D5_ResN:units = "mg N" ;
		Shark_D5_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 5" ;
		Shark_D5_ResN:sumtype = 0 ;
		Shark_D5_ResN:dtype = 0 ;
		Shark_D5_ResN:inwc = 0 ;
		Shark_D5_ResN:insed = 0 ;
		Shark_D5_ResN:dissol = 0 ;
		Shark_D5_ResN:decay = 0. ;
		Shark_D5_ResN:partic = 1 ;
		Shark_D5_ResN:passive = 0 ;
		Shark_D5_ResN:svel = 0. ;
		Shark_D5_ResN:xvel = 0. ;
		Shark_D5_ResN:psize = 10. ;
		Shark_D5_ResN:b_dens = 1000000000. ;
		Shark_D5_ResN:i_conc = 200000000. ;
		Shark_D5_ResN:f_conc = 200000000. ;
		Shark_D5_ResN:_FillValue = 336736. ;
	double Shark_D5_StructN(t, b, z) ;
		Shark_D5_StructN:bmtype = "tracer" ;
		Shark_D5_StructN:units = "mg N" ;
		Shark_D5_StructN:long_name = "Individ structural N for Other demersal sharks cohort 5" ;
		Shark_D5_StructN:sumtype = 0 ;
		Shark_D5_StructN:dtype = 0 ;
		Shark_D5_StructN:inwc = 0 ;
		Shark_D5_StructN:insed = 0 ;
		Shark_D5_StructN:dissol = 0 ;
		Shark_D5_StructN:decay = 0. ;
		Shark_D5_StructN:partic = 1 ;
		Shark_D5_StructN:passive = 0 ;
		Shark_D5_StructN:svel = 0. ;
		Shark_D5_StructN:xvel = 0. ;
		Shark_D5_StructN:psize = 10. ;
		Shark_D5_StructN:b_dens = 1000000000. ;
		Shark_D5_StructN:i_conc = 200000000. ;
		Shark_D5_StructN:f_conc = 200000000. ;
		Shark_D5_StructN:_FillValue = 127070. ;
	double Shark_D6_Nums(t, b, z) ;
		Shark_D6_Nums:bmtype = "tracer" ;
		Shark_D6_Nums:units = "1" ;
		Shark_D6_Nums:long_name = "Numbers of Other demersal sharks cohort 6" ;
		Shark_D6_Nums:sumtype = 0 ;
		Shark_D6_Nums:dtype = 0 ;
		Shark_D6_Nums:inwc = 0 ;
		Shark_D6_Nums:insed = 0 ;
		Shark_D6_Nums:dissol = 0 ;
		Shark_D6_Nums:decay = 0. ;
		Shark_D6_Nums:partic = 1 ;
		Shark_D6_Nums:passive = 0 ;
		Shark_D6_Nums:svel = 0. ;
		Shark_D6_Nums:xvel = 0. ;
		Shark_D6_Nums:psize = 10. ;
		Shark_D6_Nums:b_dens = 1000000000. ;
		Shark_D6_Nums:i_conc = 200000000. ;
		Shark_D6_Nums:f_conc = 200000000. ;
		Shark_D6_Nums:_FillValue = 0. ;
	double Shark_D6_ResN(t, b, z) ;
		Shark_D6_ResN:bmtype = "tracer" ;
		Shark_D6_ResN:units = "mg N" ;
		Shark_D6_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 6" ;
		Shark_D6_ResN:sumtype = 0 ;
		Shark_D6_ResN:dtype = 0 ;
		Shark_D6_ResN:inwc = 0 ;
		Shark_D6_ResN:insed = 0 ;
		Shark_D6_ResN:dissol = 0 ;
		Shark_D6_ResN:decay = 0. ;
		Shark_D6_ResN:partic = 1 ;
		Shark_D6_ResN:passive = 0 ;
		Shark_D6_ResN:svel = 0. ;
		Shark_D6_ResN:xvel = 0. ;
		Shark_D6_ResN:psize = 10. ;
		Shark_D6_ResN:b_dens = 1000000000. ;
		Shark_D6_ResN:i_conc = 200000000. ;
		Shark_D6_ResN:f_conc = 200000000. ;
		Shark_D6_ResN:_FillValue = 399269. ;
	double Shark_D6_StructN(t, b, z) ;
		Shark_D6_StructN:bmtype = "tracer" ;
		Shark_D6_StructN:units = "mg N" ;
		Shark_D6_StructN:long_name = "Individ structural N for Other demersal sharks cohort 6" ;
		Shark_D6_StructN:sumtype = 0 ;
		Shark_D6_StructN:dtype = 0 ;
		Shark_D6_StructN:inwc = 0 ;
		Shark_D6_StructN:insed = 0 ;
		Shark_D6_StructN:dissol = 0 ;
		Shark_D6_StructN:decay = 0. ;
		Shark_D6_StructN:partic = 1 ;
		Shark_D6_StructN:passive = 0 ;
		Shark_D6_StructN:svel = 0. ;
		Shark_D6_StructN:xvel = 0. ;
		Shark_D6_StructN:psize = 10. ;
		Shark_D6_StructN:b_dens = 1000000000. ;
		Shark_D6_StructN:i_conc = 200000000. ;
		Shark_D6_StructN:f_conc = 200000000. ;
		Shark_D6_StructN:_FillValue = 150667. ;
	double Shark_D7_Nums(t, b, z) ;
		Shark_D7_Nums:bmtype = "tracer" ;
		Shark_D7_Nums:units = "1" ;
		Shark_D7_Nums:long_name = "Numbers of Other demersal sharks cohort 7" ;
		Shark_D7_Nums:sumtype = 0 ;
		Shark_D7_Nums:dtype = 0 ;
		Shark_D7_Nums:inwc = 0 ;
		Shark_D7_Nums:insed = 0 ;
		Shark_D7_Nums:dissol = 0 ;
		Shark_D7_Nums:decay = 0. ;
		Shark_D7_Nums:partic = 1 ;
		Shark_D7_Nums:passive = 0 ;
		Shark_D7_Nums:svel = 0. ;
		Shark_D7_Nums:xvel = 0. ;
		Shark_D7_Nums:psize = 10. ;
		Shark_D7_Nums:b_dens = 1000000000. ;
		Shark_D7_Nums:i_conc = 200000000. ;
		Shark_D7_Nums:f_conc = 200000000. ;
		Shark_D7_Nums:_FillValue = 0. ;
	double Shark_D7_ResN(t, b, z) ;
		Shark_D7_ResN:bmtype = "tracer" ;
		Shark_D7_ResN:units = "mg N" ;
		Shark_D7_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 7" ;
		Shark_D7_ResN:sumtype = 0 ;
		Shark_D7_ResN:dtype = 0 ;
		Shark_D7_ResN:inwc = 0 ;
		Shark_D7_ResN:insed = 0 ;
		Shark_D7_ResN:dissol = 0 ;
		Shark_D7_ResN:decay = 0. ;
		Shark_D7_ResN:partic = 1 ;
		Shark_D7_ResN:passive = 0 ;
		Shark_D7_ResN:svel = 0. ;
		Shark_D7_ResN:xvel = 0. ;
		Shark_D7_ResN:psize = 10. ;
		Shark_D7_ResN:b_dens = 1000000000. ;
		Shark_D7_ResN:i_conc = 200000000. ;
		Shark_D7_ResN:f_conc = 200000000. ;
		Shark_D7_ResN:_FillValue = 445500. ;
	double Shark_D7_StructN(t, b, z) ;
		Shark_D7_StructN:bmtype = "tracer" ;
		Shark_D7_StructN:units = "mg N" ;
		Shark_D7_StructN:long_name = "Individ structural N for Other demersal sharks cohort 7" ;
		Shark_D7_StructN:sumtype = 0 ;
		Shark_D7_StructN:dtype = 0 ;
		Shark_D7_StructN:inwc = 0 ;
		Shark_D7_StructN:insed = 0 ;
		Shark_D7_StructN:dissol = 0 ;
		Shark_D7_StructN:decay = 0. ;
		Shark_D7_StructN:partic = 1 ;
		Shark_D7_StructN:passive = 0 ;
		Shark_D7_StructN:svel = 0. ;
		Shark_D7_StructN:xvel = 0. ;
		Shark_D7_StructN:psize = 10. ;
		Shark_D7_StructN:b_dens = 1000000000. ;
		Shark_D7_StructN:i_conc = 200000000. ;
		Shark_D7_StructN:f_conc = 200000000. ;
		Shark_D7_StructN:_FillValue = 168113. ;
	double Shark_D8_Nums(t, b, z) ;
		Shark_D8_Nums:bmtype = "tracer" ;
		Shark_D8_Nums:units = "1" ;
		Shark_D8_Nums:long_name = "Numbers of Other demersal sharks cohort 8" ;
		Shark_D8_Nums:sumtype = 0 ;
		Shark_D8_Nums:dtype = 0 ;
		Shark_D8_Nums:inwc = 0 ;
		Shark_D8_Nums:insed = 0 ;
		Shark_D8_Nums:dissol = 0 ;
		Shark_D8_Nums:decay = 0. ;
		Shark_D8_Nums:partic = 1 ;
		Shark_D8_Nums:passive = 0 ;
		Shark_D8_Nums:svel = 0. ;
		Shark_D8_Nums:xvel = 0. ;
		Shark_D8_Nums:psize = 10. ;
		Shark_D8_Nums:b_dens = 1000000000. ;
		Shark_D8_Nums:i_conc = 200000000. ;
		Shark_D8_Nums:f_conc = 200000000. ;
		Shark_D8_Nums:_FillValue = 0. ;
	double Shark_D8_ResN(t, b, z) ;
		Shark_D8_ResN:bmtype = "tracer" ;
		Shark_D8_ResN:units = "mg N" ;
		Shark_D8_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 8" ;
		Shark_D8_ResN:sumtype = 0 ;
		Shark_D8_ResN:dtype = 0 ;
		Shark_D8_ResN:inwc = 0 ;
		Shark_D8_ResN:insed = 0 ;
		Shark_D8_ResN:dissol = 0 ;
		Shark_D8_ResN:decay = 0. ;
		Shark_D8_ResN:partic = 1 ;
		Shark_D8_ResN:passive = 0 ;
		Shark_D8_ResN:svel = 0. ;
		Shark_D8_ResN:xvel = 0. ;
		Shark_D8_ResN:psize = 10. ;
		Shark_D8_ResN:b_dens = 1000000000. ;
		Shark_D8_ResN:i_conc = 200000000. ;
		Shark_D8_ResN:f_conc = 200000000. ;
		Shark_D8_ResN:_FillValue = 478833. ;
	double Shark_D8_StructN(t, b, z) ;
		Shark_D8_StructN:bmtype = "tracer" ;
		Shark_D8_StructN:units = "mg N" ;
		Shark_D8_StructN:long_name = "Individ structural N for Other demersal sharks cohort 8" ;
		Shark_D8_StructN:sumtype = 0 ;
		Shark_D8_StructN:dtype = 0 ;
		Shark_D8_StructN:inwc = 0 ;
		Shark_D8_StructN:insed = 0 ;
		Shark_D8_StructN:dissol = 0 ;
		Shark_D8_StructN:decay = 0. ;
		Shark_D8_StructN:partic = 1 ;
		Shark_D8_StructN:passive = 0 ;
		Shark_D8_StructN:svel = 0. ;
		Shark_D8_StructN:xvel = 0. ;
		Shark_D8_StructN:psize = 10. ;
		Shark_D8_StructN:b_dens = 1000000000. ;
		Shark_D8_StructN:i_conc = 200000000. ;
		Shark_D8_StructN:f_conc = 200000000. ;
		Shark_D8_StructN:_FillValue = 180692. ;
	double Shark_D9_Nums(t, b, z) ;
		Shark_D9_Nums:bmtype = "tracer" ;
		Shark_D9_Nums:units = "1" ;
		Shark_D9_Nums:long_name = "Numbers of Other demersal sharks cohort 9" ;
		Shark_D9_Nums:sumtype = 0 ;
		Shark_D9_Nums:dtype = 0 ;
		Shark_D9_Nums:inwc = 0 ;
		Shark_D9_Nums:insed = 0 ;
		Shark_D9_Nums:dissol = 0 ;
		Shark_D9_Nums:decay = 0. ;
		Shark_D9_Nums:partic = 1 ;
		Shark_D9_Nums:passive = 0 ;
		Shark_D9_Nums:svel = 0. ;
		Shark_D9_Nums:xvel = 0. ;
		Shark_D9_Nums:psize = 10. ;
		Shark_D9_Nums:b_dens = 1000000000. ;
		Shark_D9_Nums:i_conc = 200000000. ;
		Shark_D9_Nums:f_conc = 200000000. ;
		Shark_D9_Nums:_FillValue = 0. ;
	double Shark_D9_ResN(t, b, z) ;
		Shark_D9_ResN:bmtype = "tracer" ;
		Shark_D9_ResN:units = "mg N" ;
		Shark_D9_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 9" ;
		Shark_D9_ResN:sumtype = 0 ;
		Shark_D9_ResN:dtype = 0 ;
		Shark_D9_ResN:inwc = 0 ;
		Shark_D9_ResN:insed = 0 ;
		Shark_D9_ResN:dissol = 0 ;
		Shark_D9_ResN:decay = 0. ;
		Shark_D9_ResN:partic = 1 ;
		Shark_D9_ResN:passive = 0 ;
		Shark_D9_ResN:svel = 0. ;
		Shark_D9_ResN:xvel = 0. ;
		Shark_D9_ResN:psize = 10. ;
		Shark_D9_ResN:b_dens = 1000000000. ;
		Shark_D9_ResN:i_conc = 200000000. ;
		Shark_D9_ResN:f_conc = 200000000. ;
		Shark_D9_ResN:_FillValue = 302773. ;
	double Shark_D9_StructN(t, b, z) ;
		Shark_D9_StructN:bmtype = "tracer" ;
		Shark_D9_StructN:units = "mg N" ;
		Shark_D9_StructN:long_name = "Individ structural N for Other demersal sharks cohort 9" ;
		Shark_D9_StructN:sumtype = 0 ;
		Shark_D9_StructN:dtype = 0 ;
		Shark_D9_StructN:inwc = 0 ;
		Shark_D9_StructN:insed = 0 ;
		Shark_D9_StructN:dissol = 0 ;
		Shark_D9_StructN:decay = 0. ;
		Shark_D9_StructN:partic = 1 ;
		Shark_D9_StructN:passive = 0 ;
		Shark_D9_StructN:svel = 0. ;
		Shark_D9_StructN:xvel = 0. ;
		Shark_D9_StructN:psize = 10. ;
		Shark_D9_StructN:b_dens = 1000000000. ;
		Shark_D9_StructN:i_conc = 200000000. ;
		Shark_D9_StructN:f_conc = 200000000. ;
		Shark_D9_StructN:_FillValue = 189650. ;
	double Shark_D10_Nums(t, b, z) ;
		Shark_D10_Nums:bmtype = "tracer" ;
		Shark_D10_Nums:units = "1" ;
		Shark_D10_Nums:long_name = "Numbers of Other demersal sharks cohort 10" ;
		Shark_D10_Nums:sumtype = 0 ;
		Shark_D10_Nums:dtype = 0 ;
		Shark_D10_Nums:inwc = 0 ;
		Shark_D10_Nums:insed = 0 ;
		Shark_D10_Nums:dissol = 0 ;
		Shark_D10_Nums:decay = 0. ;
		Shark_D10_Nums:partic = 1 ;
		Shark_D10_Nums:passive = 0 ;
		Shark_D10_Nums:svel = 0. ;
		Shark_D10_Nums:xvel = 0. ;
		Shark_D10_Nums:psize = 10. ;
		Shark_D10_Nums:b_dens = 1000000000. ;
		Shark_D10_Nums:i_conc = 200000000. ;
		Shark_D10_Nums:f_conc = 200000000. ;
		Shark_D10_Nums:_FillValue = 0. ;
	double Shark_D10_ResN(t, b, z) ;
		Shark_D10_ResN:bmtype = "tracer" ;
		Shark_D10_ResN:units = "mg N" ;
		Shark_D10_ResN:long_name = "Individ reserve N for Other demersal sharks cohort 10" ;
		Shark_D10_ResN:sumtype = 0 ;
		Shark_D10_ResN:dtype = 0 ;
		Shark_D10_ResN:inwc = 0 ;
		Shark_D10_ResN:insed = 0 ;
		Shark_D10_ResN:dissol = 0 ;
		Shark_D10_ResN:decay = 0. ;
		Shark_D10_ResN:partic = 1 ;
		Shark_D10_ResN:passive = 0 ;
		Shark_D10_ResN:svel = 0. ;
		Shark_D10_ResN:xvel = 0. ;
		Shark_D10_ResN:psize = 10. ;
		Shark_D10_ResN:b_dens = 1000000000. ;
		Shark_D10_ResN:i_conc = 200000000. ;
		Shark_D10_ResN:f_conc = 200000000. ;
		Shark_D10_ResN:_FillValue = 519404. ;
	double Shark_D10_StructN(t, b, z) ;
		Shark_D10_StructN:bmtype = "tracer" ;
		Shark_D10_StructN:units = "mg N" ;
		Shark_D10_StructN:long_name = "Individ structural N for Other demersal sharks cohort 10" ;
		Shark_D10_StructN:sumtype = 0 ;
		Shark_D10_StructN:dtype = 0 ;
		Shark_D10_StructN:inwc = 0 ;
		Shark_D10_StructN:insed = 0 ;
		Shark_D10_StructN:dissol = 0 ;
		Shark_D10_StructN:decay = 0. ;
		Shark_D10_StructN:partic = 1 ;
		Shark_D10_StructN:passive = 0 ;
		Shark_D10_StructN:svel = 0. ;
		Shark_D10_StructN:xvel = 0. ;
		Shark_D10_StructN:psize = 10. ;
		Shark_D10_StructN:b_dens = 1000000000. ;
		Shark_D10_StructN:i_conc = 200000000. ;
		Shark_D10_StructN:f_conc = 200000000. ;
		Shark_D10_StructN:_FillValue = 196002. ;
	double Seabird1_Nums(t, b, z) ;
		Seabird1_Nums:bmtype = "tracer" ;
		Seabird1_Nums:units = "1" ;
		Seabird1_Nums:long_name = "Numbers of Seabirds cohort 1" ;
		Seabird1_Nums:sumtype = 0 ;
		Seabird1_Nums:dtype = 0 ;
		Seabird1_Nums:inwc = 0 ;
		Seabird1_Nums:insed = 0 ;
		Seabird1_Nums:dissol = 0 ;
		Seabird1_Nums:decay = 0. ;
		Seabird1_Nums:partic = 1 ;
		Seabird1_Nums:passive = 0 ;
		Seabird1_Nums:svel = 0. ;
		Seabird1_Nums:xvel = 0. ;
		Seabird1_Nums:psize = 10. ;
		Seabird1_Nums:b_dens = 1000000000. ;
		Seabird1_Nums:i_conc = 200000000. ;
		Seabird1_Nums:f_conc = 200000000. ;
		Seabird1_Nums:_FillValue = 0. ;
	double Seabird1_ResN(t, b, z) ;
		Seabird1_ResN:bmtype = "tracer" ;
		Seabird1_ResN:units = "mg N" ;
		Seabird1_ResN:long_name = "Individ reserve N for Seabirds cohort 1" ;
		Seabird1_ResN:sumtype = 0 ;
		Seabird1_ResN:dtype = 0 ;
		Seabird1_ResN:inwc = 0 ;
		Seabird1_ResN:insed = 0 ;
		Seabird1_ResN:dissol = 0 ;
		Seabird1_ResN:decay = 0. ;
		Seabird1_ResN:partic = 1 ;
		Seabird1_ResN:passive = 0 ;
		Seabird1_ResN:svel = 0. ;
		Seabird1_ResN:xvel = 0. ;
		Seabird1_ResN:psize = 10. ;
		Seabird1_ResN:b_dens = 1000000000. ;
		Seabird1_ResN:i_conc = 200000000. ;
		Seabird1_ResN:f_conc = 200000000. ;
		Seabird1_ResN:_FillValue = 51698. ;
	double Seabird1_StructN(t, b, z) ;
		Seabird1_StructN:bmtype = "tracer" ;
		Seabird1_StructN:units = "mg N" ;
		Seabird1_StructN:long_name = "Individ structural N for Seabirds cohort 1" ;
		Seabird1_StructN:sumtype = 0 ;
		Seabird1_StructN:dtype = 0 ;
		Seabird1_StructN:inwc = 0 ;
		Seabird1_StructN:insed = 0 ;
		Seabird1_StructN:dissol = 0 ;
		Seabird1_StructN:decay = 0. ;
		Seabird1_StructN:partic = 1 ;
		Seabird1_StructN:passive = 0 ;
		Seabird1_StructN:svel = 0. ;
		Seabird1_StructN:xvel = 0. ;
		Seabird1_StructN:psize = 10. ;
		Seabird1_StructN:b_dens = 1000000000. ;
		Seabird1_StructN:i_conc = 200000000. ;
		Seabird1_StructN:f_conc = 200000000. ;
		Seabird1_StructN:_FillValue = 19508. ;
	double Seabird2_Nums(t, b, z) ;
		Seabird2_Nums:bmtype = "tracer" ;
		Seabird2_Nums:units = "1" ;
		Seabird2_Nums:long_name = "Numbers of Seabirds cohort 2" ;
		Seabird2_Nums:sumtype = 0 ;
		Seabird2_Nums:dtype = 0 ;
		Seabird2_Nums:inwc = 0 ;
		Seabird2_Nums:insed = 0 ;
		Seabird2_Nums:dissol = 0 ;
		Seabird2_Nums:decay = 0. ;
		Seabird2_Nums:partic = 1 ;
		Seabird2_Nums:passive = 0 ;
		Seabird2_Nums:svel = 0. ;
		Seabird2_Nums:xvel = 0. ;
		Seabird2_Nums:psize = 10. ;
		Seabird2_Nums:b_dens = 1000000000. ;
		Seabird2_Nums:i_conc = 200000000. ;
		Seabird2_Nums:f_conc = 200000000. ;
		Seabird2_Nums:_FillValue = 0. ;
	double Seabird2_ResN(t, b, z) ;
		Seabird2_ResN:bmtype = "tracer" ;
		Seabird2_ResN:units = "mg N" ;
		Seabird2_ResN:long_name = "Individ reserve N for Seabirds cohort 2" ;
		Seabird2_ResN:sumtype = 0 ;
		Seabird2_ResN:dtype = 0 ;
		Seabird2_ResN:inwc = 0 ;
		Seabird2_ResN:insed = 0 ;
		Seabird2_ResN:dissol = 0 ;
		Seabird2_ResN:decay = 0. ;
		Seabird2_ResN:partic = 1 ;
		Seabird2_ResN:passive = 0 ;
		Seabird2_ResN:svel = 0. ;
		Seabird2_ResN:xvel = 0. ;
		Seabird2_ResN:psize = 10. ;
		Seabird2_ResN:b_dens = 1000000000. ;
		Seabird2_ResN:i_conc = 200000000. ;
		Seabird2_ResN:f_conc = 200000000. ;
		Seabird2_ResN:_FillValue = 86326. ;
	double Seabird2_StructN(t, b, z) ;
		Seabird2_StructN:bmtype = "tracer" ;
		Seabird2_StructN:units = "mg N" ;
		Seabird2_StructN:long_name = "Individ structural N for Seabirds cohort 2" ;
		Seabird2_StructN:sumtype = 0 ;
		Seabird2_StructN:dtype = 0 ;
		Seabird2_StructN:inwc = 0 ;
		Seabird2_StructN:insed = 0 ;
		Seabird2_StructN:dissol = 0 ;
		Seabird2_StructN:decay = 0. ;
		Seabird2_StructN:partic = 1 ;
		Seabird2_StructN:passive = 0 ;
		Seabird2_StructN:svel = 0. ;
		Seabird2_StructN:xvel = 0. ;
		Seabird2_StructN:psize = 10. ;
		Seabird2_StructN:b_dens = 1000000000. ;
		Seabird2_StructN:i_conc = 200000000. ;
		Seabird2_StructN:f_conc = 200000000. ;
		Seabird2_StructN:_FillValue = 32575. ;
	double Seabird3_Nums(t, b, z) ;
		Seabird3_Nums:bmtype = "tracer" ;
		Seabird3_Nums:units = "1" ;
		Seabird3_Nums:long_name = "Numbers of Seabirds cohort 3" ;
		Seabird3_Nums:sumtype = 0 ;
		Seabird3_Nums:dtype = 0 ;
		Seabird3_Nums:inwc = 0 ;
		Seabird3_Nums:insed = 0 ;
		Seabird3_Nums:dissol = 0 ;
		Seabird3_Nums:decay = 0. ;
		Seabird3_Nums:partic = 1 ;
		Seabird3_Nums:passive = 0 ;
		Seabird3_Nums:svel = 0. ;
		Seabird3_Nums:xvel = 0. ;
		Seabird3_Nums:psize = 10. ;
		Seabird3_Nums:b_dens = 1000000000. ;
		Seabird3_Nums:i_conc = 200000000. ;
		Seabird3_Nums:f_conc = 200000000. ;
		Seabird3_Nums:_FillValue = 0. ;
	double Seabird3_ResN(t, b, z) ;
		Seabird3_ResN:bmtype = "tracer" ;
		Seabird3_ResN:units = "mg N" ;
		Seabird3_ResN:long_name = "Individ reserve N for Seabirds cohort 3" ;
		Seabird3_ResN:sumtype = 0 ;
		Seabird3_ResN:dtype = 0 ;
		Seabird3_ResN:inwc = 0 ;
		Seabird3_ResN:insed = 0 ;
		Seabird3_ResN:dissol = 0 ;
		Seabird3_ResN:decay = 0. ;
		Seabird3_ResN:partic = 1 ;
		Seabird3_ResN:passive = 0 ;
		Seabird3_ResN:svel = 0. ;
		Seabird3_ResN:xvel = 0. ;
		Seabird3_ResN:psize = 10. ;
		Seabird3_ResN:b_dens = 1000000000. ;
		Seabird3_ResN:i_conc = 200000000. ;
		Seabird3_ResN:f_conc = 200000000. ;
		Seabird3_ResN:_FillValue = 94105. ;
	double Seabird3_StructN(t, b, z) ;
		Seabird3_StructN:bmtype = "tracer" ;
		Seabird3_StructN:units = "mg N" ;
		Seabird3_StructN:long_name = "Individ structural N for Seabirds cohort 3" ;
		Seabird3_StructN:sumtype = 0 ;
		Seabird3_StructN:dtype = 0 ;
		Seabird3_StructN:inwc = 0 ;
		Seabird3_StructN:insed = 0 ;
		Seabird3_StructN:dissol = 0 ;
		Seabird3_StructN:decay = 0. ;
		Seabird3_StructN:partic = 1 ;
		Seabird3_StructN:passive = 0 ;
		Seabird3_StructN:svel = 0. ;
		Seabird3_StructN:xvel = 0. ;
		Seabird3_StructN:psize = 10. ;
		Seabird3_StructN:b_dens = 1000000000. ;
		Seabird3_StructN:i_conc = 200000000. ;
		Seabird3_StructN:f_conc = 200000000. ;
		Seabird3_StructN:_FillValue = 35521. ;
	double Seabird4_Nums(t, b, z) ;
		Seabird4_Nums:bmtype = "tracer" ;
		Seabird4_Nums:units = "1" ;
		Seabird4_Nums:long_name = "Numbers of Seabirds cohort 4" ;
		Seabird4_Nums:sumtype = 0 ;
		Seabird4_Nums:dtype = 0 ;
		Seabird4_Nums:inwc = 0 ;
		Seabird4_Nums:insed = 0 ;
		Seabird4_Nums:dissol = 0 ;
		Seabird4_Nums:decay = 0. ;
		Seabird4_Nums:partic = 1 ;
		Seabird4_Nums:passive = 0 ;
		Seabird4_Nums:svel = 0. ;
		Seabird4_Nums:xvel = 0. ;
		Seabird4_Nums:psize = 10. ;
		Seabird4_Nums:b_dens = 1000000000. ;
		Seabird4_Nums:i_conc = 200000000. ;
		Seabird4_Nums:f_conc = 200000000. ;
		Seabird4_Nums:_FillValue = 0. ;
	double Seabird4_ResN(t, b, z) ;
		Seabird4_ResN:bmtype = "tracer" ;
		Seabird4_ResN:units = "mg N" ;
		Seabird4_ResN:long_name = "Individ reserve N for Seabirds cohort 4" ;
		Seabird4_ResN:sumtype = 0 ;
		Seabird4_ResN:dtype = 0 ;
		Seabird4_ResN:inwc = 0 ;
		Seabird4_ResN:insed = 0 ;
		Seabird4_ResN:dissol = 0 ;
		Seabird4_ResN:decay = 0. ;
		Seabird4_ResN:partic = 1 ;
		Seabird4_ResN:passive = 0 ;
		Seabird4_ResN:svel = 0. ;
		Seabird4_ResN:xvel = 0. ;
		Seabird4_ResN:psize = 10. ;
		Seabird4_ResN:b_dens = 1000000000. ;
		Seabird4_ResN:i_conc = 200000000. ;
		Seabird4_ResN:f_conc = 200000000. ;
		Seabird4_ResN:_FillValue = 95500. ;
	double Seabird4_StructN(t, b, z) ;
		Seabird4_StructN:bmtype = "tracer" ;
		Seabird4_StructN:units = "mg N" ;
		Seabird4_StructN:long_name = "Individ structural N for Seabirds cohort 4" ;
		Seabird4_StructN:sumtype = 0 ;
		Seabird4_StructN:dtype = 0 ;
		Seabird4_StructN:inwc = 0 ;
		Seabird4_StructN:insed = 0 ;
		Seabird4_StructN:dissol = 0 ;
		Seabird4_StructN:decay = 0. ;
		Seabird4_StructN:partic = 1 ;
		Seabird4_StructN:passive = 0 ;
		Seabird4_StructN:svel = 0. ;
		Seabird4_StructN:xvel = 0. ;
		Seabird4_StructN:psize = 10. ;
		Seabird4_StructN:b_dens = 1000000000. ;
		Seabird4_StructN:i_conc = 200000000. ;
		Seabird4_StructN:f_conc = 200000000. ;
		Seabird4_StructN:_FillValue = 36090. ;
	double Seabird5_Nums(t, b, z) ;
		Seabird5_Nums:bmtype = "tracer" ;
		Seabird5_Nums:units = "1" ;
		Seabird5_Nums:long_name = "Numbers of Seabirds cohort 5" ;
		Seabird5_Nums:sumtype = 0 ;
		Seabird5_Nums:dtype = 0 ;
		Seabird5_Nums:inwc = 0 ;
		Seabird5_Nums:insed = 0 ;
		Seabird5_Nums:dissol = 0 ;
		Seabird5_Nums:decay = 0. ;
		Seabird5_Nums:partic = 1 ;
		Seabird5_Nums:passive = 0 ;
		Seabird5_Nums:svel = 0. ;
		Seabird5_Nums:xvel = 0. ;
		Seabird5_Nums:psize = 10. ;
		Seabird5_Nums:b_dens = 1000000000. ;
		Seabird5_Nums:i_conc = 200000000. ;
		Seabird5_Nums:f_conc = 200000000. ;
		Seabird5_Nums:_FillValue = 0. ;
	double Seabird5_ResN(t, b, z) ;
		Seabird5_ResN:bmtype = "tracer" ;
		Seabird5_ResN:units = "mg N" ;
		Seabird5_ResN:long_name = "Individ reserve N for Seabirds cohort 5" ;
		Seabird5_ResN:sumtype = 0 ;
		Seabird5_ResN:dtype = 0 ;
		Seabird5_ResN:inwc = 0 ;
		Seabird5_ResN:insed = 0 ;
		Seabird5_ResN:dissol = 0 ;
		Seabird5_ResN:decay = 0. ;
		Seabird5_ResN:partic = 1 ;
		Seabird5_ResN:passive = 0 ;
		Seabird5_ResN:svel = 0. ;
		Seabird5_ResN:xvel = 0. ;
		Seabird5_ResN:psize = 10. ;
		Seabird5_ResN:b_dens = 1000000000. ;
		Seabird5_ResN:i_conc = 200000000. ;
		Seabird5_ResN:f_conc = 200000000. ;
		Seabird5_ResN:_FillValue = 95894. ;
	double Seabird5_StructN(t, b, z) ;
		Seabird5_StructN:bmtype = "tracer" ;
		Seabird5_StructN:units = "mg N" ;
		Seabird5_StructN:long_name = "Individ structural N for Seabirds cohort 5" ;
		Seabird5_StructN:sumtype = 0 ;
		Seabird5_StructN:dtype = 0 ;
		Seabird5_StructN:inwc = 0 ;
		Seabird5_StructN:insed = 0 ;
		Seabird5_StructN:dissol = 0 ;
		Seabird5_StructN:decay = 0. ;
		Seabird5_StructN:partic = 1 ;
		Seabird5_StructN:passive = 0 ;
		Seabird5_StructN:svel = 0. ;
		Seabird5_StructN:xvel = 0. ;
		Seabird5_StructN:psize = 10. ;
		Seabird5_StructN:b_dens = 1000000000. ;
		Seabird5_StructN:i_conc = 200000000. ;
		Seabird5_StructN:f_conc = 200000000. ;
		Seabird5_StructN:_FillValue = 36196. ;
	double Seabird6_Nums(t, b, z) ;
		Seabird6_Nums:bmtype = "tracer" ;
		Seabird6_Nums:units = "1" ;
		Seabird6_Nums:long_name = "Numbers of Seabirds cohort 6" ;
		Seabird6_Nums:sumtype = 0 ;
		Seabird6_Nums:dtype = 0 ;
		Seabird6_Nums:inwc = 0 ;
		Seabird6_Nums:insed = 0 ;
		Seabird6_Nums:dissol = 0 ;
		Seabird6_Nums:decay = 0. ;
		Seabird6_Nums:partic = 1 ;
		Seabird6_Nums:passive = 0 ;
		Seabird6_Nums:svel = 0. ;
		Seabird6_Nums:xvel = 0. ;
		Seabird6_Nums:psize = 10. ;
		Seabird6_Nums:b_dens = 1000000000. ;
		Seabird6_Nums:i_conc = 200000000. ;
		Seabird6_Nums:f_conc = 200000000. ;
		Seabird6_Nums:_FillValue = 0. ;
	double Seabird6_ResN(t, b, z) ;
		Seabird6_ResN:bmtype = "tracer" ;
		Seabird6_ResN:units = "mg N" ;
		Seabird6_ResN:long_name = "Individ reserve N for Seabirds cohort 6" ;
		Seabird6_ResN:sumtype = 0 ;
		Seabird6_ResN:dtype = 0 ;
		Seabird6_ResN:inwc = 0 ;
		Seabird6_ResN:insed = 0 ;
		Seabird6_ResN:dissol = 0 ;
		Seabird6_ResN:decay = 0. ;
		Seabird6_ResN:partic = 1 ;
		Seabird6_ResN:passive = 0 ;
		Seabird6_ResN:svel = 0. ;
		Seabird6_ResN:xvel = 0. ;
		Seabird6_ResN:psize = 10. ;
		Seabird6_ResN:b_dens = 1000000000. ;
		Seabird6_ResN:i_conc = 200000000. ;
		Seabird6_ResN:f_conc = 200000000. ;
		Seabird6_ResN:_FillValue = 95967. ;
	double Seabird6_StructN(t, b, z) ;
		Seabird6_StructN:bmtype = "tracer" ;
		Seabird6_StructN:units = "mg N" ;
		Seabird6_StructN:long_name = "Individ structural N for Seabirds cohort 6" ;
		Seabird6_StructN:sumtype = 0 ;
		Seabird6_StructN:dtype = 0 ;
		Seabird6_StructN:inwc = 0 ;
		Seabird6_StructN:insed = 0 ;
		Seabird6_StructN:dissol = 0 ;
		Seabird6_StructN:decay = 0. ;
		Seabird6_StructN:partic = 1 ;
		Seabird6_StructN:passive = 0 ;
		Seabird6_StructN:svel = 0. ;
		Seabird6_StructN:xvel = 0. ;
		Seabird6_StructN:psize = 10. ;
		Seabird6_StructN:b_dens = 1000000000. ;
		Seabird6_StructN:i_conc = 200000000. ;
		Seabird6_StructN:f_conc = 200000000. ;
		Seabird6_StructN:_FillValue = 36216. ;
	double Seabird7_Nums(t, b, z) ;
		Seabird7_Nums:bmtype = "tracer" ;
		Seabird7_Nums:units = "1" ;
		Seabird7_Nums:long_name = "Numbers of Seabirds cohort 7" ;
		Seabird7_Nums:sumtype = 0 ;
		Seabird7_Nums:dtype = 0 ;
		Seabird7_Nums:inwc = 0 ;
		Seabird7_Nums:insed = 0 ;
		Seabird7_Nums:dissol = 0 ;
		Seabird7_Nums:decay = 0. ;
		Seabird7_Nums:partic = 1 ;
		Seabird7_Nums:passive = 0 ;
		Seabird7_Nums:svel = 0. ;
		Seabird7_Nums:xvel = 0. ;
		Seabird7_Nums:psize = 10. ;
		Seabird7_Nums:b_dens = 1000000000. ;
		Seabird7_Nums:i_conc = 200000000. ;
		Seabird7_Nums:f_conc = 200000000. ;
		Seabird7_Nums:_FillValue = 0. ;
	double Seabird7_ResN(t, b, z) ;
		Seabird7_ResN:bmtype = "tracer" ;
		Seabird7_ResN:units = "mg N" ;
		Seabird7_ResN:long_name = "Individ reserve N for Seabirds cohort 7" ;
		Seabird7_ResN:sumtype = 0 ;
		Seabird7_ResN:dtype = 0 ;
		Seabird7_ResN:inwc = 0 ;
		Seabird7_ResN:insed = 0 ;
		Seabird7_ResN:dissol = 0 ;
		Seabird7_ResN:decay = 0. ;
		Seabird7_ResN:partic = 1 ;
		Seabird7_ResN:passive = 0 ;
		Seabird7_ResN:svel = 0. ;
		Seabird7_ResN:xvel = 0. ;
		Seabird7_ResN:psize = 10. ;
		Seabird7_ResN:b_dens = 1000000000. ;
		Seabird7_ResN:i_conc = 200000000. ;
		Seabird7_ResN:f_conc = 200000000. ;
		Seabird7_ResN:_FillValue = 95981. ;
	double Seabird7_StructN(t, b, z) ;
		Seabird7_StructN:bmtype = "tracer" ;
		Seabird7_StructN:units = "mg N" ;
		Seabird7_StructN:long_name = "Individ structural N for Seabirds cohort 7" ;
		Seabird7_StructN:sumtype = 0 ;
		Seabird7_StructN:dtype = 0 ;
		Seabird7_StructN:inwc = 0 ;
		Seabird7_StructN:insed = 0 ;
		Seabird7_StructN:dissol = 0 ;
		Seabird7_StructN:decay = 0. ;
		Seabird7_StructN:partic = 1 ;
		Seabird7_StructN:passive = 0 ;
		Seabird7_StructN:svel = 0. ;
		Seabird7_StructN:xvel = 0. ;
		Seabird7_StructN:psize = 10. ;
		Seabird7_StructN:b_dens = 1000000000. ;
		Seabird7_StructN:i_conc = 200000000. ;
		Seabird7_StructN:f_conc = 200000000. ;
		Seabird7_StructN:_FillValue = 36220. ;
	double Seabird8_Nums(t, b, z) ;
		Seabird8_Nums:bmtype = "tracer" ;
		Seabird8_Nums:units = "1" ;
		Seabird8_Nums:long_name = "Numbers of Seabirds cohort 8" ;
		Seabird8_Nums:sumtype = 0 ;
		Seabird8_Nums:dtype = 0 ;
		Seabird8_Nums:inwc = 0 ;
		Seabird8_Nums:insed = 0 ;
		Seabird8_Nums:dissol = 0 ;
		Seabird8_Nums:decay = 0. ;
		Seabird8_Nums:partic = 1 ;
		Seabird8_Nums:passive = 0 ;
		Seabird8_Nums:svel = 0. ;
		Seabird8_Nums:xvel = 0. ;
		Seabird8_Nums:psize = 10. ;
		Seabird8_Nums:b_dens = 1000000000. ;
		Seabird8_Nums:i_conc = 200000000. ;
		Seabird8_Nums:f_conc = 200000000. ;
		Seabird8_Nums:_FillValue = 0. ;
	double Seabird8_ResN(t, b, z) ;
		Seabird8_ResN:bmtype = "tracer" ;
		Seabird8_ResN:units = "mg N" ;
		Seabird8_ResN:long_name = "Individ reserve N for Seabirds cohort 8" ;
		Seabird8_ResN:sumtype = 0 ;
		Seabird8_ResN:dtype = 0 ;
		Seabird8_ResN:inwc = 0 ;
		Seabird8_ResN:insed = 0 ;
		Seabird8_ResN:dissol = 0 ;
		Seabird8_ResN:decay = 0. ;
		Seabird8_ResN:partic = 1 ;
		Seabird8_ResN:passive = 0 ;
		Seabird8_ResN:svel = 0. ;
		Seabird8_ResN:xvel = 0. ;
		Seabird8_ResN:psize = 10. ;
		Seabird8_ResN:b_dens = 1000000000. ;
		Seabird8_ResN:i_conc = 200000000. ;
		Seabird8_ResN:f_conc = 200000000. ;
		Seabird8_ResN:_FillValue = 95984. ;
	double Seabird8_StructN(t, b, z) ;
		Seabird8_StructN:bmtype = "tracer" ;
		Seabird8_StructN:units = "mg N" ;
		Seabird8_StructN:long_name = "Individ structural N for Seabirds cohort 8" ;
		Seabird8_StructN:sumtype = 0 ;
		Seabird8_StructN:dtype = 0 ;
		Seabird8_StructN:inwc = 0 ;
		Seabird8_StructN:insed = 0 ;
		Seabird8_StructN:dissol = 0 ;
		Seabird8_StructN:decay = 0. ;
		Seabird8_StructN:partic = 1 ;
		Seabird8_StructN:passive = 0 ;
		Seabird8_StructN:svel = 0. ;
		Seabird8_StructN:xvel = 0. ;
		Seabird8_StructN:psize = 10. ;
		Seabird8_StructN:b_dens = 1000000000. ;
		Seabird8_StructN:i_conc = 200000000. ;
		Seabird8_StructN:f_conc = 200000000. ;
		Seabird8_StructN:_FillValue = 36221. ;
	double Seabird9_Nums(t, b, z) ;
		Seabird9_Nums:bmtype = "tracer" ;
		Seabird9_Nums:units = "1" ;
		Seabird9_Nums:long_name = "Numbers of Seabirds cohort 9" ;
		Seabird9_Nums:sumtype = 0 ;
		Seabird9_Nums:dtype = 0 ;
		Seabird9_Nums:inwc = 0 ;
		Seabird9_Nums:insed = 0 ;
		Seabird9_Nums:dissol = 0 ;
		Seabird9_Nums:decay = 0. ;
		Seabird9_Nums:partic = 1 ;
		Seabird9_Nums:passive = 0 ;
		Seabird9_Nums:svel = 0. ;
		Seabird9_Nums:xvel = 0. ;
		Seabird9_Nums:psize = 10. ;
		Seabird9_Nums:b_dens = 1000000000. ;
		Seabird9_Nums:i_conc = 200000000. ;
		Seabird9_Nums:f_conc = 200000000. ;
		Seabird9_Nums:_FillValue = 0. ;
	double Seabird9_ResN(t, b, z) ;
		Seabird9_ResN:bmtype = "tracer" ;
		Seabird9_ResN:units = "mg N" ;
		Seabird9_ResN:long_name = "Individ reserve N for Seabirds cohort 9" ;
		Seabird9_ResN:sumtype = 0 ;
		Seabird9_ResN:dtype = 0 ;
		Seabird9_ResN:inwc = 0 ;
		Seabird9_ResN:insed = 0 ;
		Seabird9_ResN:dissol = 0 ;
		Seabird9_ResN:decay = 0. ;
		Seabird9_ResN:partic = 1 ;
		Seabird9_ResN:passive = 0 ;
		Seabird9_ResN:svel = 0. ;
		Seabird9_ResN:xvel = 0. ;
		Seabird9_ResN:psize = 10. ;
		Seabird9_ResN:b_dens = 1000000000. ;
		Seabird9_ResN:i_conc = 200000000. ;
		Seabird9_ResN:f_conc = 200000000. ;
		Seabird9_ResN:_FillValue = 95985. ;
	double Seabird9_StructN(t, b, z) ;
		Seabird9_StructN:bmtype = "tracer" ;
		Seabird9_StructN:units = "mg N" ;
		Seabird9_StructN:long_name = "Individ structural N for Seabirds cohort 9" ;
		Seabird9_StructN:sumtype = 0 ;
		Seabird9_StructN:dtype = 0 ;
		Seabird9_StructN:inwc = 0 ;
		Seabird9_StructN:insed = 0 ;
		Seabird9_StructN:dissol = 0 ;
		Seabird9_StructN:decay = 0. ;
		Seabird9_StructN:partic = 1 ;
		Seabird9_StructN:passive = 0 ;
		Seabird9_StructN:svel = 0. ;
		Seabird9_StructN:xvel = 0. ;
		Seabird9_StructN:psize = 10. ;
		Seabird9_StructN:b_dens = 1000000000. ;
		Seabird9_StructN:i_conc = 200000000. ;
		Seabird9_StructN:f_conc = 200000000. ;
		Seabird9_StructN:_FillValue = 36222. ;
	double Seabird10_Nums(t, b, z) ;
		Seabird10_Nums:bmtype = "tracer" ;
		Seabird10_Nums:units = "1" ;
		Seabird10_Nums:long_name = "Numbers of Seabirds cohort 10" ;
		Seabird10_Nums:sumtype = 0 ;
		Seabird10_Nums:dtype = 0 ;
		Seabird10_Nums:inwc = 0 ;
		Seabird10_Nums:insed = 0 ;
		Seabird10_Nums:dissol = 0 ;
		Seabird10_Nums:decay = 0. ;
		Seabird10_Nums:partic = 1 ;
		Seabird10_Nums:passive = 0 ;
		Seabird10_Nums:svel = 0. ;
		Seabird10_Nums:xvel = 0. ;
		Seabird10_Nums:psize = 10. ;
		Seabird10_Nums:b_dens = 1000000000. ;
		Seabird10_Nums:i_conc = 200000000. ;
		Seabird10_Nums:f_conc = 200000000. ;
		Seabird10_Nums:_FillValue = 0. ;
	double Seabird10_ResN(t, b, z) ;
		Seabird10_ResN:bmtype = "tracer" ;
		Seabird10_ResN:units = "mg N" ;
		Seabird10_ResN:long_name = "Individ reserve N for Seabirds cohort 10" ;
		Seabird10_ResN:sumtype = 0 ;
		Seabird10_ResN:dtype = 0 ;
		Seabird10_ResN:inwc = 0 ;
		Seabird10_ResN:insed = 0 ;
		Seabird10_ResN:dissol = 0 ;
		Seabird10_ResN:decay = 0. ;
		Seabird10_ResN:partic = 1 ;
		Seabird10_ResN:passive = 0 ;
		Seabird10_ResN:svel = 0. ;
		Seabird10_ResN:xvel = 0. ;
		Seabird10_ResN:psize = 10. ;
		Seabird10_ResN:b_dens = 1000000000. ;
		Seabird10_ResN:i_conc = 200000000. ;
		Seabird10_ResN:f_conc = 200000000. ;
		Seabird10_ResN:_FillValue = 95990. ;
	double Seabird10_StructN(t, b, z) ;
		Seabird10_StructN:bmtype = "tracer" ;
		Seabird10_StructN:units = "mg N" ;
		Seabird10_StructN:long_name = "Individ structural N for Seabirds cohort 10" ;
		Seabird10_StructN:sumtype = 0 ;
		Seabird10_StructN:dtype = 0 ;
		Seabird10_StructN:inwc = 0 ;
		Seabird10_StructN:insed = 0 ;
		Seabird10_StructN:dissol = 0 ;
		Seabird10_StructN:decay = 0. ;
		Seabird10_StructN:partic = 1 ;
		Seabird10_StructN:passive = 0 ;
		Seabird10_StructN:svel = 0. ;
		Seabird10_StructN:xvel = 0. ;
		Seabird10_StructN:psize = 10. ;
		Seabird10_StructN:b_dens = 1000000000. ;
		Seabird10_StructN:i_conc = 200000000. ;
		Seabird10_StructN:f_conc = 200000000. ;
		Seabird10_StructN:_FillValue = 36222. ;
	double Pinniped1_Nums(t, b, z) ;
		Pinniped1_Nums:bmtype = "tracer" ;
		Pinniped1_Nums:units = "1" ;
		Pinniped1_Nums:long_name = "Numbers of Pinnipeds cohort 1" ;
		Pinniped1_Nums:sumtype = 0 ;
		Pinniped1_Nums:dtype = 0 ;
		Pinniped1_Nums:inwc = 0 ;
		Pinniped1_Nums:insed = 0 ;
		Pinniped1_Nums:dissol = 0 ;
		Pinniped1_Nums:decay = 0. ;
		Pinniped1_Nums:partic = 1 ;
		Pinniped1_Nums:passive = 0 ;
		Pinniped1_Nums:svel = 0. ;
		Pinniped1_Nums:xvel = 0. ;
		Pinniped1_Nums:psize = 10. ;
		Pinniped1_Nums:b_dens = 1000000000. ;
		Pinniped1_Nums:i_conc = 200000000. ;
		Pinniped1_Nums:f_conc = 200000000. ;
		Pinniped1_Nums:_FillValue = 0. ;
	double Pinniped1_ResN(t, b, z) ;
		Pinniped1_ResN:bmtype = "tracer" ;
		Pinniped1_ResN:units = "mg N" ;
		Pinniped1_ResN:long_name = "Individ reserve N for Pinnipeds cohort 1" ;
		Pinniped1_ResN:sumtype = 0 ;
		Pinniped1_ResN:dtype = 0 ;
		Pinniped1_ResN:inwc = 0 ;
		Pinniped1_ResN:insed = 0 ;
		Pinniped1_ResN:dissol = 0 ;
		Pinniped1_ResN:decay = 0. ;
		Pinniped1_ResN:partic = 1 ;
		Pinniped1_ResN:passive = 0 ;
		Pinniped1_ResN:svel = 0. ;
		Pinniped1_ResN:xvel = 0. ;
		Pinniped1_ResN:psize = 10. ;
		Pinniped1_ResN:b_dens = 1000000000. ;
		Pinniped1_ResN:i_conc = 200000000. ;
		Pinniped1_ResN:f_conc = 200000000. ;
		Pinniped1_ResN:_FillValue = 116146. ;
	double Pinniped1_StructN(t, b, z) ;
		Pinniped1_StructN:bmtype = "tracer" ;
		Pinniped1_StructN:units = "mg N" ;
		Pinniped1_StructN:long_name = "Individ structural N for Pinnipeds cohort 1" ;
		Pinniped1_StructN:sumtype = 0 ;
		Pinniped1_StructN:dtype = 0 ;
		Pinniped1_StructN:inwc = 0 ;
		Pinniped1_StructN:insed = 0 ;
		Pinniped1_StructN:dissol = 0 ;
		Pinniped1_StructN:decay = 0. ;
		Pinniped1_StructN:partic = 1 ;
		Pinniped1_StructN:passive = 0 ;
		Pinniped1_StructN:svel = 0. ;
		Pinniped1_StructN:xvel = 0. ;
		Pinniped1_StructN:psize = 10. ;
		Pinniped1_StructN:b_dens = 1000000000. ;
		Pinniped1_StructN:i_conc = 200000000. ;
		Pinniped1_StructN:f_conc = 200000000. ;
		Pinniped1_StructN:_FillValue = 43828. ;
	double Pinniped2_Nums(t, b, z) ;
		Pinniped2_Nums:bmtype = "tracer" ;
		Pinniped2_Nums:units = "1" ;
		Pinniped2_Nums:long_name = "Numbers of Pinnipeds cohort 2" ;
		Pinniped2_Nums:sumtype = 0 ;
		Pinniped2_Nums:dtype = 0 ;
		Pinniped2_Nums:inwc = 0 ;
		Pinniped2_Nums:insed = 0 ;
		Pinniped2_Nums:dissol = 0 ;
		Pinniped2_Nums:decay = 0. ;
		Pinniped2_Nums:partic = 1 ;
		Pinniped2_Nums:passive = 0 ;
		Pinniped2_Nums:svel = 0. ;
		Pinniped2_Nums:xvel = 0. ;
		Pinniped2_Nums:psize = 10. ;
		Pinniped2_Nums:b_dens = 1000000000. ;
		Pinniped2_Nums:i_conc = 200000000. ;
		Pinniped2_Nums:f_conc = 200000000. ;
		Pinniped2_Nums:_FillValue = 0. ;
	double Pinniped2_ResN(t, b, z) ;
		Pinniped2_ResN:bmtype = "tracer" ;
		Pinniped2_ResN:units = "mg N" ;
		Pinniped2_ResN:long_name = "Individ reserve N for Pinnipeds cohort 2" ;
		Pinniped2_ResN:sumtype = 0 ;
		Pinniped2_ResN:dtype = 0 ;
		Pinniped2_ResN:inwc = 0 ;
		Pinniped2_ResN:insed = 0 ;
		Pinniped2_ResN:dissol = 0 ;
		Pinniped2_ResN:decay = 0. ;
		Pinniped2_ResN:partic = 1 ;
		Pinniped2_ResN:passive = 0 ;
		Pinniped2_ResN:svel = 0. ;
		Pinniped2_ResN:xvel = 0. ;
		Pinniped2_ResN:psize = 10. ;
		Pinniped2_ResN:b_dens = 1000000000. ;
		Pinniped2_ResN:i_conc = 200000000. ;
		Pinniped2_ResN:f_conc = 200000000. ;
		Pinniped2_ResN:_FillValue = 340713. ;
	double Pinniped2_StructN(t, b, z) ;
		Pinniped2_StructN:bmtype = "tracer" ;
		Pinniped2_StructN:units = "mg N" ;
		Pinniped2_StructN:long_name = "Individ structural N for Pinnipeds cohort 2" ;
		Pinniped2_StructN:sumtype = 0 ;
		Pinniped2_StructN:dtype = 0 ;
		Pinniped2_StructN:inwc = 0 ;
		Pinniped2_StructN:insed = 0 ;
		Pinniped2_StructN:dissol = 0 ;
		Pinniped2_StructN:decay = 0. ;
		Pinniped2_StructN:partic = 1 ;
		Pinniped2_StructN:passive = 0 ;
		Pinniped2_StructN:svel = 0. ;
		Pinniped2_StructN:xvel = 0. ;
		Pinniped2_StructN:psize = 10. ;
		Pinniped2_StructN:b_dens = 1000000000. ;
		Pinniped2_StructN:i_conc = 200000000. ;
		Pinniped2_StructN:f_conc = 200000000. ;
		Pinniped2_StructN:_FillValue = 128571. ;
	double Pinniped3_Nums(t, b, z) ;
		Pinniped3_Nums:bmtype = "tracer" ;
		Pinniped3_Nums:units = "1" ;
		Pinniped3_Nums:long_name = "Numbers of Pinnipeds cohort 3" ;
		Pinniped3_Nums:sumtype = 0 ;
		Pinniped3_Nums:dtype = 0 ;
		Pinniped3_Nums:inwc = 0 ;
		Pinniped3_Nums:insed = 0 ;
		Pinniped3_Nums:dissol = 0 ;
		Pinniped3_Nums:decay = 0. ;
		Pinniped3_Nums:partic = 1 ;
		Pinniped3_Nums:passive = 0 ;
		Pinniped3_Nums:svel = 0. ;
		Pinniped3_Nums:xvel = 0. ;
		Pinniped3_Nums:psize = 10. ;
		Pinniped3_Nums:b_dens = 1000000000. ;
		Pinniped3_Nums:i_conc = 200000000. ;
		Pinniped3_Nums:f_conc = 200000000. ;
		Pinniped3_Nums:_FillValue = 0. ;
	double Pinniped3_ResN(t, b, z) ;
		Pinniped3_ResN:bmtype = "tracer" ;
		Pinniped3_ResN:units = "mg N" ;
		Pinniped3_ResN:long_name = "Individ reserve N for Pinnipeds cohort 3" ;
		Pinniped3_ResN:sumtype = 0 ;
		Pinniped3_ResN:dtype = 0 ;
		Pinniped3_ResN:inwc = 0 ;
		Pinniped3_ResN:insed = 0 ;
		Pinniped3_ResN:dissol = 0 ;
		Pinniped3_ResN:decay = 0. ;
		Pinniped3_ResN:partic = 1 ;
		Pinniped3_ResN:passive = 0 ;
		Pinniped3_ResN:svel = 0. ;
		Pinniped3_ResN:xvel = 0. ;
		Pinniped3_ResN:psize = 10. ;
		Pinniped3_ResN:b_dens = 1000000000. ;
		Pinniped3_ResN:i_conc = 200000000. ;
		Pinniped3_ResN:f_conc = 200000000. ;
		Pinniped3_ResN:_FillValue = 497329. ;
	double Pinniped3_StructN(t, b, z) ;
		Pinniped3_StructN:bmtype = "tracer" ;
		Pinniped3_StructN:units = "mg N" ;
		Pinniped3_StructN:long_name = "Individ structural N for Pinnipeds cohort 3" ;
		Pinniped3_StructN:sumtype = 0 ;
		Pinniped3_StructN:dtype = 0 ;
		Pinniped3_StructN:inwc = 0 ;
		Pinniped3_StructN:insed = 0 ;
		Pinniped3_StructN:dissol = 0 ;
		Pinniped3_StructN:decay = 0. ;
		Pinniped3_StructN:partic = 1 ;
		Pinniped3_StructN:passive = 0 ;
		Pinniped3_StructN:svel = 0. ;
		Pinniped3_StructN:xvel = 0. ;
		Pinniped3_StructN:psize = 10. ;
		Pinniped3_StructN:b_dens = 1000000000. ;
		Pinniped3_StructN:i_conc = 200000000. ;
		Pinniped3_StructN:f_conc = 200000000. ;
		Pinniped3_StructN:_FillValue = 187978. ;
	double Pinniped4_Nums(t, b, z) ;
		Pinniped4_Nums:bmtype = "tracer" ;
		Pinniped4_Nums:units = "1" ;
		Pinniped4_Nums:long_name = "Numbers of Pinnipeds cohort 4" ;
		Pinniped4_Nums:sumtype = 0 ;
		Pinniped4_Nums:dtype = 0 ;
		Pinniped4_Nums:inwc = 0 ;
		Pinniped4_Nums:insed = 0 ;
		Pinniped4_Nums:dissol = 0 ;
		Pinniped4_Nums:decay = 0. ;
		Pinniped4_Nums:partic = 1 ;
		Pinniped4_Nums:passive = 0 ;
		Pinniped4_Nums:svel = 0. ;
		Pinniped4_Nums:xvel = 0. ;
		Pinniped4_Nums:psize = 10. ;
		Pinniped4_Nums:b_dens = 1000000000. ;
		Pinniped4_Nums:i_conc = 200000000. ;
		Pinniped4_Nums:f_conc = 200000000. ;
		Pinniped4_Nums:_FillValue = 0. ;
	double Pinniped4_ResN(t, b, z) ;
		Pinniped4_ResN:bmtype = "tracer" ;
		Pinniped4_ResN:units = "mg N" ;
		Pinniped4_ResN:long_name = "Individ reserve N for Pinnipeds cohort 4" ;
		Pinniped4_ResN:sumtype = 0 ;
		Pinniped4_ResN:dtype = 0 ;
		Pinniped4_ResN:inwc = 0 ;
		Pinniped4_ResN:insed = 0 ;
		Pinniped4_ResN:dissol = 0 ;
		Pinniped4_ResN:decay = 0. ;
		Pinniped4_ResN:partic = 1 ;
		Pinniped4_ResN:passive = 0 ;
		Pinniped4_ResN:svel = 0. ;
		Pinniped4_ResN:xvel = 0. ;
		Pinniped4_ResN:psize = 10. ;
		Pinniped4_ResN:b_dens = 1000000000. ;
		Pinniped4_ResN:i_conc = 200000000. ;
		Pinniped4_ResN:f_conc = 200000000. ;
		Pinniped4_ResN:_FillValue = 580133. ;
	double Pinniped4_StructN(t, b, z) ;
		Pinniped4_StructN:bmtype = "tracer" ;
		Pinniped4_StructN:units = "mg N" ;
		Pinniped4_StructN:long_name = "Individ structural N for Pinnipeds cohort 4" ;
		Pinniped4_StructN:sumtype = 0 ;
		Pinniped4_StructN:dtype = 0 ;
		Pinniped4_StructN:inwc = 0 ;
		Pinniped4_StructN:insed = 0 ;
		Pinniped4_StructN:dissol = 0 ;
		Pinniped4_StructN:decay = 0. ;
		Pinniped4_StructN:partic = 1 ;
		Pinniped4_StructN:passive = 0 ;
		Pinniped4_StructN:svel = 0. ;
		Pinniped4_StructN:xvel = 0. ;
		Pinniped4_StructN:psize = 10. ;
		Pinniped4_StructN:b_dens = 1000000000. ;
		Pinniped4_StructN:i_conc = 200000000. ;
		Pinniped4_StructN:f_conc = 200000000. ;
		Pinniped4_StructN:_FillValue = 217597. ;
	double Pinniped5_Nums(t, b, z) ;
		Pinniped5_Nums:bmtype = "tracer" ;
		Pinniped5_Nums:units = "1" ;
		Pinniped5_Nums:long_name = "Numbers of Pinnipeds cohort 5" ;
		Pinniped5_Nums:sumtype = 0 ;
		Pinniped5_Nums:dtype = 0 ;
		Pinniped5_Nums:inwc = 0 ;
		Pinniped5_Nums:insed = 0 ;
		Pinniped5_Nums:dissol = 0 ;
		Pinniped5_Nums:decay = 0. ;
		Pinniped5_Nums:partic = 1 ;
		Pinniped5_Nums:passive = 0 ;
		Pinniped5_Nums:svel = 0. ;
		Pinniped5_Nums:xvel = 0. ;
		Pinniped5_Nums:psize = 10. ;
		Pinniped5_Nums:b_dens = 1000000000. ;
		Pinniped5_Nums:i_conc = 200000000. ;
		Pinniped5_Nums:f_conc = 200000000. ;
		Pinniped5_Nums:_FillValue = 0. ;
	double Pinniped5_ResN(t, b, z) ;
		Pinniped5_ResN:bmtype = "tracer" ;
		Pinniped5_ResN:units = "mg N" ;
		Pinniped5_ResN:long_name = "Individ reserve N for Pinnipeds cohort 5" ;
		Pinniped5_ResN:sumtype = 0 ;
		Pinniped5_ResN:dtype = 0 ;
		Pinniped5_ResN:inwc = 0 ;
		Pinniped5_ResN:insed = 0 ;
		Pinniped5_ResN:dissol = 0 ;
		Pinniped5_ResN:decay = 0. ;
		Pinniped5_ResN:partic = 1 ;
		Pinniped5_ResN:passive = 0 ;
		Pinniped5_ResN:svel = 0. ;
		Pinniped5_ResN:xvel = 0. ;
		Pinniped5_ResN:psize = 10. ;
		Pinniped5_ResN:b_dens = 1000000000. ;
		Pinniped5_ResN:i_conc = 200000000. ;
		Pinniped5_ResN:f_conc = 200000000. ;
		Pinniped5_ResN:_FillValue = 626536. ;
	double Pinniped5_StructN(t, b, z) ;
		Pinniped5_StructN:bmtype = "tracer" ;
		Pinniped5_StructN:units = "mg N" ;
		Pinniped5_StructN:long_name = "Individ structural N for Pinnipeds cohort 5" ;
		Pinniped5_StructN:sumtype = 0 ;
		Pinniped5_StructN:dtype = 0 ;
		Pinniped5_StructN:inwc = 0 ;
		Pinniped5_StructN:insed = 0 ;
		Pinniped5_StructN:dissol = 0 ;
		Pinniped5_StructN:decay = 0. ;
		Pinniped5_StructN:partic = 1 ;
		Pinniped5_StructN:passive = 0 ;
		Pinniped5_StructN:svel = 0. ;
		Pinniped5_StructN:xvel = 0. ;
		Pinniped5_StructN:psize = 10. ;
		Pinniped5_StructN:b_dens = 1000000000. ;
		Pinniped5_StructN:i_conc = 200000000. ;
		Pinniped5_StructN:f_conc = 200000000. ;
		Pinniped5_StructN:_FillValue = 234881. ;
	double Pinniped6_Nums(t, b, z) ;
		Pinniped6_Nums:bmtype = "tracer" ;
		Pinniped6_Nums:units = "1" ;
		Pinniped6_Nums:long_name = "Numbers of Pinnipeds cohort 6" ;
		Pinniped6_Nums:sumtype = 0 ;
		Pinniped6_Nums:dtype = 0 ;
		Pinniped6_Nums:inwc = 0 ;
		Pinniped6_Nums:insed = 0 ;
		Pinniped6_Nums:dissol = 0 ;
		Pinniped6_Nums:decay = 0. ;
		Pinniped6_Nums:partic = 1 ;
		Pinniped6_Nums:passive = 0 ;
		Pinniped6_Nums:svel = 0. ;
		Pinniped6_Nums:xvel = 0. ;
		Pinniped6_Nums:psize = 10. ;
		Pinniped6_Nums:b_dens = 1000000000. ;
		Pinniped6_Nums:i_conc = 200000000. ;
		Pinniped6_Nums:f_conc = 200000000. ;
		Pinniped6_Nums:_FillValue = 0. ;
	double Pinniped6_ResN(t, b, z) ;
		Pinniped6_ResN:bmtype = "tracer" ;
		Pinniped6_ResN:units = "mg N" ;
		Pinniped6_ResN:long_name = "Individ reserve N for Pinnipeds cohort 6" ;
		Pinniped6_ResN:sumtype = 0 ;
		Pinniped6_ResN:dtype = 0 ;
		Pinniped6_ResN:inwc = 0 ;
		Pinniped6_ResN:insed = 0 ;
		Pinniped6_ResN:dissol = 0 ;
		Pinniped6_ResN:decay = 0. ;
		Pinniped6_ResN:partic = 1 ;
		Pinniped6_ResN:passive = 0 ;
		Pinniped6_ResN:svel = 0. ;
		Pinniped6_ResN:xvel = 0. ;
		Pinniped6_ResN:psize = 10. ;
		Pinniped6_ResN:b_dens = 1000000000. ;
		Pinniped6_ResN:i_conc = 200000000. ;
		Pinniped6_ResN:f_conc = 200000000. ;
		Pinniped6_ResN:_FillValue = 633065. ;
	double Pinniped6_StructN(t, b, z) ;
		Pinniped6_StructN:bmtype = "tracer" ;
		Pinniped6_StructN:units = "mg N" ;
		Pinniped6_StructN:long_name = "Individ structural N for Pinnipeds cohort 6" ;
		Pinniped6_StructN:sumtype = 0 ;
		Pinniped6_StructN:dtype = 0 ;
		Pinniped6_StructN:inwc = 0 ;
		Pinniped6_StructN:insed = 0 ;
		Pinniped6_StructN:dissol = 0 ;
		Pinniped6_StructN:decay = 0. ;
		Pinniped6_StructN:partic = 1 ;
		Pinniped6_StructN:passive = 0 ;
		Pinniped6_StructN:svel = 0. ;
		Pinniped6_StructN:xvel = 0. ;
		Pinniped6_StructN:psize = 10. ;
		Pinniped6_StructN:b_dens = 1000000000. ;
		Pinniped6_StructN:i_conc = 200000000. ;
		Pinniped6_StructN:f_conc = 200000000. ;
		Pinniped6_StructN:_FillValue = 241892. ;
	double Pinniped7_Nums(t, b, z) ;
		Pinniped7_Nums:bmtype = "tracer" ;
		Pinniped7_Nums:units = "1" ;
		Pinniped7_Nums:long_name = "Numbers of Pinnipeds cohort 7" ;
		Pinniped7_Nums:sumtype = 0 ;
		Pinniped7_Nums:dtype = 0 ;
		Pinniped7_Nums:inwc = 0 ;
		Pinniped7_Nums:insed = 0 ;
		Pinniped7_Nums:dissol = 0 ;
		Pinniped7_Nums:decay = 0. ;
		Pinniped7_Nums:partic = 1 ;
		Pinniped7_Nums:passive = 0 ;
		Pinniped7_Nums:svel = 0. ;
		Pinniped7_Nums:xvel = 0. ;
		Pinniped7_Nums:psize = 10. ;
		Pinniped7_Nums:b_dens = 1000000000. ;
		Pinniped7_Nums:i_conc = 200000000. ;
		Pinniped7_Nums:f_conc = 200000000. ;
		Pinniped7_Nums:_FillValue = 0. ;
	double Pinniped7_ResN(t, b, z) ;
		Pinniped7_ResN:bmtype = "tracer" ;
		Pinniped7_ResN:units = "mg N" ;
		Pinniped7_ResN:long_name = "Individ reserve N for Pinnipeds cohort 7" ;
		Pinniped7_ResN:sumtype = 0 ;
		Pinniped7_ResN:dtype = 0 ;
		Pinniped7_ResN:inwc = 0 ;
		Pinniped7_ResN:insed = 0 ;
		Pinniped7_ResN:dissol = 0 ;
		Pinniped7_ResN:decay = 0. ;
		Pinniped7_ResN:partic = 1 ;
		Pinniped7_ResN:passive = 0 ;
		Pinniped7_ResN:svel = 0. ;
		Pinniped7_ResN:xvel = 0. ;
		Pinniped7_ResN:psize = 10. ;
		Pinniped7_ResN:b_dens = 1000000000. ;
		Pinniped7_ResN:i_conc = 200000000. ;
		Pinniped7_ResN:f_conc = 200000000. ;
		Pinniped7_ResN:_FillValue = 645228. ;
	double Pinniped7_StructN(t, b, z) ;
		Pinniped7_StructN:bmtype = "tracer" ;
		Pinniped7_StructN:units = "mg N" ;
		Pinniped7_StructN:long_name = "Individ structural N for Pinnipeds cohort 7" ;
		Pinniped7_StructN:sumtype = 0 ;
		Pinniped7_StructN:dtype = 0 ;
		Pinniped7_StructN:inwc = 0 ;
		Pinniped7_StructN:insed = 0 ;
		Pinniped7_StructN:dissol = 0 ;
		Pinniped7_StructN:decay = 0. ;
		Pinniped7_StructN:partic = 1 ;
		Pinniped7_StructN:passive = 0 ;
		Pinniped7_StructN:svel = 0. ;
		Pinniped7_StructN:xvel = 0. ;
		Pinniped7_StructN:psize = 10. ;
		Pinniped7_StructN:b_dens = 1000000000. ;
		Pinniped7_StructN:i_conc = 200000000. ;
		Pinniped7_StructN:f_conc = 200000000. ;
		Pinniped7_StructN:_FillValue = 243482. ;
	double Pinniped8_Nums(t, b, z) ;
		Pinniped8_Nums:bmtype = "tracer" ;
		Pinniped8_Nums:units = "1" ;
		Pinniped8_Nums:long_name = "Numbers of Pinnipeds cohort 8" ;
		Pinniped8_Nums:sumtype = 0 ;
		Pinniped8_Nums:dtype = 0 ;
		Pinniped8_Nums:inwc = 0 ;
		Pinniped8_Nums:insed = 0 ;
		Pinniped8_Nums:dissol = 0 ;
		Pinniped8_Nums:decay = 0. ;
		Pinniped8_Nums:partic = 1 ;
		Pinniped8_Nums:passive = 0 ;
		Pinniped8_Nums:svel = 0. ;
		Pinniped8_Nums:xvel = 0. ;
		Pinniped8_Nums:psize = 10. ;
		Pinniped8_Nums:b_dens = 1000000000. ;
		Pinniped8_Nums:i_conc = 200000000. ;
		Pinniped8_Nums:f_conc = 200000000. ;
		Pinniped8_Nums:_FillValue = 0. ;
	double Pinniped8_ResN(t, b, z) ;
		Pinniped8_ResN:bmtype = "tracer" ;
		Pinniped8_ResN:units = "mg N" ;
		Pinniped8_ResN:long_name = "Individ reserve N for Pinnipeds cohort 8" ;
		Pinniped8_ResN:sumtype = 0 ;
		Pinniped8_ResN:dtype = 0 ;
		Pinniped8_ResN:inwc = 0 ;
		Pinniped8_ResN:insed = 0 ;
		Pinniped8_ResN:dissol = 0 ;
		Pinniped8_ResN:decay = 0. ;
		Pinniped8_ResN:partic = 1 ;
		Pinniped8_ResN:passive = 0 ;
		Pinniped8_ResN:svel = 0. ;
		Pinniped8_ResN:xvel = 0. ;
		Pinniped8_ResN:psize = 10. ;
		Pinniped8_ResN:b_dens = 1000000000. ;
		Pinniped8_ResN:i_conc = 200000000. ;
		Pinniped8_ResN:f_conc = 200000000. ;
		Pinniped8_ResN:_FillValue = 650743. ;
	double Pinniped8_StructN(t, b, z) ;
		Pinniped8_StructN:bmtype = "tracer" ;
		Pinniped8_StructN:units = "mg N" ;
		Pinniped8_StructN:long_name = "Individ structural N for Pinnipeds cohort 8" ;
		Pinniped8_StructN:sumtype = 0 ;
		Pinniped8_StructN:dtype = 0 ;
		Pinniped8_StructN:inwc = 0 ;
		Pinniped8_StructN:insed = 0 ;
		Pinniped8_StructN:dissol = 0 ;
		Pinniped8_StructN:decay = 0. ;
		Pinniped8_StructN:partic = 1 ;
		Pinniped8_StructN:passive = 0 ;
		Pinniped8_StructN:svel = 0. ;
		Pinniped8_StructN:xvel = 0. ;
		Pinniped8_StructN:psize = 10. ;
		Pinniped8_StructN:b_dens = 1000000000. ;
		Pinniped8_StructN:i_conc = 200000000. ;
		Pinniped8_StructN:f_conc = 200000000. ;
		Pinniped8_StructN:_FillValue = 245563. ;
	double Pinniped9_Nums(t, b, z) ;
		Pinniped9_Nums:bmtype = "tracer" ;
		Pinniped9_Nums:units = "1" ;
		Pinniped9_Nums:long_name = "Numbers of Pinnipeds cohort 9" ;
		Pinniped9_Nums:sumtype = 0 ;
		Pinniped9_Nums:dtype = 0 ;
		Pinniped9_Nums:inwc = 0 ;
		Pinniped9_Nums:insed = 0 ;
		Pinniped9_Nums:dissol = 0 ;
		Pinniped9_Nums:decay = 0. ;
		Pinniped9_Nums:partic = 1 ;
		Pinniped9_Nums:passive = 0 ;
		Pinniped9_Nums:svel = 0. ;
		Pinniped9_Nums:xvel = 0. ;
		Pinniped9_Nums:psize = 10. ;
		Pinniped9_Nums:b_dens = 1000000000. ;
		Pinniped9_Nums:i_conc = 200000000. ;
		Pinniped9_Nums:f_conc = 200000000. ;
		Pinniped9_Nums:_FillValue = 0. ;
	double Pinniped9_ResN(t, b, z) ;
		Pinniped9_ResN:bmtype = "tracer" ;
		Pinniped9_ResN:units = "mg N" ;
		Pinniped9_ResN:long_name = "Individ reserve N for Pinnipeds cohort 9" ;
		Pinniped9_ResN:sumtype = 0 ;
		Pinniped9_ResN:dtype = 0 ;
		Pinniped9_ResN:inwc = 0 ;
		Pinniped9_ResN:insed = 0 ;
		Pinniped9_ResN:dissol = 0 ;
		Pinniped9_ResN:decay = 0. ;
		Pinniped9_ResN:partic = 1 ;
		Pinniped9_ResN:passive = 0 ;
		Pinniped9_ResN:svel = 0. ;
		Pinniped9_ResN:xvel = 0. ;
		Pinniped9_ResN:psize = 10. ;
		Pinniped9_ResN:b_dens = 1000000000. ;
		Pinniped9_ResN:i_conc = 200000000. ;
		Pinniped9_ResN:f_conc = 200000000. ;
		Pinniped9_ResN:_FillValue = 653231. ;
	double Pinniped9_StructN(t, b, z) ;
		Pinniped9_StructN:bmtype = "tracer" ;
		Pinniped9_StructN:units = "mg N" ;
		Pinniped9_StructN:long_name = "Individ structural N for Pinnipeds cohort 9" ;
		Pinniped9_StructN:sumtype = 0 ;
		Pinniped9_StructN:dtype = 0 ;
		Pinniped9_StructN:inwc = 0 ;
		Pinniped9_StructN:insed = 0 ;
		Pinniped9_StructN:dissol = 0 ;
		Pinniped9_StructN:decay = 0. ;
		Pinniped9_StructN:partic = 1 ;
		Pinniped9_StructN:passive = 0 ;
		Pinniped9_StructN:svel = 0. ;
		Pinniped9_StructN:xvel = 0. ;
		Pinniped9_StructN:psize = 10. ;
		Pinniped9_StructN:b_dens = 1000000000. ;
		Pinniped9_StructN:i_conc = 200000000. ;
		Pinniped9_StructN:f_conc = 200000000. ;
		Pinniped9_StructN:_FillValue = 246502. ;
	double Pinniped10_Nums(t, b, z) ;
		Pinniped10_Nums:bmtype = "tracer" ;
		Pinniped10_Nums:units = "1" ;
		Pinniped10_Nums:long_name = "Numbers of Pinnipeds cohort 10" ;
		Pinniped10_Nums:sumtype = 0 ;
		Pinniped10_Nums:dtype = 0 ;
		Pinniped10_Nums:inwc = 0 ;
		Pinniped10_Nums:insed = 0 ;
		Pinniped10_Nums:dissol = 0 ;
		Pinniped10_Nums:decay = 0. ;
		Pinniped10_Nums:partic = 1 ;
		Pinniped10_Nums:passive = 0 ;
		Pinniped10_Nums:svel = 0. ;
		Pinniped10_Nums:xvel = 0. ;
		Pinniped10_Nums:psize = 10. ;
		Pinniped10_Nums:b_dens = 1000000000. ;
		Pinniped10_Nums:i_conc = 200000000. ;
		Pinniped10_Nums:f_conc = 200000000. ;
		Pinniped10_Nums:_FillValue = 0. ;
	double Pinniped10_ResN(t, b, z) ;
		Pinniped10_ResN:bmtype = "tracer" ;
		Pinniped10_ResN:units = "mg N" ;
		Pinniped10_ResN:long_name = "Individ reserve N for Pinnipeds cohort 10" ;
		Pinniped10_ResN:sumtype = 0 ;
		Pinniped10_ResN:dtype = 0 ;
		Pinniped10_ResN:inwc = 0 ;
		Pinniped10_ResN:insed = 0 ;
		Pinniped10_ResN:dissol = 0 ;
		Pinniped10_ResN:decay = 0. ;
		Pinniped10_ResN:partic = 1 ;
		Pinniped10_ResN:passive = 0 ;
		Pinniped10_ResN:svel = 0. ;
		Pinniped10_ResN:xvel = 0. ;
		Pinniped10_ResN:psize = 10. ;
		Pinniped10_ResN:b_dens = 1000000000. ;
		Pinniped10_ResN:i_conc = 200000000. ;
		Pinniped10_ResN:f_conc = 200000000. ;
		Pinniped10_ResN:_FillValue = 654351. ;
	double Pinniped10_StructN(t, b, z) ;
		Pinniped10_StructN:bmtype = "tracer" ;
		Pinniped10_StructN:units = "mg N" ;
		Pinniped10_StructN:long_name = "Individ structural N for Pinnipeds cohort 10" ;
		Pinniped10_StructN:sumtype = 0 ;
		Pinniped10_StructN:dtype = 0 ;
		Pinniped10_StructN:inwc = 0 ;
		Pinniped10_StructN:insed = 0 ;
		Pinniped10_StructN:dissol = 0 ;
		Pinniped10_StructN:decay = 0. ;
		Pinniped10_StructN:partic = 1 ;
		Pinniped10_StructN:passive = 0 ;
		Pinniped10_StructN:svel = 0. ;
		Pinniped10_StructN:xvel = 0. ;
		Pinniped10_StructN:psize = 10. ;
		Pinniped10_StructN:b_dens = 1000000000. ;
		Pinniped10_StructN:i_conc = 200000000. ;
		Pinniped10_StructN:f_conc = 200000000. ;
		Pinniped10_StructN:_FillValue = 246925. ;
	double Whale_Baleen1_Nums(t, b, z) ;
		Whale_Baleen1_Nums:bmtype = "tracer" ;
		Whale_Baleen1_Nums:units = "1" ;
		Whale_Baleen1_Nums:long_name = "Numbers of Baleen whales cohort 1" ;
		Whale_Baleen1_Nums:sumtype = 0 ;
		Whale_Baleen1_Nums:dtype = 0 ;
		Whale_Baleen1_Nums:inwc = 0 ;
		Whale_Baleen1_Nums:insed = 0 ;
		Whale_Baleen1_Nums:dissol = 0 ;
		Whale_Baleen1_Nums:decay = 0. ;
		Whale_Baleen1_Nums:partic = 1 ;
		Whale_Baleen1_Nums:passive = 0 ;
		Whale_Baleen1_Nums:svel = 0. ;
		Whale_Baleen1_Nums:xvel = 0. ;
		Whale_Baleen1_Nums:psize = 10. ;
		Whale_Baleen1_Nums:b_dens = 1000000000. ;
		Whale_Baleen1_Nums:i_conc = 200000000. ;
		Whale_Baleen1_Nums:f_conc = 200000000. ;
		Whale_Baleen1_Nums:_FillValue = 0. ;
	double Whale_Baleen1_ResN(t, b, z) ;
		Whale_Baleen1_ResN:bmtype = "tracer" ;
		Whale_Baleen1_ResN:units = "mg N" ;
		Whale_Baleen1_ResN:long_name = "Individ reserve N for Baleen whales cohort 1" ;
		Whale_Baleen1_ResN:sumtype = 0 ;
		Whale_Baleen1_ResN:dtype = 0 ;
		Whale_Baleen1_ResN:inwc = 0 ;
		Whale_Baleen1_ResN:insed = 0 ;
		Whale_Baleen1_ResN:dissol = 0 ;
		Whale_Baleen1_ResN:decay = 0. ;
		Whale_Baleen1_ResN:partic = 1 ;
		Whale_Baleen1_ResN:passive = 0 ;
		Whale_Baleen1_ResN:svel = 0. ;
		Whale_Baleen1_ResN:xvel = 0. ;
		Whale_Baleen1_ResN:psize = 10. ;
		Whale_Baleen1_ResN:b_dens = 1000000000. ;
		Whale_Baleen1_ResN:i_conc = 200000000. ;
		Whale_Baleen1_ResN:f_conc = 200000000. ;
		Whale_Baleen1_ResN:_FillValue = 195672539.7 ;
	double Whale_Baleen1_StructN(t, b, z) ;
		Whale_Baleen1_StructN:bmtype = "tracer" ;
		Whale_Baleen1_StructN:units = "mg N" ;
		Whale_Baleen1_StructN:long_name = "Individ structural N for Baleen whales cohort 1" ;
		Whale_Baleen1_StructN:sumtype = 0 ;
		Whale_Baleen1_StructN:dtype = 0 ;
		Whale_Baleen1_StructN:inwc = 0 ;
		Whale_Baleen1_StructN:insed = 0 ;
		Whale_Baleen1_StructN:dissol = 0 ;
		Whale_Baleen1_StructN:decay = 0. ;
		Whale_Baleen1_StructN:partic = 1 ;
		Whale_Baleen1_StructN:passive = 0 ;
		Whale_Baleen1_StructN:svel = 0. ;
		Whale_Baleen1_StructN:xvel = 0. ;
		Whale_Baleen1_StructN:psize = 10. ;
		Whale_Baleen1_StructN:b_dens = 1000000000. ;
		Whale_Baleen1_StructN:i_conc = 200000000. ;
		Whale_Baleen1_StructN:f_conc = 200000000. ;
		Whale_Baleen1_StructN:_FillValue = 73838694.2 ;
	double Whale_Baleen2_Nums(t, b, z) ;
		Whale_Baleen2_Nums:bmtype = "tracer" ;
		Whale_Baleen2_Nums:units = "1" ;
		Whale_Baleen2_Nums:long_name = "Numbers of Baleen whales cohort 2" ;
		Whale_Baleen2_Nums:sumtype = 0 ;
		Whale_Baleen2_Nums:dtype = 0 ;
		Whale_Baleen2_Nums:inwc = 0 ;
		Whale_Baleen2_Nums:insed = 0 ;
		Whale_Baleen2_Nums:dissol = 0 ;
		Whale_Baleen2_Nums:decay = 0. ;
		Whale_Baleen2_Nums:partic = 1 ;
		Whale_Baleen2_Nums:passive = 0 ;
		Whale_Baleen2_Nums:svel = 0. ;
		Whale_Baleen2_Nums:xvel = 0. ;
		Whale_Baleen2_Nums:psize = 10. ;
		Whale_Baleen2_Nums:b_dens = 1000000000. ;
		Whale_Baleen2_Nums:i_conc = 200000000. ;
		Whale_Baleen2_Nums:f_conc = 200000000. ;
		Whale_Baleen2_Nums:_FillValue = 0. ;
	double Whale_Baleen2_ResN(t, b, z) ;
		Whale_Baleen2_ResN:bmtype = "tracer" ;
		Whale_Baleen2_ResN:units = "mg N" ;
		Whale_Baleen2_ResN:long_name = "Individ reserve N for Baleen whales cohort 2" ;
		Whale_Baleen2_ResN:sumtype = 0 ;
		Whale_Baleen2_ResN:dtype = 0 ;
		Whale_Baleen2_ResN:inwc = 0 ;
		Whale_Baleen2_ResN:insed = 0 ;
		Whale_Baleen2_ResN:dissol = 0 ;
		Whale_Baleen2_ResN:decay = 0. ;
		Whale_Baleen2_ResN:partic = 1 ;
		Whale_Baleen2_ResN:passive = 0 ;
		Whale_Baleen2_ResN:svel = 0. ;
		Whale_Baleen2_ResN:xvel = 0. ;
		Whale_Baleen2_ResN:psize = 10. ;
		Whale_Baleen2_ResN:b_dens = 1000000000. ;
		Whale_Baleen2_ResN:i_conc = 200000000. ;
		Whale_Baleen2_ResN:f_conc = 200000000. ;
		Whale_Baleen2_ResN:_FillValue = 218131986.6 ;
	double Whale_Baleen2_StructN(t, b, z) ;
		Whale_Baleen2_StructN:bmtype = "tracer" ;
		Whale_Baleen2_StructN:units = "mg N" ;
		Whale_Baleen2_StructN:long_name = "Individ structural N for Baleen whales cohort 2" ;
		Whale_Baleen2_StructN:sumtype = 0 ;
		Whale_Baleen2_StructN:dtype = 0 ;
		Whale_Baleen2_StructN:inwc = 0 ;
		Whale_Baleen2_StructN:insed = 0 ;
		Whale_Baleen2_StructN:dissol = 0 ;
		Whale_Baleen2_StructN:decay = 0. ;
		Whale_Baleen2_StructN:partic = 1 ;
		Whale_Baleen2_StructN:passive = 0 ;
		Whale_Baleen2_StructN:svel = 0. ;
		Whale_Baleen2_StructN:xvel = 0. ;
		Whale_Baleen2_StructN:psize = 10. ;
		Whale_Baleen2_StructN:b_dens = 1000000000. ;
		Whale_Baleen2_StructN:i_conc = 200000000. ;
		Whale_Baleen2_StructN:f_conc = 200000000. ;
		Whale_Baleen2_StructN:_FillValue = 82313957.2 ;
	double Whale_Baleen3_Nums(t, b, z) ;
		Whale_Baleen3_Nums:bmtype = "tracer" ;
		Whale_Baleen3_Nums:units = "1" ;
		Whale_Baleen3_Nums:long_name = "Numbers of Baleen whales cohort 3" ;
		Whale_Baleen3_Nums:sumtype = 0 ;
		Whale_Baleen3_Nums:dtype = 0 ;
		Whale_Baleen3_Nums:inwc = 0 ;
		Whale_Baleen3_Nums:insed = 0 ;
		Whale_Baleen3_Nums:dissol = 0 ;
		Whale_Baleen3_Nums:decay = 0. ;
		Whale_Baleen3_Nums:partic = 1 ;
		Whale_Baleen3_Nums:passive = 0 ;
		Whale_Baleen3_Nums:svel = 0. ;
		Whale_Baleen3_Nums:xvel = 0. ;
		Whale_Baleen3_Nums:psize = 10. ;
		Whale_Baleen3_Nums:b_dens = 1000000000. ;
		Whale_Baleen3_Nums:i_conc = 200000000. ;
		Whale_Baleen3_Nums:f_conc = 200000000. ;
		Whale_Baleen3_Nums:_FillValue = 0. ;
	double Whale_Baleen3_ResN(t, b, z) ;
		Whale_Baleen3_ResN:bmtype = "tracer" ;
		Whale_Baleen3_ResN:units = "mg N" ;
		Whale_Baleen3_ResN:long_name = "Individ reserve N for Baleen whales cohort 3" ;
		Whale_Baleen3_ResN:sumtype = 0 ;
		Whale_Baleen3_ResN:dtype = 0 ;
		Whale_Baleen3_ResN:inwc = 0 ;
		Whale_Baleen3_ResN:insed = 0 ;
		Whale_Baleen3_ResN:dissol = 0 ;
		Whale_Baleen3_ResN:decay = 0. ;
		Whale_Baleen3_ResN:partic = 1 ;
		Whale_Baleen3_ResN:passive = 0 ;
		Whale_Baleen3_ResN:svel = 0. ;
		Whale_Baleen3_ResN:xvel = 0. ;
		Whale_Baleen3_ResN:psize = 10. ;
		Whale_Baleen3_ResN:b_dens = 1000000000. ;
		Whale_Baleen3_ResN:i_conc = 200000000. ;
		Whale_Baleen3_ResN:f_conc = 200000000. ;
		Whale_Baleen3_ResN:_FillValue = 218991666.7 ;
	double Whale_Baleen3_StructN(t, b, z) ;
		Whale_Baleen3_StructN:bmtype = "tracer" ;
		Whale_Baleen3_StructN:units = "mg N" ;
		Whale_Baleen3_StructN:long_name = "Individ structural N for Baleen whales cohort 3" ;
		Whale_Baleen3_StructN:sumtype = 0 ;
		Whale_Baleen3_StructN:dtype = 0 ;
		Whale_Baleen3_StructN:inwc = 0 ;
		Whale_Baleen3_StructN:insed = 0 ;
		Whale_Baleen3_StructN:dissol = 0 ;
		Whale_Baleen3_StructN:decay = 0. ;
		Whale_Baleen3_StructN:partic = 1 ;
		Whale_Baleen3_StructN:passive = 0 ;
		Whale_Baleen3_StructN:svel = 0. ;
		Whale_Baleen3_StructN:xvel = 0. ;
		Whale_Baleen3_StructN:psize = 10. ;
		Whale_Baleen3_StructN:b_dens = 1000000000. ;
		Whale_Baleen3_StructN:i_conc = 200000000. ;
		Whale_Baleen3_StructN:f_conc = 200000000. ;
		Whale_Baleen3_StructN:_FillValue = 82638364.7 ;
	double Whale_Baleen4_Nums(t, b, z) ;
		Whale_Baleen4_Nums:bmtype = "tracer" ;
		Whale_Baleen4_Nums:units = "1" ;
		Whale_Baleen4_Nums:long_name = "Numbers of Baleen whales cohort 4" ;
		Whale_Baleen4_Nums:sumtype = 0 ;
		Whale_Baleen4_Nums:dtype = 0 ;
		Whale_Baleen4_Nums:inwc = 0 ;
		Whale_Baleen4_Nums:insed = 0 ;
		Whale_Baleen4_Nums:dissol = 0 ;
		Whale_Baleen4_Nums:decay = 0. ;
		Whale_Baleen4_Nums:partic = 1 ;
		Whale_Baleen4_Nums:passive = 0 ;
		Whale_Baleen4_Nums:svel = 0. ;
		Whale_Baleen4_Nums:xvel = 0. ;
		Whale_Baleen4_Nums:psize = 10. ;
		Whale_Baleen4_Nums:b_dens = 1000000000. ;
		Whale_Baleen4_Nums:i_conc = 200000000. ;
		Whale_Baleen4_Nums:f_conc = 200000000. ;
		Whale_Baleen4_Nums:_FillValue = 0. ;
	double Whale_Baleen4_ResN(t, b, z) ;
		Whale_Baleen4_ResN:bmtype = "tracer" ;
		Whale_Baleen4_ResN:units = "mg N" ;
		Whale_Baleen4_ResN:long_name = "Individ reserve N for Baleen whales cohort 4" ;
		Whale_Baleen4_ResN:sumtype = 0 ;
		Whale_Baleen4_ResN:dtype = 0 ;
		Whale_Baleen4_ResN:inwc = 0 ;
		Whale_Baleen4_ResN:insed = 0 ;
		Whale_Baleen4_ResN:dissol = 0 ;
		Whale_Baleen4_ResN:decay = 0. ;
		Whale_Baleen4_ResN:partic = 1 ;
		Whale_Baleen4_ResN:passive = 0 ;
		Whale_Baleen4_ResN:svel = 0. ;
		Whale_Baleen4_ResN:xvel = 0. ;
		Whale_Baleen4_ResN:psize = 10. ;
		Whale_Baleen4_ResN:b_dens = 1000000000. ;
		Whale_Baleen4_ResN:i_conc = 200000000. ;
		Whale_Baleen4_ResN:f_conc = 200000000. ;
		Whale_Baleen4_ResN:_FillValue = 219023417.5 ;
	double Whale_Baleen4_StructN(t, b, z) ;
		Whale_Baleen4_StructN:bmtype = "tracer" ;
		Whale_Baleen4_StructN:units = "mg N" ;
		Whale_Baleen4_StructN:long_name = "Individ structural N for Baleen whales cohort 4" ;
		Whale_Baleen4_StructN:sumtype = 0 ;
		Whale_Baleen4_StructN:dtype = 0 ;
		Whale_Baleen4_StructN:inwc = 0 ;
		Whale_Baleen4_StructN:insed = 0 ;
		Whale_Baleen4_StructN:dissol = 0 ;
		Whale_Baleen4_StructN:decay = 0. ;
		Whale_Baleen4_StructN:partic = 1 ;
		Whale_Baleen4_StructN:passive = 0 ;
		Whale_Baleen4_StructN:svel = 0. ;
		Whale_Baleen4_StructN:xvel = 0. ;
		Whale_Baleen4_StructN:psize = 10. ;
		Whale_Baleen4_StructN:b_dens = 1000000000. ;
		Whale_Baleen4_StructN:i_conc = 200000000. ;
		Whale_Baleen4_StructN:f_conc = 200000000. ;
		Whale_Baleen4_StructN:_FillValue = 82650346.2 ;
	double Whale_Baleen5_Nums(t, b, z) ;
		Whale_Baleen5_Nums:bmtype = "tracer" ;
		Whale_Baleen5_Nums:units = "1" ;
		Whale_Baleen5_Nums:long_name = "Numbers of Baleen whales cohort 5" ;
		Whale_Baleen5_Nums:sumtype = 0 ;
		Whale_Baleen5_Nums:dtype = 0 ;
		Whale_Baleen5_Nums:inwc = 0 ;
		Whale_Baleen5_Nums:insed = 0 ;
		Whale_Baleen5_Nums:dissol = 0 ;
		Whale_Baleen5_Nums:decay = 0. ;
		Whale_Baleen5_Nums:partic = 1 ;
		Whale_Baleen5_Nums:passive = 0 ;
		Whale_Baleen5_Nums:svel = 0. ;
		Whale_Baleen5_Nums:xvel = 0. ;
		Whale_Baleen5_Nums:psize = 10. ;
		Whale_Baleen5_Nums:b_dens = 1000000000. ;
		Whale_Baleen5_Nums:i_conc = 200000000. ;
		Whale_Baleen5_Nums:f_conc = 200000000. ;
		Whale_Baleen5_Nums:_FillValue = 0. ;
	double Whale_Baleen5_ResN(t, b, z) ;
		Whale_Baleen5_ResN:bmtype = "tracer" ;
		Whale_Baleen5_ResN:units = "mg N" ;
		Whale_Baleen5_ResN:long_name = "Individ reserve N for Baleen whales cohort 5" ;
		Whale_Baleen5_ResN:sumtype = 0 ;
		Whale_Baleen5_ResN:dtype = 0 ;
		Whale_Baleen5_ResN:inwc = 0 ;
		Whale_Baleen5_ResN:insed = 0 ;
		Whale_Baleen5_ResN:dissol = 0 ;
		Whale_Baleen5_ResN:decay = 0. ;
		Whale_Baleen5_ResN:partic = 1 ;
		Whale_Baleen5_ResN:passive = 0 ;
		Whale_Baleen5_ResN:svel = 0. ;
		Whale_Baleen5_ResN:xvel = 0. ;
		Whale_Baleen5_ResN:psize = 10. ;
		Whale_Baleen5_ResN:b_dens = 1000000000. ;
		Whale_Baleen5_ResN:i_conc = 200000000. ;
		Whale_Baleen5_ResN:f_conc = 200000000. ;
		Whale_Baleen5_ResN:_FillValue = 219024588.7 ;
	double Whale_Baleen5_StructN(t, b, z) ;
		Whale_Baleen5_StructN:bmtype = "tracer" ;
		Whale_Baleen5_StructN:units = "mg N" ;
		Whale_Baleen5_StructN:long_name = "Individ structural N for Baleen whales cohort 5" ;
		Whale_Baleen5_StructN:sumtype = 0 ;
		Whale_Baleen5_StructN:dtype = 0 ;
		Whale_Baleen5_StructN:inwc = 0 ;
		Whale_Baleen5_StructN:insed = 0 ;
		Whale_Baleen5_StructN:dissol = 0 ;
		Whale_Baleen5_StructN:decay = 0. ;
		Whale_Baleen5_StructN:partic = 1 ;
		Whale_Baleen5_StructN:passive = 0 ;
		Whale_Baleen5_StructN:svel = 0. ;
		Whale_Baleen5_StructN:xvel = 0. ;
		Whale_Baleen5_StructN:psize = 10. ;
		Whale_Baleen5_StructN:b_dens = 1000000000. ;
		Whale_Baleen5_StructN:i_conc = 200000000. ;
		Whale_Baleen5_StructN:f_conc = 200000000. ;
		Whale_Baleen5_StructN:_FillValue = 82650788.1 ;
	double Whale_Baleen6_Nums(t, b, z) ;
		Whale_Baleen6_Nums:bmtype = "tracer" ;
		Whale_Baleen6_Nums:units = "1" ;
		Whale_Baleen6_Nums:long_name = "Numbers of Baleen whales cohort 6" ;
		Whale_Baleen6_Nums:sumtype = 0 ;
		Whale_Baleen6_Nums:dtype = 0 ;
		Whale_Baleen6_Nums:inwc = 0 ;
		Whale_Baleen6_Nums:insed = 0 ;
		Whale_Baleen6_Nums:dissol = 0 ;
		Whale_Baleen6_Nums:decay = 0. ;
		Whale_Baleen6_Nums:partic = 1 ;
		Whale_Baleen6_Nums:passive = 0 ;
		Whale_Baleen6_Nums:svel = 0. ;
		Whale_Baleen6_Nums:xvel = 0. ;
		Whale_Baleen6_Nums:psize = 10. ;
		Whale_Baleen6_Nums:b_dens = 1000000000. ;
		Whale_Baleen6_Nums:i_conc = 200000000. ;
		Whale_Baleen6_Nums:f_conc = 200000000. ;
		Whale_Baleen6_Nums:_FillValue = 0. ;
	double Whale_Baleen6_ResN(t, b, z) ;
		Whale_Baleen6_ResN:bmtype = "tracer" ;
		Whale_Baleen6_ResN:units = "mg N" ;
		Whale_Baleen6_ResN:long_name = "Individ reserve N for Baleen whales cohort 6" ;
		Whale_Baleen6_ResN:sumtype = 0 ;
		Whale_Baleen6_ResN:dtype = 0 ;
		Whale_Baleen6_ResN:inwc = 0 ;
		Whale_Baleen6_ResN:insed = 0 ;
		Whale_Baleen6_ResN:dissol = 0 ;
		Whale_Baleen6_ResN:decay = 0. ;
		Whale_Baleen6_ResN:partic = 1 ;
		Whale_Baleen6_ResN:passive = 0 ;
		Whale_Baleen6_ResN:svel = 0. ;
		Whale_Baleen6_ResN:xvel = 0. ;
		Whale_Baleen6_ResN:psize = 10. ;
		Whale_Baleen6_ResN:b_dens = 1000000000. ;
		Whale_Baleen6_ResN:i_conc = 200000000. ;
		Whale_Baleen6_ResN:f_conc = 200000000. ;
		Whale_Baleen6_ResN:_FillValue = 219024631.8 ;
	double Whale_Baleen6_StructN(t, b, z) ;
		Whale_Baleen6_StructN:bmtype = "tracer" ;
		Whale_Baleen6_StructN:units = "mg N" ;
		Whale_Baleen6_StructN:long_name = "Individ structural N for Baleen whales cohort 6" ;
		Whale_Baleen6_StructN:sumtype = 0 ;
		Whale_Baleen6_StructN:dtype = 0 ;
		Whale_Baleen6_StructN:inwc = 0 ;
		Whale_Baleen6_StructN:insed = 0 ;
		Whale_Baleen6_StructN:dissol = 0 ;
		Whale_Baleen6_StructN:decay = 0. ;
		Whale_Baleen6_StructN:partic = 1 ;
		Whale_Baleen6_StructN:passive = 0 ;
		Whale_Baleen6_StructN:svel = 0. ;
		Whale_Baleen6_StructN:xvel = 0. ;
		Whale_Baleen6_StructN:psize = 10. ;
		Whale_Baleen6_StructN:b_dens = 1000000000. ;
		Whale_Baleen6_StructN:i_conc = 200000000. ;
		Whale_Baleen6_StructN:f_conc = 200000000. ;
		Whale_Baleen6_StructN:_FillValue = 82650804.4 ;
	double Whale_Baleen7_Nums(t, b, z) ;
		Whale_Baleen7_Nums:bmtype = "tracer" ;
		Whale_Baleen7_Nums:units = "1" ;
		Whale_Baleen7_Nums:long_name = "Numbers of Baleen whales cohort 7" ;
		Whale_Baleen7_Nums:sumtype = 0 ;
		Whale_Baleen7_Nums:dtype = 0 ;
		Whale_Baleen7_Nums:inwc = 0 ;
		Whale_Baleen7_Nums:insed = 0 ;
		Whale_Baleen7_Nums:dissol = 0 ;
		Whale_Baleen7_Nums:decay = 0. ;
		Whale_Baleen7_Nums:partic = 1 ;
		Whale_Baleen7_Nums:passive = 0 ;
		Whale_Baleen7_Nums:svel = 0. ;
		Whale_Baleen7_Nums:xvel = 0. ;
		Whale_Baleen7_Nums:psize = 10. ;
		Whale_Baleen7_Nums:b_dens = 1000000000. ;
		Whale_Baleen7_Nums:i_conc = 200000000. ;
		Whale_Baleen7_Nums:f_conc = 200000000. ;
		Whale_Baleen7_Nums:_FillValue = 0. ;
	double Whale_Baleen7_ResN(t, b, z) ;
		Whale_Baleen7_ResN:bmtype = "tracer" ;
		Whale_Baleen7_ResN:units = "mg N" ;
		Whale_Baleen7_ResN:long_name = "Individ reserve N for Baleen whales cohort 7" ;
		Whale_Baleen7_ResN:sumtype = 0 ;
		Whale_Baleen7_ResN:dtype = 0 ;
		Whale_Baleen7_ResN:inwc = 0 ;
		Whale_Baleen7_ResN:insed = 0 ;
		Whale_Baleen7_ResN:dissol = 0 ;
		Whale_Baleen7_ResN:decay = 0. ;
		Whale_Baleen7_ResN:partic = 1 ;
		Whale_Baleen7_ResN:passive = 0 ;
		Whale_Baleen7_ResN:svel = 0. ;
		Whale_Baleen7_ResN:xvel = 0. ;
		Whale_Baleen7_ResN:psize = 10. ;
		Whale_Baleen7_ResN:b_dens = 1000000000. ;
		Whale_Baleen7_ResN:i_conc = 200000000. ;
		Whale_Baleen7_ResN:f_conc = 200000000. ;
		Whale_Baleen7_ResN:_FillValue = 219024633. ;
	double Whale_Baleen7_StructN(t, b, z) ;
		Whale_Baleen7_StructN:bmtype = "tracer" ;
		Whale_Baleen7_StructN:units = "mg N" ;
		Whale_Baleen7_StructN:long_name = "Individ structural N for Baleen whales cohort 7" ;
		Whale_Baleen7_StructN:sumtype = 0 ;
		Whale_Baleen7_StructN:dtype = 0 ;
		Whale_Baleen7_StructN:inwc = 0 ;
		Whale_Baleen7_StructN:insed = 0 ;
		Whale_Baleen7_StructN:dissol = 0 ;
		Whale_Baleen7_StructN:decay = 0. ;
		Whale_Baleen7_StructN:partic = 1 ;
		Whale_Baleen7_StructN:passive = 0 ;
		Whale_Baleen7_StructN:svel = 0. ;
		Whale_Baleen7_StructN:xvel = 0. ;
		Whale_Baleen7_StructN:psize = 10. ;
		Whale_Baleen7_StructN:b_dens = 1000000000. ;
		Whale_Baleen7_StructN:i_conc = 200000000. ;
		Whale_Baleen7_StructN:f_conc = 200000000. ;
		Whale_Baleen7_StructN:_FillValue = 82650805. ;
	double Whale_Baleen8_Nums(t, b, z) ;
		Whale_Baleen8_Nums:bmtype = "tracer" ;
		Whale_Baleen8_Nums:units = "1" ;
		Whale_Baleen8_Nums:long_name = "Numbers of Baleen whales cohort 8" ;
		Whale_Baleen8_Nums:sumtype = 0 ;
		Whale_Baleen8_Nums:dtype = 0 ;
		Whale_Baleen8_Nums:inwc = 0 ;
		Whale_Baleen8_Nums:insed = 0 ;
		Whale_Baleen8_Nums:dissol = 0 ;
		Whale_Baleen8_Nums:decay = 0. ;
		Whale_Baleen8_Nums:partic = 1 ;
		Whale_Baleen8_Nums:passive = 0 ;
		Whale_Baleen8_Nums:svel = 0. ;
		Whale_Baleen8_Nums:xvel = 0. ;
		Whale_Baleen8_Nums:psize = 10. ;
		Whale_Baleen8_Nums:b_dens = 1000000000. ;
		Whale_Baleen8_Nums:i_conc = 200000000. ;
		Whale_Baleen8_Nums:f_conc = 200000000. ;
		Whale_Baleen8_Nums:_FillValue = 0. ;
	double Whale_Baleen8_ResN(t, b, z) ;
		Whale_Baleen8_ResN:bmtype = "tracer" ;
		Whale_Baleen8_ResN:units = "mg N" ;
		Whale_Baleen8_ResN:long_name = "Individ reserve N for Baleen whales cohort 8" ;
		Whale_Baleen8_ResN:sumtype = 0 ;
		Whale_Baleen8_ResN:dtype = 0 ;
		Whale_Baleen8_ResN:inwc = 0 ;
		Whale_Baleen8_ResN:insed = 0 ;
		Whale_Baleen8_ResN:dissol = 0 ;
		Whale_Baleen8_ResN:decay = 0. ;
		Whale_Baleen8_ResN:partic = 1 ;
		Whale_Baleen8_ResN:passive = 0 ;
		Whale_Baleen8_ResN:svel = 0. ;
		Whale_Baleen8_ResN:xvel = 0. ;
		Whale_Baleen8_ResN:psize = 10. ;
		Whale_Baleen8_ResN:b_dens = 1000000000. ;
		Whale_Baleen8_ResN:i_conc = 200000000. ;
		Whale_Baleen8_ResN:f_conc = 200000000. ;
		Whale_Baleen8_ResN:_FillValue = 219024636. ;
	double Whale_Baleen8_StructN(t, b, z) ;
		Whale_Baleen8_StructN:bmtype = "tracer" ;
		Whale_Baleen8_StructN:units = "mg N" ;
		Whale_Baleen8_StructN:long_name = "Individ structural N for Baleen whales cohort 8" ;
		Whale_Baleen8_StructN:sumtype = 0 ;
		Whale_Baleen8_StructN:dtype = 0 ;
		Whale_Baleen8_StructN:inwc = 0 ;
		Whale_Baleen8_StructN:insed = 0 ;
		Whale_Baleen8_StructN:dissol = 0 ;
		Whale_Baleen8_StructN:decay = 0. ;
		Whale_Baleen8_StructN:partic = 1 ;
		Whale_Baleen8_StructN:passive = 0 ;
		Whale_Baleen8_StructN:svel = 0. ;
		Whale_Baleen8_StructN:xvel = 0. ;
		Whale_Baleen8_StructN:psize = 10. ;
		Whale_Baleen8_StructN:b_dens = 1000000000. ;
		Whale_Baleen8_StructN:i_conc = 200000000. ;
		Whale_Baleen8_StructN:f_conc = 200000000. ;
		Whale_Baleen8_StructN:_FillValue = 82650805. ;
	double Whale_Baleen9_Nums(t, b, z) ;
		Whale_Baleen9_Nums:bmtype = "tracer" ;
		Whale_Baleen9_Nums:units = "1" ;
		Whale_Baleen9_Nums:long_name = "Numbers of Baleen whales cohort 9" ;
		Whale_Baleen9_Nums:sumtype = 0 ;
		Whale_Baleen9_Nums:dtype = 0 ;
		Whale_Baleen9_Nums:inwc = 0 ;
		Whale_Baleen9_Nums:insed = 0 ;
		Whale_Baleen9_Nums:dissol = 0 ;
		Whale_Baleen9_Nums:decay = 0. ;
		Whale_Baleen9_Nums:partic = 1 ;
		Whale_Baleen9_Nums:passive = 0 ;
		Whale_Baleen9_Nums:svel = 0. ;
		Whale_Baleen9_Nums:xvel = 0. ;
		Whale_Baleen9_Nums:psize = 10. ;
		Whale_Baleen9_Nums:b_dens = 1000000000. ;
		Whale_Baleen9_Nums:i_conc = 200000000. ;
		Whale_Baleen9_Nums:f_conc = 200000000. ;
		Whale_Baleen9_Nums:_FillValue = 0. ;
	double Whale_Baleen9_ResN(t, b, z) ;
		Whale_Baleen9_ResN:bmtype = "tracer" ;
		Whale_Baleen9_ResN:units = "mg N" ;
		Whale_Baleen9_ResN:long_name = "Individ reserve N for Baleen whales cohort 9" ;
		Whale_Baleen9_ResN:sumtype = 0 ;
		Whale_Baleen9_ResN:dtype = 0 ;
		Whale_Baleen9_ResN:inwc = 0 ;
		Whale_Baleen9_ResN:insed = 0 ;
		Whale_Baleen9_ResN:dissol = 0 ;
		Whale_Baleen9_ResN:decay = 0. ;
		Whale_Baleen9_ResN:partic = 1 ;
		Whale_Baleen9_ResN:passive = 0 ;
		Whale_Baleen9_ResN:svel = 0. ;
		Whale_Baleen9_ResN:xvel = 0. ;
		Whale_Baleen9_ResN:psize = 10. ;
		Whale_Baleen9_ResN:b_dens = 1000000000. ;
		Whale_Baleen9_ResN:i_conc = 200000000. ;
		Whale_Baleen9_ResN:f_conc = 200000000. ;
		Whale_Baleen9_ResN:_FillValue = 219024639. ;
	double Whale_Baleen9_StructN(t, b, z) ;
		Whale_Baleen9_StructN:bmtype = "tracer" ;
		Whale_Baleen9_StructN:units = "mg N" ;
		Whale_Baleen9_StructN:long_name = "Individ structural N for Baleen whales cohort 9" ;
		Whale_Baleen9_StructN:sumtype = 0 ;
		Whale_Baleen9_StructN:dtype = 0 ;
		Whale_Baleen9_StructN:inwc = 0 ;
		Whale_Baleen9_StructN:insed = 0 ;
		Whale_Baleen9_StructN:dissol = 0 ;
		Whale_Baleen9_StructN:decay = 0. ;
		Whale_Baleen9_StructN:partic = 1 ;
		Whale_Baleen9_StructN:passive = 0 ;
		Whale_Baleen9_StructN:svel = 0. ;
		Whale_Baleen9_StructN:xvel = 0. ;
		Whale_Baleen9_StructN:psize = 10. ;
		Whale_Baleen9_StructN:b_dens = 1000000000. ;
		Whale_Baleen9_StructN:i_conc = 200000000. ;
		Whale_Baleen9_StructN:f_conc = 200000000. ;
		Whale_Baleen9_StructN:_FillValue = 82650805. ;
	double Whale_Baleen10_Nums(t, b, z) ;
		Whale_Baleen10_Nums:bmtype = "tracer" ;
		Whale_Baleen10_Nums:units = "1" ;
		Whale_Baleen10_Nums:long_name = "Numbers of Baleen whales cohort 10" ;
		Whale_Baleen10_Nums:sumtype = 0 ;
		Whale_Baleen10_Nums:dtype = 0 ;
		Whale_Baleen10_Nums:inwc = 0 ;
		Whale_Baleen10_Nums:insed = 0 ;
		Whale_Baleen10_Nums:dissol = 0 ;
		Whale_Baleen10_Nums:decay = 0. ;
		Whale_Baleen10_Nums:partic = 1 ;
		Whale_Baleen10_Nums:passive = 0 ;
		Whale_Baleen10_Nums:svel = 0. ;
		Whale_Baleen10_Nums:xvel = 0. ;
		Whale_Baleen10_Nums:psize = 10. ;
		Whale_Baleen10_Nums:b_dens = 1000000000. ;
		Whale_Baleen10_Nums:i_conc = 200000000. ;
		Whale_Baleen10_Nums:f_conc = 200000000. ;
		Whale_Baleen10_Nums:_FillValue = 0. ;
	double Whale_Baleen10_ResN(t, b, z) ;
		Whale_Baleen10_ResN:bmtype = "tracer" ;
		Whale_Baleen10_ResN:units = "mg N" ;
		Whale_Baleen10_ResN:long_name = "Individ reserve N for Baleen whales cohort 10" ;
		Whale_Baleen10_ResN:sumtype = 0 ;
		Whale_Baleen10_ResN:dtype = 0 ;
		Whale_Baleen10_ResN:inwc = 0 ;
		Whale_Baleen10_ResN:insed = 0 ;
		Whale_Baleen10_ResN:dissol = 0 ;
		Whale_Baleen10_ResN:decay = 0. ;
		Whale_Baleen10_ResN:partic = 1 ;
		Whale_Baleen10_ResN:passive = 0 ;
		Whale_Baleen10_ResN:svel = 0. ;
		Whale_Baleen10_ResN:xvel = 0. ;
		Whale_Baleen10_ResN:psize = 10. ;
		Whale_Baleen10_ResN:b_dens = 1000000000. ;
		Whale_Baleen10_ResN:i_conc = 200000000. ;
		Whale_Baleen10_ResN:f_conc = 200000000. ;
		Whale_Baleen10_ResN:_FillValue = 219024643. ;
	double Whale_Baleen10_StructN(t, b, z) ;
		Whale_Baleen10_StructN:bmtype = "tracer" ;
		Whale_Baleen10_StructN:units = "mg N" ;
		Whale_Baleen10_StructN:long_name = "Individ structural N for Baleen whales cohort 10" ;
		Whale_Baleen10_StructN:sumtype = 0 ;
		Whale_Baleen10_StructN:dtype = 0 ;
		Whale_Baleen10_StructN:inwc = 0 ;
		Whale_Baleen10_StructN:insed = 0 ;
		Whale_Baleen10_StructN:dissol = 0 ;
		Whale_Baleen10_StructN:decay = 0. ;
		Whale_Baleen10_StructN:partic = 1 ;
		Whale_Baleen10_StructN:passive = 0 ;
		Whale_Baleen10_StructN:svel = 0. ;
		Whale_Baleen10_StructN:xvel = 0. ;
		Whale_Baleen10_StructN:psize = 10. ;
		Whale_Baleen10_StructN:b_dens = 1000000000. ;
		Whale_Baleen10_StructN:i_conc = 200000000. ;
		Whale_Baleen10_StructN:f_conc = 200000000. ;
		Whale_Baleen10_StructN:_FillValue = 82650805. ;
	double Whale_Tooth1_Nums(t, b, z) ;
		Whale_Tooth1_Nums:bmtype = "tracer" ;
		Whale_Tooth1_Nums:units = "1" ;
		Whale_Tooth1_Nums:long_name = "Numbers of Toothed whales  cohort 1" ;
		Whale_Tooth1_Nums:sumtype = 0 ;
		Whale_Tooth1_Nums:dtype = 0 ;
		Whale_Tooth1_Nums:inwc = 0 ;
		Whale_Tooth1_Nums:insed = 0 ;
		Whale_Tooth1_Nums:dissol = 0 ;
		Whale_Tooth1_Nums:decay = 0. ;
		Whale_Tooth1_Nums:partic = 1 ;
		Whale_Tooth1_Nums:passive = 0 ;
		Whale_Tooth1_Nums:svel = 0. ;
		Whale_Tooth1_Nums:xvel = 0. ;
		Whale_Tooth1_Nums:psize = 10. ;
		Whale_Tooth1_Nums:b_dens = 1000000000. ;
		Whale_Tooth1_Nums:i_conc = 200000000. ;
		Whale_Tooth1_Nums:f_conc = 200000000. ;
		Whale_Tooth1_Nums:_FillValue = 0. ;
	double Whale_Tooth1_ResN(t, b, z) ;
		Whale_Tooth1_ResN:bmtype = "tracer" ;
		Whale_Tooth1_ResN:units = "mg N" ;
		Whale_Tooth1_ResN:long_name = "Individ reserve N for Toothed whales  cohort 1" ;
		Whale_Tooth1_ResN:sumtype = 0 ;
		Whale_Tooth1_ResN:dtype = 0 ;
		Whale_Tooth1_ResN:inwc = 0 ;
		Whale_Tooth1_ResN:insed = 0 ;
		Whale_Tooth1_ResN:dissol = 0 ;
		Whale_Tooth1_ResN:decay = 0. ;
		Whale_Tooth1_ResN:partic = 1 ;
		Whale_Tooth1_ResN:passive = 0 ;
		Whale_Tooth1_ResN:svel = 0. ;
		Whale_Tooth1_ResN:xvel = 0. ;
		Whale_Tooth1_ResN:psize = 10. ;
		Whale_Tooth1_ResN:b_dens = 1000000000. ;
		Whale_Tooth1_ResN:i_conc = 200000000. ;
		Whale_Tooth1_ResN:f_conc = 200000000. ;
		Whale_Tooth1_ResN:_FillValue = 15424238.81 ;
	double Whale_Tooth1_StructN(t, b, z) ;
		Whale_Tooth1_StructN:bmtype = "tracer" ;
		Whale_Tooth1_StructN:units = "mg N" ;
		Whale_Tooth1_StructN:long_name = "Individ structural N for Toothed whales  cohort 1" ;
		Whale_Tooth1_StructN:sumtype = 0 ;
		Whale_Tooth1_StructN:dtype = 0 ;
		Whale_Tooth1_StructN:inwc = 0 ;
		Whale_Tooth1_StructN:insed = 0 ;
		Whale_Tooth1_StructN:dissol = 0 ;
		Whale_Tooth1_StructN:decay = 0. ;
		Whale_Tooth1_StructN:partic = 1 ;
		Whale_Tooth1_StructN:passive = 0 ;
		Whale_Tooth1_StructN:svel = 0. ;
		Whale_Tooth1_StructN:xvel = 0. ;
		Whale_Tooth1_StructN:psize = 10. ;
		Whale_Tooth1_StructN:b_dens = 1000000000. ;
		Whale_Tooth1_StructN:i_conc = 200000000. ;
		Whale_Tooth1_StructN:f_conc = 200000000. ;
		Whale_Tooth1_StructN:_FillValue = 5820467.4 ;
	double Whale_Tooth2_Nums(t, b, z) ;
		Whale_Tooth2_Nums:bmtype = "tracer" ;
		Whale_Tooth2_Nums:units = "1" ;
		Whale_Tooth2_Nums:long_name = "Numbers of Toothed whales  cohort 2" ;
		Whale_Tooth2_Nums:sumtype = 0 ;
		Whale_Tooth2_Nums:dtype = 0 ;
		Whale_Tooth2_Nums:inwc = 0 ;
		Whale_Tooth2_Nums:insed = 0 ;
		Whale_Tooth2_Nums:dissol = 0 ;
		Whale_Tooth2_Nums:decay = 0. ;
		Whale_Tooth2_Nums:partic = 1 ;
		Whale_Tooth2_Nums:passive = 0 ;
		Whale_Tooth2_Nums:svel = 0. ;
		Whale_Tooth2_Nums:xvel = 0. ;
		Whale_Tooth2_Nums:psize = 10. ;
		Whale_Tooth2_Nums:b_dens = 1000000000. ;
		Whale_Tooth2_Nums:i_conc = 200000000. ;
		Whale_Tooth2_Nums:f_conc = 200000000. ;
		Whale_Tooth2_Nums:_FillValue = 0. ;
	double Whale_Tooth2_ResN(t, b, z) ;
		Whale_Tooth2_ResN:bmtype = "tracer" ;
		Whale_Tooth2_ResN:units = "mg N" ;
		Whale_Tooth2_ResN:long_name = "Individ reserve N for Toothed whales  cohort 2" ;
		Whale_Tooth2_ResN:sumtype = 0 ;
		Whale_Tooth2_ResN:dtype = 0 ;
		Whale_Tooth2_ResN:inwc = 0 ;
		Whale_Tooth2_ResN:insed = 0 ;
		Whale_Tooth2_ResN:dissol = 0 ;
		Whale_Tooth2_ResN:decay = 0. ;
		Whale_Tooth2_ResN:partic = 1 ;
		Whale_Tooth2_ResN:passive = 0 ;
		Whale_Tooth2_ResN:svel = 0. ;
		Whale_Tooth2_ResN:xvel = 0. ;
		Whale_Tooth2_ResN:psize = 10. ;
		Whale_Tooth2_ResN:b_dens = 1000000000. ;
		Whale_Tooth2_ResN:i_conc = 200000000. ;
		Whale_Tooth2_ResN:f_conc = 200000000. ;
		Whale_Tooth2_ResN:_FillValue = 16287370.72 ;
	double Whale_Tooth2_StructN(t, b, z) ;
		Whale_Tooth2_StructN:bmtype = "tracer" ;
		Whale_Tooth2_StructN:units = "mg N" ;
		Whale_Tooth2_StructN:long_name = "Individ structural N for Toothed whales  cohort 2" ;
		Whale_Tooth2_StructN:sumtype = 0 ;
		Whale_Tooth2_StructN:dtype = 0 ;
		Whale_Tooth2_StructN:inwc = 0 ;
		Whale_Tooth2_StructN:insed = 0 ;
		Whale_Tooth2_StructN:dissol = 0 ;
		Whale_Tooth2_StructN:decay = 0. ;
		Whale_Tooth2_StructN:partic = 1 ;
		Whale_Tooth2_StructN:passive = 0 ;
		Whale_Tooth2_StructN:svel = 0. ;
		Whale_Tooth2_StructN:xvel = 0. ;
		Whale_Tooth2_StructN:psize = 10. ;
		Whale_Tooth2_StructN:b_dens = 1000000000. ;
		Whale_Tooth2_StructN:i_conc = 200000000. ;
		Whale_Tooth2_StructN:f_conc = 200000000. ;
		Whale_Tooth2_StructN:_FillValue = 6146177.6 ;
	double Whale_Tooth3_Nums(t, b, z) ;
		Whale_Tooth3_Nums:bmtype = "tracer" ;
		Whale_Tooth3_Nums:units = "1" ;
		Whale_Tooth3_Nums:long_name = "Numbers of Toothed whales  cohort 3" ;
		Whale_Tooth3_Nums:sumtype = 0 ;
		Whale_Tooth3_Nums:dtype = 0 ;
		Whale_Tooth3_Nums:inwc = 0 ;
		Whale_Tooth3_Nums:insed = 0 ;
		Whale_Tooth3_Nums:dissol = 0 ;
		Whale_Tooth3_Nums:decay = 0. ;
		Whale_Tooth3_Nums:partic = 1 ;
		Whale_Tooth3_Nums:passive = 0 ;
		Whale_Tooth3_Nums:svel = 0. ;
		Whale_Tooth3_Nums:xvel = 0. ;
		Whale_Tooth3_Nums:psize = 10. ;
		Whale_Tooth3_Nums:b_dens = 1000000000. ;
		Whale_Tooth3_Nums:i_conc = 200000000. ;
		Whale_Tooth3_Nums:f_conc = 200000000. ;
		Whale_Tooth3_Nums:_FillValue = 0. ;
	double Whale_Tooth3_ResN(t, b, z) ;
		Whale_Tooth3_ResN:bmtype = "tracer" ;
		Whale_Tooth3_ResN:units = "mg N" ;
		Whale_Tooth3_ResN:long_name = "Individ reserve N for Toothed whales  cohort 3" ;
		Whale_Tooth3_ResN:sumtype = 0 ;
		Whale_Tooth3_ResN:dtype = 0 ;
		Whale_Tooth3_ResN:inwc = 0 ;
		Whale_Tooth3_ResN:insed = 0 ;
		Whale_Tooth3_ResN:dissol = 0 ;
		Whale_Tooth3_ResN:decay = 0. ;
		Whale_Tooth3_ResN:partic = 1 ;
		Whale_Tooth3_ResN:passive = 0 ;
		Whale_Tooth3_ResN:svel = 0. ;
		Whale_Tooth3_ResN:xvel = 0. ;
		Whale_Tooth3_ResN:psize = 10. ;
		Whale_Tooth3_ResN:b_dens = 1000000000. ;
		Whale_Tooth3_ResN:i_conc = 200000000. ;
		Whale_Tooth3_ResN:f_conc = 200000000. ;
		Whale_Tooth3_ResN:_FillValue = 16303472.61 ;
	double Whale_Tooth3_StructN(t, b, z) ;
		Whale_Tooth3_StructN:bmtype = "tracer" ;
		Whale_Tooth3_StructN:units = "mg N" ;
		Whale_Tooth3_StructN:long_name = "Individ structural N for Toothed whales  cohort 3" ;
		Whale_Tooth3_StructN:sumtype = 0 ;
		Whale_Tooth3_StructN:dtype = 0 ;
		Whale_Tooth3_StructN:inwc = 0 ;
		Whale_Tooth3_StructN:insed = 0 ;
		Whale_Tooth3_StructN:dissol = 0 ;
		Whale_Tooth3_StructN:decay = 0. ;
		Whale_Tooth3_StructN:partic = 1 ;
		Whale_Tooth3_StructN:passive = 0 ;
		Whale_Tooth3_StructN:svel = 0. ;
		Whale_Tooth3_StructN:xvel = 0. ;
		Whale_Tooth3_StructN:psize = 10. ;
		Whale_Tooth3_StructN:b_dens = 1000000000. ;
		Whale_Tooth3_StructN:i_conc = 200000000. ;
		Whale_Tooth3_StructN:f_conc = 200000000. ;
		Whale_Tooth3_StructN:_FillValue = 6152253.8 ;
	double Whale_Tooth4_Nums(t, b, z) ;
		Whale_Tooth4_Nums:bmtype = "tracer" ;
		Whale_Tooth4_Nums:units = "1" ;
		Whale_Tooth4_Nums:long_name = "Numbers of Toothed whales  cohort 4" ;
		Whale_Tooth4_Nums:sumtype = 0 ;
		Whale_Tooth4_Nums:dtype = 0 ;
		Whale_Tooth4_Nums:inwc = 0 ;
		Whale_Tooth4_Nums:insed = 0 ;
		Whale_Tooth4_Nums:dissol = 0 ;
		Whale_Tooth4_Nums:decay = 0. ;
		Whale_Tooth4_Nums:partic = 1 ;
		Whale_Tooth4_Nums:passive = 0 ;
		Whale_Tooth4_Nums:svel = 0. ;
		Whale_Tooth4_Nums:xvel = 0. ;
		Whale_Tooth4_Nums:psize = 10. ;
		Whale_Tooth4_Nums:b_dens = 1000000000. ;
		Whale_Tooth4_Nums:i_conc = 200000000. ;
		Whale_Tooth4_Nums:f_conc = 200000000. ;
		Whale_Tooth4_Nums:_FillValue = 0. ;
	double Whale_Tooth4_ResN(t, b, z) ;
		Whale_Tooth4_ResN:bmtype = "tracer" ;
		Whale_Tooth4_ResN:units = "mg N" ;
		Whale_Tooth4_ResN:long_name = "Individ reserve N for Toothed whales  cohort 4" ;
		Whale_Tooth4_ResN:sumtype = 0 ;
		Whale_Tooth4_ResN:dtype = 0 ;
		Whale_Tooth4_ResN:inwc = 0 ;
		Whale_Tooth4_ResN:insed = 0 ;
		Whale_Tooth4_ResN:dissol = 0 ;
		Whale_Tooth4_ResN:decay = 0. ;
		Whale_Tooth4_ResN:partic = 1 ;
		Whale_Tooth4_ResN:passive = 0 ;
		Whale_Tooth4_ResN:svel = 0. ;
		Whale_Tooth4_ResN:xvel = 0. ;
		Whale_Tooth4_ResN:psize = 10. ;
		Whale_Tooth4_ResN:b_dens = 1000000000. ;
		Whale_Tooth4_ResN:i_conc = 200000000. ;
		Whale_Tooth4_ResN:f_conc = 200000000. ;
		Whale_Tooth4_ResN:_FillValue = 16303767.63 ;
	double Whale_Tooth4_StructN(t, b, z) ;
		Whale_Tooth4_StructN:bmtype = "tracer" ;
		Whale_Tooth4_StructN:units = "mg N" ;
		Whale_Tooth4_StructN:long_name = "Individ structural N for Toothed whales  cohort 4" ;
		Whale_Tooth4_StructN:sumtype = 0 ;
		Whale_Tooth4_StructN:dtype = 0 ;
		Whale_Tooth4_StructN:inwc = 0 ;
		Whale_Tooth4_StructN:insed = 0 ;
		Whale_Tooth4_StructN:dissol = 0 ;
		Whale_Tooth4_StructN:decay = 0. ;
		Whale_Tooth4_StructN:partic = 1 ;
		Whale_Tooth4_StructN:passive = 0 ;
		Whale_Tooth4_StructN:svel = 0. ;
		Whale_Tooth4_StructN:xvel = 0. ;
		Whale_Tooth4_StructN:psize = 10. ;
		Whale_Tooth4_StructN:b_dens = 1000000000. ;
		Whale_Tooth4_StructN:i_conc = 200000000. ;
		Whale_Tooth4_StructN:f_conc = 200000000. ;
		Whale_Tooth4_StructN:_FillValue = 6152365. ;
	double Whale_Tooth5_Nums(t, b, z) ;
		Whale_Tooth5_Nums:bmtype = "tracer" ;
		Whale_Tooth5_Nums:units = "1" ;
		Whale_Tooth5_Nums:long_name = "Numbers of Toothed whales  cohort 5" ;
		Whale_Tooth5_Nums:sumtype = 0 ;
		Whale_Tooth5_Nums:dtype = 0 ;
		Whale_Tooth5_Nums:inwc = 0 ;
		Whale_Tooth5_Nums:insed = 0 ;
		Whale_Tooth5_Nums:dissol = 0 ;
		Whale_Tooth5_Nums:decay = 0. ;
		Whale_Tooth5_Nums:partic = 1 ;
		Whale_Tooth5_Nums:passive = 0 ;
		Whale_Tooth5_Nums:svel = 0. ;
		Whale_Tooth5_Nums:xvel = 0. ;
		Whale_Tooth5_Nums:psize = 10. ;
		Whale_Tooth5_Nums:b_dens = 1000000000. ;
		Whale_Tooth5_Nums:i_conc = 200000000. ;
		Whale_Tooth5_Nums:f_conc = 200000000. ;
		Whale_Tooth5_Nums:_FillValue = 0. ;
	double Whale_Tooth5_ResN(t, b, z) ;
		Whale_Tooth5_ResN:bmtype = "tracer" ;
		Whale_Tooth5_ResN:units = "mg N" ;
		Whale_Tooth5_ResN:long_name = "Individ reserve N for Toothed whales  cohort 5" ;
		Whale_Tooth5_ResN:sumtype = 0 ;
		Whale_Tooth5_ResN:dtype = 0 ;
		Whale_Tooth5_ResN:inwc = 0 ;
		Whale_Tooth5_ResN:insed = 0 ;
		Whale_Tooth5_ResN:dissol = 0 ;
		Whale_Tooth5_ResN:decay = 0. ;
		Whale_Tooth5_ResN:partic = 1 ;
		Whale_Tooth5_ResN:passive = 0 ;
		Whale_Tooth5_ResN:svel = 0. ;
		Whale_Tooth5_ResN:xvel = 0. ;
		Whale_Tooth5_ResN:psize = 10. ;
		Whale_Tooth5_ResN:b_dens = 1000000000. ;
		Whale_Tooth5_ResN:i_conc = 200000000. ;
		Whale_Tooth5_ResN:f_conc = 200000000. ;
		Whale_Tooth5_ResN:_FillValue = 16303769. ;
	double Whale_Tooth5_StructN(t, b, z) ;
		Whale_Tooth5_StructN:bmtype = "tracer" ;
		Whale_Tooth5_StructN:units = "mg N" ;
		Whale_Tooth5_StructN:long_name = "Individ structural N for Toothed whales  cohort 5" ;
		Whale_Tooth5_StructN:sumtype = 0 ;
		Whale_Tooth5_StructN:dtype = 0 ;
		Whale_Tooth5_StructN:inwc = 0 ;
		Whale_Tooth5_StructN:insed = 0 ;
		Whale_Tooth5_StructN:dissol = 0 ;
		Whale_Tooth5_StructN:decay = 0. ;
		Whale_Tooth5_StructN:partic = 1 ;
		Whale_Tooth5_StructN:passive = 0 ;
		Whale_Tooth5_StructN:svel = 0. ;
		Whale_Tooth5_StructN:xvel = 0. ;
		Whale_Tooth5_StructN:psize = 10. ;
		Whale_Tooth5_StructN:b_dens = 1000000000. ;
		Whale_Tooth5_StructN:i_conc = 200000000. ;
		Whale_Tooth5_StructN:f_conc = 200000000. ;
		Whale_Tooth5_StructN:_FillValue = 6152367. ;
	double Whale_Tooth6_Nums(t, b, z) ;
		Whale_Tooth6_Nums:bmtype = "tracer" ;
		Whale_Tooth6_Nums:units = "1" ;
		Whale_Tooth6_Nums:long_name = "Numbers of Toothed whales  cohort 6" ;
		Whale_Tooth6_Nums:sumtype = 0 ;
		Whale_Tooth6_Nums:dtype = 0 ;
		Whale_Tooth6_Nums:inwc = 0 ;
		Whale_Tooth6_Nums:insed = 0 ;
		Whale_Tooth6_Nums:dissol = 0 ;
		Whale_Tooth6_Nums:decay = 0. ;
		Whale_Tooth6_Nums:partic = 1 ;
		Whale_Tooth6_Nums:passive = 0 ;
		Whale_Tooth6_Nums:svel = 0. ;
		Whale_Tooth6_Nums:xvel = 0. ;
		Whale_Tooth6_Nums:psize = 10. ;
		Whale_Tooth6_Nums:b_dens = 1000000000. ;
		Whale_Tooth6_Nums:i_conc = 200000000. ;
		Whale_Tooth6_Nums:f_conc = 200000000. ;
		Whale_Tooth6_Nums:_FillValue = 0. ;
	double Whale_Tooth6_ResN(t, b, z) ;
		Whale_Tooth6_ResN:bmtype = "tracer" ;
		Whale_Tooth6_ResN:units = "mg N" ;
		Whale_Tooth6_ResN:long_name = "Individ reserve N for Toothed whales  cohort 6" ;
		Whale_Tooth6_ResN:sumtype = 0 ;
		Whale_Tooth6_ResN:dtype = 0 ;
		Whale_Tooth6_ResN:inwc = 0 ;
		Whale_Tooth6_ResN:insed = 0 ;
		Whale_Tooth6_ResN:dissol = 0 ;
		Whale_Tooth6_ResN:decay = 0. ;
		Whale_Tooth6_ResN:partic = 1 ;
		Whale_Tooth6_ResN:passive = 0 ;
		Whale_Tooth6_ResN:svel = 0. ;
		Whale_Tooth6_ResN:xvel = 0. ;
		Whale_Tooth6_ResN:psize = 10. ;
		Whale_Tooth6_ResN:b_dens = 1000000000. ;
		Whale_Tooth6_ResN:i_conc = 200000000. ;
		Whale_Tooth6_ResN:f_conc = 200000000. ;
		Whale_Tooth6_ResN:_FillValue = 16303773. ;
	double Whale_Tooth6_StructN(t, b, z) ;
		Whale_Tooth6_StructN:bmtype = "tracer" ;
		Whale_Tooth6_StructN:units = "mg N" ;
		Whale_Tooth6_StructN:long_name = "Individ structural N for Toothed whales  cohort 6" ;
		Whale_Tooth6_StructN:sumtype = 0 ;
		Whale_Tooth6_StructN:dtype = 0 ;
		Whale_Tooth6_StructN:inwc = 0 ;
		Whale_Tooth6_StructN:insed = 0 ;
		Whale_Tooth6_StructN:dissol = 0 ;
		Whale_Tooth6_StructN:decay = 0. ;
		Whale_Tooth6_StructN:partic = 1 ;
		Whale_Tooth6_StructN:passive = 0 ;
		Whale_Tooth6_StructN:svel = 0. ;
		Whale_Tooth6_StructN:xvel = 0. ;
		Whale_Tooth6_StructN:psize = 10. ;
		Whale_Tooth6_StructN:b_dens = 1000000000. ;
		Whale_Tooth6_StructN:i_conc = 200000000. ;
		Whale_Tooth6_StructN:f_conc = 200000000. ;
		Whale_Tooth6_StructN:_FillValue = 6152385. ;
	double Whale_Tooth7_Nums(t, b, z) ;
		Whale_Tooth7_Nums:bmtype = "tracer" ;
		Whale_Tooth7_Nums:units = "1" ;
		Whale_Tooth7_Nums:long_name = "Numbers of Toothed whales  cohort 7" ;
		Whale_Tooth7_Nums:sumtype = 0 ;
		Whale_Tooth7_Nums:dtype = 0 ;
		Whale_Tooth7_Nums:inwc = 0 ;
		Whale_Tooth7_Nums:insed = 0 ;
		Whale_Tooth7_Nums:dissol = 0 ;
		Whale_Tooth7_Nums:decay = 0. ;
		Whale_Tooth7_Nums:partic = 1 ;
		Whale_Tooth7_Nums:passive = 0 ;
		Whale_Tooth7_Nums:svel = 0. ;
		Whale_Tooth7_Nums:xvel = 0. ;
		Whale_Tooth7_Nums:psize = 10. ;
		Whale_Tooth7_Nums:b_dens = 1000000000. ;
		Whale_Tooth7_Nums:i_conc = 200000000. ;
		Whale_Tooth7_Nums:f_conc = 200000000. ;
		Whale_Tooth7_Nums:_FillValue = 0. ;
	double Whale_Tooth7_ResN(t, b, z) ;
		Whale_Tooth7_ResN:bmtype = "tracer" ;
		Whale_Tooth7_ResN:units = "mg N" ;
		Whale_Tooth7_ResN:long_name = "Individ reserve N for Toothed whales  cohort 7" ;
		Whale_Tooth7_ResN:sumtype = 0 ;
		Whale_Tooth7_ResN:dtype = 0 ;
		Whale_Tooth7_ResN:inwc = 0 ;
		Whale_Tooth7_ResN:insed = 0 ;
		Whale_Tooth7_ResN:dissol = 0 ;
		Whale_Tooth7_ResN:decay = 0. ;
		Whale_Tooth7_ResN:partic = 1 ;
		Whale_Tooth7_ResN:passive = 0 ;
		Whale_Tooth7_ResN:svel = 0. ;
		Whale_Tooth7_ResN:xvel = 0. ;
		Whale_Tooth7_ResN:psize = 10. ;
		Whale_Tooth7_ResN:b_dens = 1000000000. ;
		Whale_Tooth7_ResN:i_conc = 200000000. ;
		Whale_Tooth7_ResN:f_conc = 200000000. ;
		Whale_Tooth7_ResN:_FillValue = 16303777. ;
	double Whale_Tooth7_StructN(t, b, z) ;
		Whale_Tooth7_StructN:bmtype = "tracer" ;
		Whale_Tooth7_StructN:units = "mg N" ;
		Whale_Tooth7_StructN:long_name = "Individ structural N for Toothed whales  cohort 7" ;
		Whale_Tooth7_StructN:sumtype = 0 ;
		Whale_Tooth7_StructN:dtype = 0 ;
		Whale_Tooth7_StructN:inwc = 0 ;
		Whale_Tooth7_StructN:insed = 0 ;
		Whale_Tooth7_StructN:dissol = 0 ;
		Whale_Tooth7_StructN:decay = 0. ;
		Whale_Tooth7_StructN:partic = 1 ;
		Whale_Tooth7_StructN:passive = 0 ;
		Whale_Tooth7_StructN:svel = 0. ;
		Whale_Tooth7_StructN:xvel = 0. ;
		Whale_Tooth7_StructN:psize = 10. ;
		Whale_Tooth7_StructN:b_dens = 1000000000. ;
		Whale_Tooth7_StructN:i_conc = 200000000. ;
		Whale_Tooth7_StructN:f_conc = 200000000. ;
		Whale_Tooth7_StructN:_FillValue = 6152390. ;
	double Whale_Tooth8_Nums(t, b, z) ;
		Whale_Tooth8_Nums:bmtype = "tracer" ;
		Whale_Tooth8_Nums:units = "1" ;
		Whale_Tooth8_Nums:long_name = "Numbers of Toothed whales  cohort 8" ;
		Whale_Tooth8_Nums:sumtype = 0 ;
		Whale_Tooth8_Nums:dtype = 0 ;
		Whale_Tooth8_Nums:inwc = 0 ;
		Whale_Tooth8_Nums:insed = 0 ;
		Whale_Tooth8_Nums:dissol = 0 ;
		Whale_Tooth8_Nums:decay = 0. ;
		Whale_Tooth8_Nums:partic = 1 ;
		Whale_Tooth8_Nums:passive = 0 ;
		Whale_Tooth8_Nums:svel = 0. ;
		Whale_Tooth8_Nums:xvel = 0. ;
		Whale_Tooth8_Nums:psize = 10. ;
		Whale_Tooth8_Nums:b_dens = 1000000000. ;
		Whale_Tooth8_Nums:i_conc = 200000000. ;
		Whale_Tooth8_Nums:f_conc = 200000000. ;
		Whale_Tooth8_Nums:_FillValue = 0. ;
	double Whale_Tooth8_ResN(t, b, z) ;
		Whale_Tooth8_ResN:bmtype = "tracer" ;
		Whale_Tooth8_ResN:units = "mg N" ;
		Whale_Tooth8_ResN:long_name = "Individ reserve N for Toothed whales  cohort 8" ;
		Whale_Tooth8_ResN:sumtype = 0 ;
		Whale_Tooth8_ResN:dtype = 0 ;
		Whale_Tooth8_ResN:inwc = 0 ;
		Whale_Tooth8_ResN:insed = 0 ;
		Whale_Tooth8_ResN:dissol = 0 ;
		Whale_Tooth8_ResN:decay = 0. ;
		Whale_Tooth8_ResN:partic = 1 ;
		Whale_Tooth8_ResN:passive = 0 ;
		Whale_Tooth8_ResN:svel = 0. ;
		Whale_Tooth8_ResN:xvel = 0. ;
		Whale_Tooth8_ResN:psize = 10. ;
		Whale_Tooth8_ResN:b_dens = 1000000000. ;
		Whale_Tooth8_ResN:i_conc = 200000000. ;
		Whale_Tooth8_ResN:f_conc = 200000000. ;
		Whale_Tooth8_ResN:_FillValue = 16303781. ;
	double Whale_Tooth8_StructN(t, b, z) ;
		Whale_Tooth8_StructN:bmtype = "tracer" ;
		Whale_Tooth8_StructN:units = "mg N" ;
		Whale_Tooth8_StructN:long_name = "Individ structural N for Toothed whales  cohort 8" ;
		Whale_Tooth8_StructN:sumtype = 0 ;
		Whale_Tooth8_StructN:dtype = 0 ;
		Whale_Tooth8_StructN:inwc = 0 ;
		Whale_Tooth8_StructN:insed = 0 ;
		Whale_Tooth8_StructN:dissol = 0 ;
		Whale_Tooth8_StructN:decay = 0. ;
		Whale_Tooth8_StructN:partic = 1 ;
		Whale_Tooth8_StructN:passive = 0 ;
		Whale_Tooth8_StructN:svel = 0. ;
		Whale_Tooth8_StructN:xvel = 0. ;
		Whale_Tooth8_StructN:psize = 10. ;
		Whale_Tooth8_StructN:b_dens = 1000000000. ;
		Whale_Tooth8_StructN:i_conc = 200000000. ;
		Whale_Tooth8_StructN:f_conc = 200000000. ;
		Whale_Tooth8_StructN:_FillValue = 6152395. ;
	double Whale_Tooth9_Nums(t, b, z) ;
		Whale_Tooth9_Nums:bmtype = "tracer" ;
		Whale_Tooth9_Nums:units = "1" ;
		Whale_Tooth9_Nums:long_name = "Numbers of Toothed whales  cohort 9" ;
		Whale_Tooth9_Nums:sumtype = 0 ;
		Whale_Tooth9_Nums:dtype = 0 ;
		Whale_Tooth9_Nums:inwc = 0 ;
		Whale_Tooth9_Nums:insed = 0 ;
		Whale_Tooth9_Nums:dissol = 0 ;
		Whale_Tooth9_Nums:decay = 0. ;
		Whale_Tooth9_Nums:partic = 1 ;
		Whale_Tooth9_Nums:passive = 0 ;
		Whale_Tooth9_Nums:svel = 0. ;
		Whale_Tooth9_Nums:xvel = 0. ;
		Whale_Tooth9_Nums:psize = 10. ;
		Whale_Tooth9_Nums:b_dens = 1000000000. ;
		Whale_Tooth9_Nums:i_conc = 200000000. ;
		Whale_Tooth9_Nums:f_conc = 200000000. ;
		Whale_Tooth9_Nums:_FillValue = 0. ;
	double Whale_Tooth9_ResN(t, b, z) ;
		Whale_Tooth9_ResN:bmtype = "tracer" ;
		Whale_Tooth9_ResN:units = "mg N" ;
		Whale_Tooth9_ResN:long_name = "Individ reserve N for Toothed whales  cohort 9" ;
		Whale_Tooth9_ResN:sumtype = 0 ;
		Whale_Tooth9_ResN:dtype = 0 ;
		Whale_Tooth9_ResN:inwc = 0 ;
		Whale_Tooth9_ResN:insed = 0 ;
		Whale_Tooth9_ResN:dissol = 0 ;
		Whale_Tooth9_ResN:decay = 0. ;
		Whale_Tooth9_ResN:partic = 1 ;
		Whale_Tooth9_ResN:passive = 0 ;
		Whale_Tooth9_ResN:svel = 0. ;
		Whale_Tooth9_ResN:xvel = 0. ;
		Whale_Tooth9_ResN:psize = 10. ;
		Whale_Tooth9_ResN:b_dens = 1000000000. ;
		Whale_Tooth9_ResN:i_conc = 200000000. ;
		Whale_Tooth9_ResN:f_conc = 200000000. ;
		Whale_Tooth9_ResN:_FillValue = 16303783. ;
	double Whale_Tooth9_StructN(t, b, z) ;
		Whale_Tooth9_StructN:bmtype = "tracer" ;
		Whale_Tooth9_StructN:units = "mg N" ;
		Whale_Tooth9_StructN:long_name = "Individ structural N for Toothed whales  cohort 9" ;
		Whale_Tooth9_StructN:sumtype = 0 ;
		Whale_Tooth9_StructN:dtype = 0 ;
		Whale_Tooth9_StructN:inwc = 0 ;
		Whale_Tooth9_StructN:insed = 0 ;
		Whale_Tooth9_StructN:dissol = 0 ;
		Whale_Tooth9_StructN:decay = 0. ;
		Whale_Tooth9_StructN:partic = 1 ;
		Whale_Tooth9_StructN:passive = 0 ;
		Whale_Tooth9_StructN:svel = 0. ;
		Whale_Tooth9_StructN:xvel = 0. ;
		Whale_Tooth9_StructN:psize = 10. ;
		Whale_Tooth9_StructN:b_dens = 1000000000. ;
		Whale_Tooth9_StructN:i_conc = 200000000. ;
		Whale_Tooth9_StructN:f_conc = 200000000. ;
		Whale_Tooth9_StructN:_FillValue = 6152405. ;
	double Whale_Tooth10_Nums(t, b, z) ;
		Whale_Tooth10_Nums:bmtype = "tracer" ;
		Whale_Tooth10_Nums:units = "1" ;
		Whale_Tooth10_Nums:long_name = "Numbers of Toothed whales  cohort 10" ;
		Whale_Tooth10_Nums:sumtype = 0 ;
		Whale_Tooth10_Nums:dtype = 0 ;
		Whale_Tooth10_Nums:inwc = 0 ;
		Whale_Tooth10_Nums:insed = 0 ;
		Whale_Tooth10_Nums:dissol = 0 ;
		Whale_Tooth10_Nums:decay = 0. ;
		Whale_Tooth10_Nums:partic = 1 ;
		Whale_Tooth10_Nums:passive = 0 ;
		Whale_Tooth10_Nums:svel = 0. ;
		Whale_Tooth10_Nums:xvel = 0. ;
		Whale_Tooth10_Nums:psize = 10. ;
		Whale_Tooth10_Nums:b_dens = 1000000000. ;
		Whale_Tooth10_Nums:i_conc = 200000000. ;
		Whale_Tooth10_Nums:f_conc = 200000000. ;
		Whale_Tooth10_Nums:_FillValue = 0. ;
	double Whale_Tooth10_ResN(t, b, z) ;
		Whale_Tooth10_ResN:bmtype = "tracer" ;
		Whale_Tooth10_ResN:units = "mg N" ;
		Whale_Tooth10_ResN:long_name = "Individ reserve N for Toothed whales  cohort 10" ;
		Whale_Tooth10_ResN:sumtype = 0 ;
		Whale_Tooth10_ResN:dtype = 0 ;
		Whale_Tooth10_ResN:inwc = 0 ;
		Whale_Tooth10_ResN:insed = 0 ;
		Whale_Tooth10_ResN:dissol = 0 ;
		Whale_Tooth10_ResN:decay = 0. ;
		Whale_Tooth10_ResN:partic = 1 ;
		Whale_Tooth10_ResN:passive = 0 ;
		Whale_Tooth10_ResN:svel = 0. ;
		Whale_Tooth10_ResN:xvel = 0. ;
		Whale_Tooth10_ResN:psize = 10. ;
		Whale_Tooth10_ResN:b_dens = 1000000000. ;
		Whale_Tooth10_ResN:i_conc = 200000000. ;
		Whale_Tooth10_ResN:f_conc = 200000000. ;
		Whale_Tooth10_ResN:_FillValue = 16303787. ;
	double Whale_Tooth10_StructN(t, b, z) ;
		Whale_Tooth10_StructN:bmtype = "tracer" ;
		Whale_Tooth10_StructN:units = "mg N" ;
		Whale_Tooth10_StructN:long_name = "Individ structural N for Toothed whales  cohort 10" ;
		Whale_Tooth10_StructN:sumtype = 0 ;
		Whale_Tooth10_StructN:dtype = 0 ;
		Whale_Tooth10_StructN:inwc = 0 ;
		Whale_Tooth10_StructN:insed = 0 ;
		Whale_Tooth10_StructN:dissol = 0 ;
		Whale_Tooth10_StructN:decay = 0. ;
		Whale_Tooth10_StructN:partic = 1 ;
		Whale_Tooth10_StructN:passive = 0 ;
		Whale_Tooth10_StructN:svel = 0. ;
		Whale_Tooth10_StructN:xvel = 0. ;
		Whale_Tooth10_StructN:psize = 10. ;
		Whale_Tooth10_StructN:b_dens = 1000000000. ;
		Whale_Tooth10_StructN:i_conc = 200000000. ;
		Whale_Tooth10_StructN:f_conc = 200000000. ;
		Whale_Tooth10_StructN:_FillValue = 6152415. ;
	double MicroPB_S(t, b, z) ;
		MicroPB_S:bmtype = "tracer" ;
		MicroPB_S:units = "mg Si m-3" ;
		MicroPB_S:long_name = "Microphtybenthos Silicon" ;
		MicroPB_S:sumtype = 1 ;
		MicroPB_S:dtype = 0 ;
		MicroPB_S:inwc = 1 ;
		MicroPB_S:insed = 1 ;
		MicroPB_S:dissol = 0 ;
		MicroPB_S:decay = 0. ;
		MicroPB_S:partic = 1 ;
		MicroPB_S:passive = 1 ;
		MicroPB_S:svel = -2.893e-06 ;
		MicroPB_S:xvel = 0. ;
		MicroPB_S:psize = 1.e-05 ;
		MicroPB_S:b_dens = 1000000000. ;
		MicroPB_S:i_conc = 200000000. ;
		MicroPB_S:f_conc = 200000000. ;
		MicroPB_S:_FillValue = 0. ;
	double Diatom_S(t, b, z) ;
		Diatom_S:bmtype = "tracer" ;
		Diatom_S:units = "mg Si m-3" ;
		Diatom_S:long_name = "Diatom Silicon" ;
		Diatom_S:sumtype = 1 ;
		Diatom_S:dtype = 0 ;
		Diatom_S:inwc = 1 ;
		Diatom_S:insed = 1 ;
		Diatom_S:dissol = 0 ;
		Diatom_S:decay = 0. ;
		Diatom_S:partic = 1 ;
		Diatom_S:passive = 1 ;
		Diatom_S:svel = -2.893e-06 ;
		Diatom_S:xvel = 0. ;
		Diatom_S:psize = 1.e-05 ;
		Diatom_S:b_dens = 1000000000. ;
		Diatom_S:i_conc = 200000000. ;
		Diatom_S:f_conc = 200000000. ;
		Diatom_S:_FillValue = 0.003 ;
	double Filter_Shallow_N(t, b) ;
		Filter_Shallow_N:bmtype = "epibenthos" ;
		Filter_Shallow_N:units = "mg N m-2" ;
		Filter_Shallow_N:long_name = "Shallow benthic filter feeder Nitrogen" ;
		Filter_Shallow_N:dtype = 0 ;
		Filter_Shallow_N:sumtype = 1 ;
		Filter_Shallow_N:_FillValue = 0. ;
	double Filter_Other_N(t, b) ;
		Filter_Other_N:bmtype = "epibenthos" ;
		Filter_Other_N:units = "mg N m-2" ;
		Filter_Other_N:long_name = "Other benthic filter feeder Nitrogen" ;
		Filter_Other_N:dtype = 0 ;
		Filter_Other_N:sumtype = 1 ;
		Filter_Other_N:_FillValue = 0. ;
	double Macrobenth_Deep_N(t, b) ;
		Macrobenth_Deep_N:bmtype = "epibenthos" ;
		Macrobenth_Deep_N:units = "mg N m-2" ;
		Macrobenth_Deep_N:long_name = "Deep macrozoobenthos Nitrogen" ;
		Macrobenth_Deep_N:dtype = 0 ;
		Macrobenth_Deep_N:sumtype = 1 ;
		Macrobenth_Deep_N:_FillValue = 0. ;
	double Megazoobenthos_N(t, b) ;
		Megazoobenthos_N:bmtype = "epibenthos" ;
		Megazoobenthos_N:units = "mg N m-2" ;
		Megazoobenthos_N:long_name = "Megazoobenthos Nitrogen" ;
		Megazoobenthos_N:dtype = 0 ;
		Megazoobenthos_N:sumtype = 1 ;
		Megazoobenthos_N:_FillValue = 0. ;
	double Macrobenth_Shallow_N(t, b) ;
		Macrobenth_Shallow_N:bmtype = "epibenthos" ;
		Macrobenth_Shallow_N:units = "mg N m-2" ;
		Macrobenth_Shallow_N:long_name = "Shallow macrozoobenthos Nitrogen" ;
		Macrobenth_Shallow_N:dtype = 0 ;
		Macrobenth_Shallow_N:sumtype = 1 ;
		Macrobenth_Shallow_N:_FillValue = 0. ;
	double Macroalgae_N(t, b) ;
		Macroalgae_N:bmtype = "epibenthos" ;
		Macroalgae_N:units = "mg N m-2" ;
		Macroalgae_N:long_name = "Macroalgae Nitrogen" ;
		Macroalgae_N:dtype = 0 ;
		Macroalgae_N:sumtype = 1 ;
		Macroalgae_N:_FillValue = 0. ;
	double Seagrass_N(t, b) ;
		Seagrass_N:bmtype = "epibenthos" ;
		Seagrass_N:units = "mg N m-2" ;
		Seagrass_N:long_name = "Seagrass Nitrogen" ;
		Seagrass_N:dtype = 0 ;
		Seagrass_N:sumtype = 1 ;
		Seagrass_N:_FillValue = 0. ;
	double Filter_Shallow_Cover(t, b) ;
		Filter_Shallow_Cover:bmtype = "epibenthos" ;
		Filter_Shallow_Cover:units = "%" ;
		Filter_Shallow_Cover:long_name = "Percent cover by Shallow benthic filter feeder" ;
		Filter_Shallow_Cover:dtype = 0 ;
		Filter_Shallow_Cover:sumtype = 1 ;
		Filter_Shallow_Cover:_FillValue = 0. ;
	double Filter_Other_Cover(t, b) ;
		Filter_Other_Cover:bmtype = "epibenthos" ;
		Filter_Other_Cover:units = "%" ;
		Filter_Other_Cover:long_name = "Percent cover by Other benthic filter feeder" ;
		Filter_Other_Cover:dtype = 0 ;
		Filter_Other_Cover:sumtype = 1 ;
		Filter_Other_Cover:_FillValue = 0. ;
	double Benthic_grazer_N(t, b) ;
		Benthic_grazer_N:bmtype = "epibenthos" ;
		Benthic_grazer_N:units = "mg N m-2" ;
		Benthic_grazer_N:long_name = "Benthic grazer Nitrogen" ;
		Benthic_grazer_N:dtype = 0 ;
		Benthic_grazer_N:sumtype = 1 ;
		Benthic_grazer_N:_FillValue = 0. ;
	double Macroalgae_Cover(t, b) ;
		Macroalgae_Cover:bmtype = "epibenthos" ;
		Macroalgae_Cover:units = "%" ;
		Macroalgae_Cover:long_name = "Percent cover by Macroalgae" ;
		Macroalgae_Cover:dtype = 0 ;
		Macroalgae_Cover:sumtype = 1 ;
		Macroalgae_Cover:_FillValue = 0. ;
	double MicroPB_Cover(t, b) ;
		MicroPB_Cover:bmtype = "epibenthos" ;
		MicroPB_Cover:units = "%" ;
		MicroPB_Cover:long_name = "Percent cover by Microphtybenthos" ;
		MicroPB_Cover:dtype = 0 ;
		MicroPB_Cover:sumtype = 1 ;
		MicroPB_Cover:_FillValue = 0. ;
	double Seagrass_Cover(t, b) ;
		Seagrass_Cover:bmtype = "epibenthos" ;
		Seagrass_Cover:units = "%" ;
		Seagrass_Cover:long_name = "Percent cover by Seagrass" ;
		Seagrass_Cover:dtype = 0 ;
		Seagrass_Cover:sumtype = 1 ;
		Seagrass_Cover:_FillValue = 0. ;

// global attributes:
		:title = "" ;
		:geometry = "Geography.bgm" ;
		:parameters = "" ;
		:wcnz = 6 ;
		:sednz = 1 ;
data:

 t = 0 ;

 volume =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 hdsource =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 hdsink =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 eflux =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 vflux =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 porosity =
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1,
  _, _, _, _, _, _, 1 ;

 nominal_dz =
  120, 150, 50, 30, 20, _, 1,
  10, 50, 30, 20, _, _, 1,
  216, 150, 50, 30, 20, _, 1,
  194, 150, 50, 30, 20, _, 1,
  3555, 450, 150, 50, 30, 20, 1,
  2705, 450, 150, 50, 30, 20, 1,
  261, 150, 50, 30, 20, _, 1,
  3831, 450, 150, 50, 30, 20, 1,
  3950, 450, 150, 50, 30, 20, 1,
  3851, 450, 150, 50, 30, 20, 1,
  3702, 450, 150, 50, 30, 20, 1 ;

 dz =
  120, 150, 50, 30, 20, _, 1,
  10, 50, 30, 20, _, _, 1,
  216, 150, 50, 30, 20, _, 1,
  194, 150, 50, 30, 20, _, 1,
  1300, 450, 150, 50, 30, 20, 1,
  1300, 450, 150, 50, 30, 20, 1,
  261, 150, 50, 30, 20, _, 1,
  1300, 450, 150, 50, 30, 20, 1,
  1300, 450, 150, 50, 30, 20, 1,
  1300, 450, 150, 50, 30, 20, 1,
  1300, 450, 150, 50, 30, 20, 1 ;

 numlayers =
  5, 4, 5, 5, 6, 6, 5, 6, 6, 6, 6 ;

 topk =
  _, _, _, _, _, _, _, _, _, _, _ ;

 sedbiodepth =
  _, _, _, _, _, _, _, _, _, _, _ ;

 seddetdepth =
  _, _, _, _, _, _, _, _, _, _, _ ;

 sedoxdepth =
  _, _, _, _, _, _, _, _, _, _, _ ;

 sedbiodens =
  _, _, _, _, _, _, _, _, _, _, _ ;

 sedirrigenh =
  _, _, _, _, _, _, _, _, _, _, _ ;

 sedturbenh =
  _, _, _, _, _, _, _, _, _, _, _ ;

 erosion_rate =
  _, _, _, _, _, _, _, _, _, _, _ ;

 reef =
  0.3, 0.3, 0.1, 0.1, 0.05, 0.05, _, 0.05, 0.05, 0.9, 0.05 ;

 flat =
  0.35, 0.35, _, _, 0.5, 0.2, _, 0.5, 0.5, 0.5, 0.2 ;

 soft =
  0.35, 0.35, _, _, 0.45, 0.2, _, 0.45, 0, 0.45, 0.2 ;

 canyon =
  0.01, 0.01, _, 0.25, _, 0.15, 0.15, _, _, _, 0.15 ;

 eddy =
  _, _, _, _, _, _, _, _, _, _, _ ;

 water =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 NH3 =
  25, 14, 12, 6, 6, _, 15,
  14, 12, 6, 6, _, _, 15,
  25, 14, 12, 6, 6, _, 15,
  25, 14, 12, 6, 6, _, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15,
  25, 14, 12, 6, 6, _, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15 ;

 NO3 =
  25, 14, 12, 6, 6, _, 15,
  14, 12, 6, 6, _, _, 15,
  25, 14, 12, 6, 6, _, 15,
  25, 14, 12, 6, 6, _, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15,
  25, 14, 12, 6, 6, _, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15,
  33, 25, 14, 12, 6, 6, 15 ;

 DON =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 MicroNut =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Oxygen =
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880,
  6880, 6880, 7210, 7540, 7620, 7710, 6880 ;

 Si =
  70, 25, 5, 4, 2, _, 15,
  25, 5, 4, 2, _, _, 15,
  70, 25, 5, 4, 2, _, 15,
  70, 25, 5, 4, 2, _, 15,
  70, 25, 5, 4, 2, 2, 15,
  70, 25, 5, 4, 2, 2, 15,
  70, 25, 5, 4, 2, _, 15,
  70, 25, 5, 4, 2, 2, 15,
  70, 25, 5, 4, 2, 2, 15,
  70, 25, 5, 4, 2, 2, 15,
  70, 25, 5, 4, 2, 2, 15 ;

 Det_Si =
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000,
  _, _, _, _, _, _, 6000 ;

 Light =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Temp =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 salt =
  _, _, 35.1, _, _, 0, _,
  34.83447, 34.85385, 34.84057, 34.8319, 0, 0, 34.83447,
  34.7523, 34.84601, 34.83413, 34.85603, 34.87133, 0, 34.7523000000012,
  34.94989, 35.08659, 35.04713, 35.04848, 35.06302, 0, 34.9498899999998,
  34.53613, 34.94098, 35.21387, 35.21472, 35.21041, 35.20681, 34.5361300000002,
  34.54041, 34.79976, 34.96603, 34.96402, 34.96579, 34.96805, 34.5404100000028,
  _, _, 35.1, _, _, 0, _,
  34.3, 34.4, _, 35.2, 35.2, 35.25, _,
  34.3, 34.4, _, 35.25, 35.25, 35.5, _,
  34.3, 34.4, _, 35.25, 35.25, 35.5, _,
  34.3, 34.4, 34.75, 34.9, 34.9, _, _ ;

 Denitrifiction =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Nitrification =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Chl_a =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Stress =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 DiagNGain =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 DiagNLoss =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 DiagNFlux =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Light_Adaptn_MB =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Light_Adaptn_PL =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Light_Adaptn_DF =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Light_Adaptn_PS =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Cephalopod_N1 =
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001;

 Cephalopod_N2 =
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  0.0001, 0.0001, 0.0001, 0.0001, 0.0001, 0, 0.0001,
  _, 0.0001, _, _, _, _, _ ;

 Prawn_N1 =
  _, _, _, _, _, _, _,
  0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
  0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
  0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Prawn_N2 =
  _, _, _, _, _, _, _,
  0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
  0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
  0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035, 0.0035,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Carniv_Zoo_N =
  _, _, _, 0.2, 1, _, _,
  _, _, 0.2, 1, _, _, _,
  _, _, _, 0.2, 1, _, _,
  _, _, _, 0.2, 1, _, _,
  _, _, _, _, 0.2, 1, _,
  _, _, _, _, 0.2, 1, _,
  _, _, _, 0.2, 1, _, _,
  _, _, _, _, 0.2, 1, _,
  _, _, _, _, 0.2, 1, _,
  _, _, _, _, 0.2, 1, _,
  _, _, _, _, 0.2, 1, _ ;

 Deposit_Feeder_N =
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _ ;

 MicroPB_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Benthic_Carniv_N =
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 60,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 60,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 60,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 60,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 60,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 60,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 60,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _ ;

 Gelat_Zoo_N =
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001,
  _, _, _, _, _, _, 0.0001 ;

 Diatom_N =
  _, _, _, 1, 3, 0, _,
  0.611539372393449, 0.953593094194564, 0.746559632478951, 0.892281486117282,
    0, 0, 824.906351898648,
  0.829437568436782, 1.10131324642923, 1.24705425075649, 0.99184440539908,
    0.93571662719773, 0, 393.699885343471,
  0.643968795844822, 0.868218381630028, 1.0160512535219, 0.799360527404549,
    0.928062604281913, 0, 331.020549598814,
  0.0647182988820705, 0.102216174381123, 0.0116097005885748,
    1.8295672263e-05, 8.146951012e-07, 2.187692879e-07, 28.5214307345921,
  0.0618297418650865, 0.0928200803705412, 0.0091813523679062,
    3.9119218552e-06, 2.02196325e-08, 9.9389372e-09, 27.9329493721483,
  _, _, _, 1, 3, 0, _,
  _, _, _, _, 1, 2, _,
  _, _, _, _, 1, 2, _,
  _, _, _, _, 1, 2, _,
  _, _, _, _, 1, 2, _ ;

 DinoFlag_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 PicoPhytopl_N =
  _, _, 1, 2, _, 0, _,
  1e-08, 5.22313154e-08, 1e-08, 389.645999198404, 0, 0, 0.000999565609123,
  9.08825775608e-05, 0.0004675202326509, 1.217659931e-07, 9.9916575e-09,
    178.986002258261, 0, 0.0009999822373198,
  4.08720042694e-05, 0.0003522553465533, 3.837599932e-06, 9.9916961e-09,
    205.02564542745, 0, 0.0009999331564188,
  0.0008895226486742, 0.0009153224742847, 0.00065430524321,
    0.0001924956122936, 0.0377576939122763, 73.5415373630311,
    0.0009999987714931,
  0.000898093529646, 0.0009235609350532, 0.0007583404341138,
    0.0003391693612405, 0.0714071137731785, 158.981200478574,
    0.000999998745739,
  _, _, 1, 2, _, 0, _,
  _, _, _, _, 1, 2, _,
  _, _, _, _, 1, 2, _,
  _, _, _, _, 1, 2, _,
  _, _, _, _, 1, 2, _ ;

 Zoo_N =
  _, _, _, 0.2, 0.4, _, _,
  _, _, 0.2, 0.4, _, _, _,
  _, _, _, 0.2, 0.4, _, _,
  _, _, _, 0.2, 0.4, _, _,
  _, _, _, _, 0.2, 0.4, _,
  _, _, _, _, 0.2, 0.4, _,
  _, _, _, 0.2, 0.4, _, _,
  _, _, _, _, 0.2, 0.4, _,
  _, _, _, _, 0.2, 0.4, _,
  _, _, _, _, 0.2, 0.4, _,
  _, _, _, _, 0.2, 0.4, _ ;

 MicroZoo_N =
  _, _, _, 0.7, 1.5, _, _,
  _, _, 0.7, 1.5, _, _, _,
  _, _, _, 0.7, 1.5, _, _,
  _, _, _, 0.7, 1.5, _, _,
  _, _, _, _, 0.7, 1.5, _,
  _, _, _, _, 0.7, 1.5, _,
  _, _, _, 0.7, 1.5, _, _,
  _, _, _, _, 0.7, 1.5, _,
  _, _, _, _, 0.7, 1.5, _,
  _, _, _, _, 0.7, 1.5, _,
  _, _, _, _, 0.7, 1.5, _ ;

 Pelag_Bact_N =
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _,
  0.01, 0.01, 0.01, 0.01, 0.01, 0.01, _ ;

 Sed_Bact_N =
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _ ;

 Meiobenth_N =
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _,
  0.001, 0.001, 0.001, 0.001, 0.001, 0.001, _ ;

 Lab_Det_N =
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500,
  _, _, _, _, _, _, 500 ;

 Ref_Det_N =
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _,
  1, 1, 1, 1, 1, 1, _ ;

 Carrion_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth_N =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish1_Nums =
  _, _, _, _, _, _, _,
  7258388.76798719, _, _, _, _, _, _,
  5181794.96142053, _, _, _, _, _, _,
  7270500.00855984, _, _, _, _, _, _,
  9743202.28580699, _, _, _, _, _, _,
  8944112.37254155, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish2_Nums =
  _, _, _, _, _, _, _,
  2951040.47169382, _, _, _, _, _, _,
  2106760.48582771, _, _, _, _, _, _,
  2955964.53435218, _, _, _, _, _, _,
  3961290.19654172, _, _, _, _, _, _,
  3636404.50221668, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish3_Nums =
  _, _, _, _, _, _, _,
  1967360.31446255, _, _, _, _, _, _,
  1404506.99055181, _, _, _, _, _, _,
  1970643.02290146, _, _, _, _, _, _,
  2640860.13102781, _, _, _, _, _, _,
  2424269.66814445, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish4_Nums =
  _, _, _, _, _, _, _,
  1738195.15383265, _, _, _, _, _, _,
  1240904.99668748, _, _, _, _, _, _,
  1741095.48066044, _, _, _, _, _, _,
  2333243.3047255, _, _, _, _, _, _,
  2141882.0730372, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish5_Nums =
  _, _, _, _, _, _, _,
  1599738.18613615, _, _, _, _, _, _,
  1142059.97191455, _, _, _, _, _, _,
  1602407.48570729, _, _, _, _, _, _,
  2147387.42303228, _, _, _, _, _, _,
  1971269.18394801, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish6_Nums =
  _, _, _, _, _, _, _,
  1530057.22272339, _, _, _, _, _, _,
  1092314.43242076, _, _, _, _, _, _,
  1532610.25366547, _, _, _, _, _, _,
  2053852.1022191, _, _, _, _, _, _,
  1885405.17377822, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish7_Nums =
  _, _, _, _, _, _, _,
  1300810.08263279, _, _, _, _, _, _,
  928653.913066825, _, _, _, _, _, _,
  1302980.59517402, _, _, _, _, _, _,
  1746125.23187059, _, _, _, _, _, _,
  1602916.55990053, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish8_Nums =
  _, _, _, _, _, _, _,
  1244149.85067954, _, _, _, _, _, _,
  888203.929767064, _, _, _, _, _, _,
  1246225.82079242, _, _, _, _, _, _,
  1670068.11793974, _, _, _, _, _, _,
  1533097.27936279, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish9_Nums =
  _, _, _, _, _, _, _,
  793304.767808793, _, _, _, _, _, _,
  566343.68592004, _, _, _, _, _, _,
  794628.464457936, _, _, _, _, _, _,
  1064882.17621328, _, _, _, _, _, _,
  977545.735804179, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish10_Nums =
  _, _, _, _, _, _, _,
  505833.616748736, _, _, _, _, _, _,
  361116.794700511, _, _, _, _, _, _,
  506677.643270049, _, _, _, _, _, _,
  678999.073827648, _, _, _, _, _, _,
  623310.882707708, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Planktiv_S_Fish10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish1_Nums =
  _, _, _, _, _, _, _,
  2277528.873, _, _, _, _, _, _,
  225216523.432, _, _, _, _, _, _,
  2281329.123, _, _, _, _, _, _,
  3057210.798, _, _, _, _, _, _,
  2806473.284, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish2_Nums =
  _, _, _, _, _, _, _,
  925973.934, _, _, _, _, _, _,
  37611913.691, _, _, _, _, _, _,
  927519.001, _, _, _, _, _, _,
  1242968.879, _, _, _, _, _, _,
  1141026.636, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish3_Nums =
  _, _, _, _, _, _, _,
  376473.385, _, _, _, _, _, _,
  6373301.045, _, _, _, _, _, _,
  377101.563, _, _, _, _, _, _,
  505354.075, _, _, _, _, _, _,
  463907.4, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish4_Nums =
  _, _, _, _, _, _, _,
  153062.856, _, _, _, _, _, _,
  1116958.881, _, _, _, _, _, _,
  153318.254, _, _, _, _, _, _,
  205461.902, _, _, _, _, _, _,
  188610.919, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish5_Nums =
  _, _, _, _, _, _, _,
  62230.932, _, _, _, _, _, _,
  210432.928, _, _, _, _, _, _,
  62334.771, _, _, _, _, _, _,
  83534.871, _, _, _, _, _, _,
  76683.748, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish6_Nums =
  _, _, _, _, _, _, _,
  25301.439, _, _, _, _, _, _,
  45274.334, _, _, _, _, _, _,
  25343.655, _, _, _, _, _, _,
  33963.052, _, _, _, _, _, _,
  31177.568, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish7_Nums =
  _, _, _, _, _, _, _,
  10286.887, _, _, _, _, _, _,
  11748.628, _, _, _, _, _, _,
  10304.054, _, _, _, _, _, _,
  13808.467, _, _, _, _, _, _,
  12675.964, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish8_Nums =
  _, _, _, _, _, _, _,
  4181.899, _, _, _, _, _, _,
  3675.481, _, _, _, _, _, _,
  4188.878, _, _, _, _, _, _,
  5613.517, _, _, _, _, _, _,
  5153.124, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish9_Nums =
  _, _, _, _, _, _, _,
  1700.995, _, _, _, _, _, _,
  1313.078, _, _, _, _, _, _,
  1703.833, _, _, _, _, _, _,
  2283.308, _, _, _, _, _, _,
  2096.042, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish10_Nums =
  _, _, _, _, _, _, _,
  691.245, _, _, _, _, _, _,
  503.513, _, _, _, _, _, _,
  692.397, _, _, _, _, _, _,
  927.883, _, _, _, _, _, _,
  851.782, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_S_Fish10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish1_Nums =
  _, _, _, _, _, _, _,
  21398.447, _, _, _, _, _, _,
  34689.743, _, _, _, _, _, _,
  21434.152, _, _, _, _, _, _,
  28723.923, _, _, _, _, _, _,
  26368.127, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish2_Nums =
  _, _, _, _, _, _, _,
  8593.639, _, _, _, _, _, _,
  9187.452, _, _, _, _, _, _,
  8607.979, _, _, _, _, _, _,
  11535.559, _, _, _, _, _, _,
  10589.469, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish3_Nums =
  _, _, _, _, _, _, _,
  2588.508, _, _, _, _, _, _,
  2097.232, _, _, _, _, _, _,
  2592.827, _, _, _, _, _, _,
  3474.649, _, _, _, _, _, _,
  3189.676, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish4_Nums =
  _, _, _, _, _, _, _,
  779.909, _, _, _, _, _, _,
  571.078, _, _, _, _, _, _,
  781.211, _, _, _, _, _, _,
  1046.901, _, _, _, _, _, _,
  961.04, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish5_Nums =
  _, _, _, _, _, _, _,
  235.006, _, _, _, _, _, _,
  166.56, _, _, _, _, _, _,
  235.397, _, _, _, _, _, _,
  315.457, _, _, _, _, _, _,
  289.585, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish6_Nums =
  _, _, _, _, _, _, _,
  46.317, _, _, _, _, _, _,
  127.839, _, _, _, _, _, _,
  161.129, _, _, _, _, _, _,
  2.917, _, _, _, _, _, _,
  15.258, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish7_Nums =
  _, _, _, _, _, _, _,
  13.951, _, _, _, _, _, _,
  38.46, _, _, _, _, _, _,
  48.534, _, _, _, _, _, _,
  0.879, _, _, _, _, _, _,
  4.596, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish8_Nums =
  _, _, _, _, _, _, _,
  4.464, _, _, _, _, _, _,
  12.304, _, _, _, _, _, _,
  15.53, _, _, _, _, _, _,
  0.281, _, _, _, _, _, _,
  1.471, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish9_Nums =
  _, _, _, _, _, _, _,
  1.674, _, _, _, _, _, _,
  4.612, _, _, _, _, _, _,
  5.824, _, _, _, _, _, _,
  0.105, _, _, _, _, _, _,
  0.552, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish10_Nums =
  _, _, _, _, _, _, _,
  0.558, _, _, _, _, _, _,
  1.537, _, _, _, _, _, _,
  1.941, _, _, _, _, _, _,
  0.035, _, _, _, _, _, _,
  0.184, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pisciv_T_Fish10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish1_Nums =
  _, _, _, _, _, _, _,
  87085740.011, _, _, _, _, _, _,
  29904808.86115, _, _, _, _, _, _,
  78719508.277, _, _, _, _, _, _,
  14571.567452, _, _, _, _, _, _,
  8279.456659, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish2_Nums =
  _, _, _, _, _, _, _,
  42714924.008, _, _, _, _, _, _,
  26843810.03299, _, _, _, _, _, _,
  38247385.151, _, _, _, _, _, _,
  7305.784689, _, _, _, _, _, _,
  4296.975286, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish3_Nums =
  _, _, _, _, _, _, _,
  21293032.841, _, _, _, _, _, _,
  16373370.34514, _, _, _, _, _, _,
  18829209.205, _, _, _, _, _, _,
  3718.069292, _, _, _, _, _, _,
  2268.95285, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish4_Nums =
  _, _, _, _, _, _, _,
  10797942.967, _, _, _, _, _, _,
  5101033.06302, _, _, _, _, _, _,
  9403122.404, _, _, _, _, _, _,
  1922.363519, _, _, _, _, _, _,
  1218.798052, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish5_Nums =
  _, _, _, _, _, _, _,
  5574057.95, _, _, _, _, _, _,
  1627669.94128, _, _, _, _, _, _,
  4768344.757, _, _, _, _, _, _,
  1010.297485, _, _, _, _, _, _,
  665.605818, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish6_Nums =
  _, _, _, _, _, _, _,
  2929723.4, _, _, _, _, _, _,
  1334138.0444, _, _, _, _, _, _,
  2457322.234, _, _, _, _, _, _,
  539.763905, _, _, _, _, _, _,
  369.176237, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish7_Nums =
  _, _, _, _, _, _, _,
  1567458.579, _, _, _, _, _, _,
  902696.0427, _, _, _, _, _, _,
  1287511.838, _, _, _, _, _, _,
  293.05418, _, _, _, _, _, _,
  207.679462, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish8_Nums =
  _, _, _, _, _, _, _,
  853024.127, _, _, _, _, _, _,
  316899.917, _, _, _, _, _, _,
  685882.766, _, _, _, _, _, _,
  161.563768, _, _, _, _, _, _,
  118.309884, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish9_Nums =
  _, _, _, _, _, _, _,
  471663.277, _, _, _, _, _, _,
  116296.3472, _, _, _, _, _, _,
  371355.02, _, _, _, _, _, _,
  90.344646, _, _, _, _, _, _,
  68.140781, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish10_Nums =
  _, _, _, _, _, _, _,
  264586.771, _, _, _, _, _, _,
  112500.64, _, _, _, _, _, _,
  204176.551, _, _, _, _, _, _,
  51.170976, _, _, _, _, _, _,
  39.614617, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Demersal_S_Fish10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D1_Nums =
  _, _, _, _, _, _, _,
  938603.884, _, _, _, _, _, _,
  1099009.486, _, _, _, _, _, _,
  1793351.056, _, _, _, _, _, _,
  57436.714, _, _, _, _, _, _,
  303075.7, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D2_Nums =
  _, _, _, _, _, _, _,
  457689.495, _, _, _, _, _, _,
  517368.077, _, _, _, _, _, _,
  837616.367, _, _, _, _, _, _,
  28566.127, _, _, _, _, _, _,
  149850.865, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D3_Nums =
  _, _, _, _, _, _, _,
  225462.117, _, _, _, _, _, _,
  242048.186, _, _, _, _, _, _,
  397817.304, _, _, _, _, _, _,
  14161.463, _, _, _, _, _, _,
  74140.88, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D4_Nums =
  _, _, _, _, _, _, _,
  111857.219, _, _, _, _, _, _,
  122400.412, _, _, _, _, _, _,
  198848.9, _, _, _, _, _, _,
  7042.734, _, _, _, _, _, _,
  36847.742, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D5_Nums =
  _, _, _, _, _, _, _,
  55595.13, _, _, _, _, _, _,
  62695.965, _, _, _, _, _, _,
  100388.63, _, _, _, _, _, _,
  3503.807, _, _, _, _, _, _,
  18328.268, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D6_Nums =
  _, _, _, _, _, _, _,
  27673.756, _, _, _, _, _, _,
  32718.434, _, _, _, _, _, _,
  51308.571, _, _, _, _, _, _,
  1744.831, _, _, _, _, _, _,
  9127.224, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D7_Nums =
  _, _, _, _, _, _, _,
  13783.53, _, _, _, _, _, _,
  17239.346, _, _, _, _, _, _,
  26390.078, _, _, _, _, _, _,
  869.533, _, _, _, _, _, _,
  4548.551, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D8_Nums =
  _, _, _, _, _, _, _,
  6875.429, _, _, _, _, _, _,
  9307.651, _, _, _, _, _, _,
  13789.997, _, _, _, _, _, _,
  434.117, _, _, _, _, _, _,
  2270.859, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D9_Nums =
  _, _, _, _, _, _, _,
  3434.233, _, _, _, _, _, _,
  5092.21, _, _, _, _, _, _,
  7281.457, _, _, _, _, _, _,
  217.028, _, _, _, _, _, _,
  1135.334, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D10_Nums =
  _, _, _, _, _, _, _,
  1719.936, _, _, _, _, _, _,
  2882.629, _, _, _, _, _, _,
  3941.563, _, _, _, _, _, _,
  108.841, _, _, _, _, _, _,
  569.415, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Shark_D10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird1_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird2_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird3_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird4_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird5_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird6_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird7_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird8_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird9_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird10_Nums =
  _, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  1, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Seabird10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped1_Nums =
  _, _, _, _, _, _, _,
  532.852, _, _, _, _, _, _,
  374.245, _, _, _, _, _, _,
  533.741, _, _, _, _, _, _,
  94.828, _, _, _, _, _, _,
  44.853, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped2_Nums =
  _, _, _, _, _, _, _,
  436.439, _, _, _, _, _, _,
  306.531, _, _, _, _, _, _,
  437.167, _, _, _, _, _, _,
  77.67, _, _, _, _, _, _,
  36.737, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped3_Nums =
  _, _, _, _, _, _, _,
  357.244, _, _, _, _, _, _,
  250.908, _, _, _, _, _, _,
  357.84, _, _, _, _, _, _,
  63.576, _, _, _, _, _, _,
  30.071, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped4_Nums =
  _, _, _, _, _, _, _,
  292.682, _, _, _, _, _, _,
  205.562, _, _, _, _, _, _,
  293.17, _, _, _, _, _, _,
  52.086, _, _, _, _, _, _,
  24.636, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped5_Nums =
  _, _, _, _, _, _, _,
  240.17, _, _, _, _, _, _,
  168.683, _, _, _, _, _, _,
  240.571, _, _, _, _, _, _,
  42.742, _, _, _, _, _, _,
  20.216, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped6_Nums =
  _, _, _, _, _, _, _,
  196.269, _, _, _, _, _, _,
  137.849, _, _, _, _, _, _,
  196.596, _, _, _, _, _, _,
  34.929, _, _, _, _, _, _,
  16.521, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped7_Nums =
  _, _, _, _, _, _, _,
  160.975, _, _, _, _, _, _,
  113.059, _, _, _, _, _, _,
  161.243, _, _, _, _, _, _,
  28.648, _, _, _, _, _, _,
  13.55, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped8_Nums =
  _, _, _, _, _, _, _,
  131.707, _, _, _, _, _, _,
  92.504, _, _, _, _, _, _,
  131.925, _, _, _, _, _, _,
  23.439, _, _, _, _, _, _,
  11.086, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped9_Nums =
  _, _, _, _, _, _, _,
  103.299, _, _, _, _, _, _,
  72.553, _, _, _, _, _, _,
  103.472, _, _, _, _, _, _,
  18.383, _, _, _, _, _, _,
  8.695, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped10_Nums =
  _, _, _, _, _, _, _,
  93.83, _, _, _, _, _, _,
  65.9, _, _, _, _, _, _,
  93.988, _, _, _, _, _, _,
  16.698, _, _, _, _, _, _,
  7.898, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Pinniped10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen1_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen2_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen3_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen4_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen5_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen6_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen7_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen8_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen9_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen10_Nums =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Baleen10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth1_Nums =
  _, _, _, _, _, _, _,
  18.08, _, _, _, _, _, _,
  12.9, _, _, _, _, _, _,
  18.12, _, _, _, _, _, _,
  24.27, _, _, _, _, _, _,
  22.28, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth1_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth1_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth2_Nums =
  _, _, _, _, _, _, _,
  12.05, _, _, _, _, _, _,
  8.61, _, _, _, _, _, _,
  12.08, _, _, _, _, _, _,
  16.18, _, _, _, _, _, _,
  14.85, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth2_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth2_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth3_Nums =
  _, _, _, _, _, _, _,
  8.61, _, _, _, _, _, _,
  6.14, _, _, _, _, _, _,
  8.61, _, _, _, _, _, _,
  11.56, _, _, _, _, _, _,
  10.61, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth3_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth3_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth4_Nums =
  _, _, _, _, _, _, _,
  6.03, _, _, _, _, _, _,
  4.3, _, _, _, _, _, _,
  6.05, _, _, _, _, _, _,
  8.09, _, _, _, _, _, _,
  7.43, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth4_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth4_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth5_Nums =
  _, _, _, _, _, _, _,
  4.31, _, _, _, _, _, _,
  3.08, _, _, _, _, _, _,
  4.32, _, _, _, _, _, _,
  5.78, _, _, _, _, _, _,
  5.3, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth5_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth5_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth6_Nums =
  _, _, _, _, _, _, _,
  2.57, _, _, _, _, _, _,
  1.85, _, _, _, _, _, _,
  2.6, _, _, _, _, _, _,
  3.47, _, _, _, _, _, _,
  3.18, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth6_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth6_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth7_Nums =
  _, _, _, _, _, _, _,
  1.72, _, _, _, _, _, _,
  1.23, _, _, _, _, _, _,
  1.72, _, _, _, _, _, _,
  2.31, _, _, _, _, _, _,
  2.12, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth7_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth7_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth8_Nums =
  _, _, _, _, _, _, _,
  1.72, _, _, _, _, _, _,
  1.23, _, _, _, _, _, _,
  1.72, _, _, _, _, _, _,
  2.31, _, _, _, _, _, _,
  2.12, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth8_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth8_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth9_Nums =
  _, _, _, _, _, _, _,
  0.86, _, _, _, _, _, _,
  0.61, _, _, _, _, _, _,
  0.86, _, _, _, _, _, _,
  1.16, _, _, _, _, _, _,
  1.06, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth9_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth9_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth10_Nums =
  _, _, _, _, _, _, _,
  0.86, _, _, _, _, _, _,
  0.61, _, _, _, _, _, _,
  0.86, _, _, _, _, _, _,
  1.16, _, _, _, _, _, _,
  1.06, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth10_ResN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Whale_Tooth10_StructN =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 MicroPB_S =
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _,
  _, _, _, _, _, _, _ ;

 Diatom_S =
  _, _, _, 3, 9, 0, _,
  1.83461811718036, 2.8607792825837, 2.23967889743686, 2.67684445835185, 0,
    0, 2474.71905569595,
  2.48831270531034, 3.30393973928768, 3.74116275226943, 2.97553321619721,
    2.80714988159318, 0, 1181.09965603042,
  1.93190638753446, 2.60465514489011, 3.04815376056572, 2.39808158221365,
    2.78418781284574, 0, 993.061648796432,
  0.194154896646212, 0.306648523143369, 0.0348291017657244,
    5.48870167891e-05, 2.4440853037e-06, 6.563078636e-07, 85.5642922037767,
  0.185489225595195, 0.278460241101981, 0.0275440567133117,
    1.17316286389e-05, 4.81875123e-08, 9.9389369e-09, 83.7988481164453,
  _, _, _, 3, 9, 0, _,
  _, _, _, _, 3, 6, _,
  _, _, _, _, 3, 6, _,
  _, _, _, _, 3, 6, _,
  _, _, _, _, 3, 6, _ ;


 Filter_Shallow_N =
  0.5, 0.5, 0.5, 0.5, _, _, _, _, _, _, _ ;

 Filter_Other_N =
  5, 5, 5, 5, _, _, _, _, _, _, _ ;

 Macrobenth_Deep_N =
  _, _, _, _, 18, 18, _, 18, 18, 18, 18 ;

 Megazoobenthos_N =
  1, 1, 1, 1, _, _, 1, _, _, _, _ ;

 Macrobenth_Shallow_N =
  8, 8, 8, 8, _, _, 8, _, _, _, _ ;

 Macroalgae_N =
  100, 100, 100, 100, _, _, 100, _, _, _, _ ;

 Seagrass_N =
  1, 1, 1, 1, _, _, 1, _, _, _, _ ;

 Filter_Shallow_Cover =
  0.01, 0.01, 0.01, 0.01, _, _, _, _, _, _, _ ;

 Filter_Other_Cover =
  0.03, 0.03, 0.03, 0.03, _, _, _, _, _, _, _ ;

 Benthic_grazer_N =
  1, 1, 1, 1, _, _, 1, _, _, _, _ ;

 Macroalgae_Cover =
  0.05, 0.05, 0.05, 0.05, _, _, 0.05, _, _, _, _ ;

 MicroPB_Cover =
  _, _, _, _, _, _, _, _, _, _, _ ;

 Seagrass_Cover =
  0.01, 0.01, 0.01, 0.01, _, _, 0.01, _, _, _, _ ;
}
