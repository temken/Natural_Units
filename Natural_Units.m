(* ::Package:: *)

(* ::Input::Initialization:: *)
BeginPackage["NaturalUnits`"]

InUnits::usage="InUnits[n,unit] converts a number n in natural units into a specified unit.";
ReducedMass::usage="ReducedMass[m1,m2] computes the reduced mass of a two body problem.";


(* ::Section::Initialization:: *)
(*(*Natural Units*)*)


(* ::Subsection::Initialization:: *)
(*(*SI-Prefixes*)*)


yotta = 10^24;
zetta = 10^21;
exa = 10^18;
peta = 10^15;
tera = 10^12;
giga = 10^9;
mega = 10^6;
kilo = 10^3;
hecto = 10^2;
deca = 10;
deci = 10^-1;
centi = 10^-2;
milli = 10^-3;
micro = 10^-6;
nano = 10^-9;
pico = 10^-12;
femto = 10^-15;
atto = 10^-18;
zepto = 10^-21;
yocto = 10^-24;


(* ::Subsection::Initialization:: *)
(*(*Units*)*)


(* ::Text:: *)
(*Angles*)


arcmin = \[Degree]/60;
arcsec = arcmin / 60;


(* ::Text:: *)
(*Energy*)


GeV = 1;
meV = 10^-3 GeV;
eV = 10^-9 GeV;
keV = 10^-6 GeV;
MeV = 10^-3 GeV;
TeV = 10^3 GeV;
Joule = 1/(1.602176634 10^-10)GeV;
erg = gram (cm/sec)^2;
Rydberg = 13.605693009eV;
cal = 4.184 Joule;


(* ::Text:: *)
(*Mass*)


gram = 5.617977528089887 10^23 GeV;
kg = 10^3 gram;
lbs = 0.453592kg;
AMU = 0.9314940954;
m\[Earth] = 5.9724 10^24 kg;
m\[Sun] = 1.98848 10^30  kg;


(* ::Text:: *)
(*Length*)


cm = 5.068 10^13 GeV^-1;
mm = 10^-1 cm;
meter = 100 cm;
km = 10^3 meter;
fm = 10^-15 meter;
inch = 2.54 cm;
foot = 12 inch;
yard = 3 foot;
mile = 1609.34 meter;
\[Angstrom] = 10^-10 meter;
a0 = 5.291772083 10^-11 meter;
pc = 3.08567758 10^16 meter;
kpc = 10^3 pc;
Mpc = 10^6 pc;
LightYear = 365.25 day;
AU = 149597870700 meter; 
r\[Earth] = 6371 km;
r\[Sun] = 695510 km;


(* ::Text:: *)
(*Area*)


barn = 10^-24 cm^2;
pb = 10^-36 cm^2;
acre = 4046.86 meter^2;
hectare = 10000 meter^2


(* ::Text:: *)
(*Time*)


sec=299792458 meter;
ms=10^-3 sec;
\[Mu]s = 10^-6 sec;
ns=10^-9 sec;
min=60sec;
hr=3600 sec;
day=24hr;
week = 7 day;
yr=365.25 day;


(* ::Text:: *)
(*Frequency*)


Hz=1/sec;


(* ::Text:: *)
(*Force*)


Newton=kg meter/sec^2;
dyne = 10^-5 Newton;


(* ::Text:: *)
(*Power*)


Watt=Joule/sec;


(* ::Text:: *)
(*Pressure*)


Pa = Newton/meter^2;
hPa = 100 Pa;
kPa = 10^3 Pa;
bar = 100000 Pa;
barye = dyne / cm^2;


(* ::Text:: *)
(*Temperature*)


Kelvin=8.6173303 10^-14 GeV;


(* ::Text:: *)
(*Electric charge*)


ElementaryCharge=0.30282212;
Coulomb = ElementaryCharge/(1.602176565 10^-19);


(* ::Text:: *)
(*Voltage*)


Volt = Joule/Coulomb;


(* ::Text:: *)
(*Electric current*)


Ampere = Coulomb / sec;


(* ::Text:: *)
(*Electrical capacitance*)


Farad=Coulomb/Volt;


(* ::Text:: *)
(*Magnetic induction / magnetic flux density*)


Tesla =(Newton sec)/(Coulomb meter);
Gauss = 10^-4 Tesla;


(* ::Text:: *)
(*Magnetic flux*)


Weber = Tesla meter^2 ;


(* ::Text:: *)
(*Electrical resistance / conductance*)


Ohm = Volt/Ampere;
Siemens = 1 / Ohm;


(* ::Text:: *)
(*Amount*)


mole = 6.02214076 10^23;


(* ::Subsection::Initialization:: *)
(*(*Physical Constants*)*)


(* ::Text:: *)
(*Hadron masses*)


mProton=938.2720813MeV;
mNeutron = 939.5654133 MeV;
mNucleon=0.932 GeV;


(* ::Text:: *)
(*Quark masses*)


mUpQuark = 2.3 MeV;
mDownQuark = 4.8 MeV
mCharmQuark = 1.275 GeV;
mStrangeQuark = 95 MeV;
mTopQuark = 173.210 GeV;
mBottomQuark = 4.180 GeV;


(* ::Text:: *)
(*Lepton masses*)


mElectron = 0.5109989461 MeV;
mMuon = 105.6583745 MeV;
mTau = 1776.86 MeV;


(* ::Text:: *)
(*Boson masses*)


mZ = 91.1876 GeV;
mW = 80.379 GeV;
mHiggs = 125.18 GeV;


(* ::Text:: *)
(*Coupling constants*)


\[Alpha]EM = 1/137.035999139;
mPlanck=1.22091 10^19 GeV;
mPlanckRed = mPlanck / Sqrt[8 \[Pi]];
GNewton=mPlanck^-2;
GFermi=1.1663787 10^-5 GeV^-2;


(* ::Text:: *)
(*Energy scales*)


HiggsVEV = (Sqrt[2]GFermi)^-0.5
QCDscale = 218 MeV;


(* ::Subsection::Initialization:: *)
(*(*Functions*)*)


Begin["`Private`"]


(* ::Input::Initialization:: *)
InUnits[number_,units_]:=number/units
ReducedMass[m1_m2 _]:=m1 m2 / (m1+m2)


End[]


Print[
"Natural_Units package for Mathematica by Timon Emken (2019). All dimensionful quantities are given in powers of GeV. [https://github.com/temken/Natural_Units]"]
EndPackage[]
