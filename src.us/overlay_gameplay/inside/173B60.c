#include <ultra64.h>
#include "common.h"
#include "core/53F0.h"
#include "core/1B100.h"
#include "core/12C80.h"
#include "core/1050.h"
#include "version_shift.h"

// ============================================================
// UI & pause menu data (ROM 0x18A770 - 0x18C440)
// ============================================================

char D_800A26B0_18A770[0x800] =
	"Grenades\0"
	"Health\0"
	"Fuel\0"
	"Pistol\0"
	"Shotgun\0"
	"Rifle \0"
	"Machine Gun \0"
	"Rocket Launcher \0"
	"Dynamite \0"
	"Power Core  \0"
	"Shield \0"
	"Shotgun Ammo \0"
	"Shotgun Ammo \0"
	"Rocket Launcher Ammo \0"
	"Rocket Launcher Ammo \0"
	"Special Weapon Ammo \0"
	"Special Weapon Ammo \0"
	"Machine Gun Ammo \0"
	"Rifle Ammo \0"
	"Weapon Crystal \0"
	"Alien Artifact \0"
	"-not definedg0- \0"
	"Howitzer Shells \0"
	"-not definedg2- \0"
	"-not definedg3- \0"
	"Access Card \0"
	"-not definedg5- \0"
	"Crank \0"
	"Windmill Cog \0"
	"Hieroglyph Map Piece \0"
	"-not defined greece 9-\0"
	"Hangar Key \0"
	"-not definedj0- \0"
	"Airboat Engine Parts  \0"
	"Tank Factory Unlocked \0"
	"Rua-Rua Idol \0"
	"Swamp Fever Medicine \0"
	"Kris Knife Handle \0"
	"Kris Knife Hilt \0"
	"Kris Knife Blade \0"
	"-not definedj8- \0"
	"Aircraft Factory Unlocked \0"
	"-not definedj10- \0"
	"-not definedu0- \0"
	"Red Access Card \0"
	"Green Access Card \0"
	"-not definedu3- \0"
	"Nitro Fuel \0"
	"Totem Pole Section \0"
	"Totem Pole Section \0"
	"Totem Pole Section \0"
	"Translator \0"
	"-not definedu9- \0"
	"-not definedu10- \0"
	"-not defineds0- \0"
	"-not defineds1- \0"
	"-not defineds2- \0"
	"Train Starting Handle \0"
	"Access Card \0"
	"Missile Launch Code \0"
	"Reactor Key \0"
	"-not defineds7- \0"
	"-not defineds8- \0"
	"-not defineds9- \0"
	"-not defineds10- \0"
	"-not definedc0- \0"
	"-not definedc1- \0"
	"-not definedc2- \0"
	"-not definedc3- \0"
	"-not definedc4- \0"
	"-not definedc5- \0"
	"-not definedc6- \0"
	"-not definedc7- \0"
	"-not definedc8- \0"
	"-not definedc9- \0"
	"-not definedc10- @;\0"
	"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
;
// English UI weapon/item name table (indexed by D_800A2EB0_18AF70)

u16 D_800A2EB0_18AF70[0x80] = {
	0x0000,0x0009,0x0010,0x0015,0x001C,0x0024,0x002B,0x0038,
	0x0049,0x0053,0x0060,0x0068,0x0076,0x0084,0x009A,0x00B0,
	0x00C5,0x00DA,0x00EC,0x00F8,0x0108,0x0118,0x0129,0x013A,
	0x014B,0x015C,0x0169,0x017A,0x0181,0x018F,0x01A5,0x01BC,
	0x01C8,0x01D9,0x01F0,0x0207,0x0215,0x022B,0x023E,0x024F,
	0x0261,0x0272,0x028D,0x029F,0x02B0,0x02C1,0x02D4,0x02E5,
	0x02F1,0x0305,0x0319,0x032D,0x0339,0x034A,0x035C,0x036D,
	0x037E,0x038F,0x03A6,0x03B3,0x03C8,0x03D5,0x03E6,0x03F7,
	0x0408,0x041A,0x042B,0x043C,0x044D,0x045E,0x046F,0x0480,
	0x0491,0x04A2,0x04B3,0x04C4,0x048C,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};
// English string offsets into D_800A26B0_18A770

char D_800A2FB0_18B070[0x800] =
	"Grenades\0"
	"Sant\351\0"
	"Carburant\0"
	"Pistolet\0"
	"Fusil\0"
	"Carabine \0"
	"Mitraillette \0"
	"Lance-roquettes \0"
	"Dynamite \0"
	"Centre Energie  \0"
	"Bouclier \0"
	"Balles fusil \0"
	"Balles fusil \0"
	"Roquettes \0"
	"Roquettes \0"
	"Munitions sp\351ciales \0"
	"Munitions sp\351ciales \0"
	"Balles mitraillette \0"
	"Balles carabine \0"
	"Cristaux \0"
	"Relique Alien \0"
	"-pas d\351finig0- \0"
	"Obus Howitzer \0"
	"-pas d\351finig2- \0"
	"-pas d\351finig3- \0"
	"Carte d'acc\350s \0"
	"-pas d\351finig5- \0"
	"Manivelle \0"
	"Engrenage \0"
	"Carte hi\351roglyphe \0"
	"-pas d\351fini Gr\350ce 9-\0"
	"Clef Hangar \0"
	"-pas d\351finij0- \0"
	"Pi\350ce a\351roglisseur  \0"
	"Usine Tanks ouverte \0"
	"Idole Rua-Rua\0"
	"Potion anti-fi\350vre \0"
	"Pommeau du sabre \0"
	"Garde du sabre \0"
	"Lame du sabre \0"
	"-pas d\351finij8- \0"
	"Usine d'avions ouverte \0"
	"-pas d\351finij10- \0"
	"-pas d\351finiu0- \0"
	"Carte d'acc\350s rouge \0"
	"Carte d'acc\350s verte \0"
	"-pas d\351finiu3- \0"
	"Nitro-carburant \0"
	"Morceau du totem \0"
	"Morceau du totem \0"
	"Morceau du totem \0"
	"D\351codeur\0"
	"-pas d\351finiu9- \0"
	"-pas d\351finiu10- \0"
	"-pas d\351finis0- \0"
	"-pas d\351finis1- \0"
	"-pas d\351finis2- \0"
	"Manivelle Train \0"
	"Carte d'acc\350s\0"
	"Code Missile \0"
	"Clef r\351acteur \0"
	"-pas d\351finis7- \0"
	"-pas d\351finis8- \0"
	"-pas d\351finis9- \0"
	"-pas d\351finis10- \0"
	"-pas d\351finic0- \0"
	"-pas d\351finic1- \0"
	"-pas d\351finic2- \0"
	"-pas d\351finic3- \0"
	"-pas d\351finic4- \0"
	"-pas d\351finic5- \0"
	"-pas d\351finic6- \0"
	"-pas d\351finic7- \0"
	"-pas d\351finic8- \0"
	"-pas d\351finic9- \0"
	"-pas d\351finic10- @;\0"
	"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
;
// French UI weapon/item name table (indexed by D_800A37B0_18B870)

u16 D_800A37B0_18B870[0x80] = {
	0x0000,0x0009,0x000F,0x0019,0x0022,0x0028,0x0032,0x0040,
	0x0051,0x005B,0x006C,0x0076,0x0084,0x0092,0x009D,0x00A8,
	0x00BD,0x00D2,0x00E7,0x00F8,0x0102,0x0111,0x0121,0x0130,
	0x0140,0x0150,0x015F,0x016F,0x017A,0x0185,0x0198,0x01AD,
	0x01BA,0x01CA,0x01DF,0x01F4,0x0202,0x0216,0x0228,0x0238,
	0x0247,0x0257,0x026F,0x0280,0x0290,0x02A5,0x02BA,0x02CA,
	0x02DB,0x02ED,0x02FF,0x0311,0x031A,0x032A,0x033B,0x034B,
	0x035B,0x036B,0x037C,0x038A,0x0398,0x03A7,0x03B7,0x03C7,
	0x03D7,0x03E8,0x03F8,0x0408,0x0418,0x0428,0x0438,0x0448,
	0x0458,0x0468,0x0478,0x0488,0x044F,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};
// French string offsets into D_800A2FB0_18B070

char D_800A38B0_18B970[0x800] =
	"Granaten\0"
	"Gesundheit\0"
	"Sprit\0"
	"Pistole\0"
	"Schrotflinte\0"
	"Gewehr\0"
	"Maschinengewehr\0"
	"Raketenwerfer\0"
	"Dynamit \0"
	"Energiezelle\0"
	"Schilde\0"
	"Schrotflinten-Muni. \0"
	"Schrotflinten-Muni.\0"
	"Raketenwerfer-Muni.\0"
	"Raketenwerfer-Muni.\0"
	"Spezialwaffen-Muni.\0"
	"Spezialwaffen-Muni.\0"
	"Maschinengewehr-Muni. \0"
	"Gewehr-Muni.\0"
	"Waffenkristall\0"
	"Alien-Artefakt \0"
	"-not definedg0- \0"
	"Haubitzen-Muni.\0"
	"-not definedg2- \0"
	"-not definedg3- \0"
	"Zugangskarte\0"
	"-not definedg5- \0"
	"Kurbel\0"
	"Zahnrad\0"
	"Hieroglyphen-Kartenteil\0"
	"-not defined greece 9-\0"
	"Hangarschl\374ssel\0"
	"-not definedj0- \0"
	"Airboat-Antriebsteil\0"
	"Panzerfabrik aufgeschlossen\0"
	"Rua-Rua-G\366tze\0"
	"Sumpffieber-Munition\0"
	"Kris'-Messer-Griff \0"
	"Kris'-Messer-Heft\0"
	"Kris'-Messer-Klinge \0"
	"-not definedj8- \0"
	"Flugzeugfabrik aufgeschlossen\0"
	"-not definedj10- \0"
	"-not definedu0- \0"
	"Rote Zugangskarte\0"
	"Gr\374ne Zugangskarte\0"
	"-not definedu3- \0"
	"Nitro-Sprit\0"
	"Totempfahl-Teil\0"
	"Totempfahl-Teil\0"
	"Totempfahl-Teil\0"
	"\334bersetzer \0"
	"-not definedu9- \0"
	"-not definedu10- \0"
	"-not defineds0- \0"
	"-not defineds1- \0"
	"-not defineds2- \0"
	"Zug-Startkurbel\0"
	"Zugangskarte\0"
	"Raketenabschu\337code\0"
	"Reaktorschl\374ssel\0"
	"-not defineds7- \0"
	"-not defineds8- \0"
	"-not defineds9- \0"
	"-not defineds10- \0"
	"-not definedc0- \0"
	"-not definedc1- \0"
	"-not definedc2- \0"
	"-not definedc3- \0"
	"-not definedc4- \0"
	"-not definedc5- \0"
	"-not definedc6- \0"
	"-not definedc7- \0"
	"-not definedc8- \0"
	"-not definedc9- \0"
	"-not definedc10- @;\0"
	"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
;
// German UI weapon/item name table (indexed by D_800A40B0_18C170)

u16 D_800A40B0_18C170[0x80] = {
	0x0000,0x0009,0x0014,0x001A,0x0022,0x002F,0x0036,0x0046,
	0x0054,0x005D,0x006A,0x0072,0x0087,0x009B,0x00AF,0x00C3,
	0x00D7,0x00EB,0x0102,0x010F,0x011E,0x012E,0x013F,0x014F,
	0x0160,0x0171,0x017E,0x018F,0x0196,0x019E,0x01B6,0x01CD,
	0x01DD,0x01EE,0x0203,0x021F,0x022D,0x0242,0x0256,0x0268,
	0x027D,0x028E,0x02AC,0x02BE,0x02CF,0x02E1,0x02F4,0x0305,
	0x0311,0x0321,0x0331,0x0341,0x034D,0x035E,0x0370,0x0381,
	0x0392,0x03A3,0x03B3,0x03C0,0x03D3,0x03E4,0x03F5,0x0406,
	0x0417,0x0429,0x043A,0x044B,0x045C,0x046D,0x047E,0x048F,
	0x04A0,0x04B1,0x04C2,0x04D3,0x049B,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};
// German string offsets into D_800A38B0_18B970

u8 D_800A41B0_18C270[0xCC] = {
	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,
	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,
	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,
	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,
	0x00,0x00,0x00,0x00,0x03,0x02,0x03,0x03,0x00,0x80,0x00,0x80,0x00,0x80,0x00,0x00,
	0x00,0x00,0x67,0xC1,0xFB,0x01,0x34,0x01,0x81,0x81,0xFF,0xFF,0x66,0x66,0x77,0x77,
	0x88,0x88,0x99,0x99,0xAA,0xAA,0xBB,0xBB,0xCC,0xCC,0xDD,0xDD,0xEE,0xEE,0xFF,0xFF,
	0x00,0x01,0x00,0x00,OVERLAY_PTR_B3(0x800A54E0),OVERLAY_PTR_B2(0x800A54E0),OVERLAY_PTR_B1(0x800A54E0),OVERLAY_PTR_B0(0x800A54E0),OVERLAY_PTR_B3(0x800A54E8),OVERLAY_PTR_B2(0x800A54E8),OVERLAY_PTR_B1(0x800A54E8),OVERLAY_PTR_B0(0x800A54E8),OVERLAY_PTR_B3(0x800A54F0),OVERLAY_PTR_B2(0x800A54F0),OVERLAY_PTR_B1(0x800A54F0),OVERLAY_PTR_B0(0x800A54F0),
	OVERLAY_PTR_B3(0x800A54F4),OVERLAY_PTR_B2(0x800A54F4),OVERLAY_PTR_B1(0x800A54F4),OVERLAY_PTR_B0(0x800A54F4),OVERLAY_PTR_B3(0x800A54FC),OVERLAY_PTR_B2(0x800A54FC),OVERLAY_PTR_B1(0x800A54FC),OVERLAY_PTR_B0(0x800A54FC),OVERLAY_PTR_B3(0x800A5500),OVERLAY_PTR_B2(0x800A5500),OVERLAY_PTR_B1(0x800A5500),OVERLAY_PTR_B0(0x800A5500),OVERLAY_PTR_B3(0x800A5504),OVERLAY_PTR_B2(0x800A5504),OVERLAY_PTR_B1(0x800A5504),OVERLAY_PTR_B0(0x800A5504),
	OVERLAY_PTR_B3(0x800A550C),OVERLAY_PTR_B2(0x800A550C),OVERLAY_PTR_B1(0x800A550C),OVERLAY_PTR_B0(0x800A550C),OVERLAY_PTR_B3(0x800A5518),OVERLAY_PTR_B2(0x800A5518),OVERLAY_PTR_B1(0x800A5518),OVERLAY_PTR_B0(0x800A5518),OVERLAY_PTR_B3(0x800A551C),OVERLAY_PTR_B2(0x800A551C),OVERLAY_PTR_B1(0x800A551C),OVERLAY_PTR_B0(0x800A551C),OVERLAY_PTR_B3(0x800A5528),OVERLAY_PTR_B2(0x800A5528),OVERLAY_PTR_B1(0x800A5528),OVERLAY_PTR_B0(0x800A5528),
	OVERLAY_PTR_B3(0x800A5534),OVERLAY_PTR_B2(0x800A5534),OVERLAY_PTR_B1(0x800A5534),OVERLAY_PTR_B0(0x800A5534),0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x00,0x00,0x13,0x88,0xFF,0xFF,0xFF,0x9C,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};
// HUD icon/sprite texture blob (IA texture + frame pointers)

u8 D_800A427C_18C33C[0x10] = {
	0x00,0x00,0x00,0x02,0x00,0x00,0x02,0x00,0x03,0x00,0x00,0x00,0x0F,0x11,0x04,0x00,
};
// Pause menu texture indices

char *D_800A428C_18C34C[15] = {
	(char *)D_800A5540_18D600,(char *)D_800A5550_18D610,(char *)D_800A5558_18D618,(char *)D_800A5560_18D620,
	(char *)D_800A5564_18D624,(char *)D_800A556C_18D62C,(char *)D_800A5574_18D634,(char *)D_800A5584_18D644,
	(char *)D_800A558C_18D64C,(char *)D_800A5594_18D654,(char *)D_800A559C_18D65C,(char *)D_800A55A4_18D664,
	(char *)D_800A55AC_18D66C,(char *)D_800A55B8_18D678,(char *)D_800A55C4_18D684,
};
// Pause menu label pointers (English)

char *D_800A42C8_18C388[15] = {
	(char *)D_800A55CC_18D68C,(char *)D_800A55DC_18D69C,(char *)D_800A55E8_18D6A8,(char *)D_800A55F0_18D6B0,
	(char *)D_800A55F8_18D6B8,(char *)D_800A5600_18D6C0,(char *)D_800A5608_18D6C8,(char *)D_800A5618_18D6D8,
	(char *)D_800A5620_18D6E0,(char *)D_800A5628_18D6E8,(char *)D_800A5630_18D6F0,(char *)D_800A5638_18D6F8,
	(char *)D_800A5640_18D700,(char *)D_800A564C_18D70C,(char *)D_800A5658_18D718,
};
// Pause menu label pointers (French)

char *D_800A4304_18C3C4[15] = {
	(char *)D_800A5660_18D720,(char *)D_800A5670_18D730,(char *)D_800A5678_18D738,(char *)D_800A5680_18D740,
	(char *)D_800A5688_18D748,(char *)D_800A5690_18D750,(char *)D_800A5698_18D758,(char *)D_800A56A0_18D760,
	(char *)D_800A56A8_18D768,(char *)D_800A56B0_18D770,(char *)D_800A56B8_18D778,(char *)D_800A56C0_18D780,
	(char *)D_800A56C8_18D788,(char *)D_800A56D4_18D794,(char *)D_800A56E0_18D7A0,
};
// Pause menu label pointers (German)

s32 D_800A4340_18C400 = 4;

s32 D_800A4344_18C404 = 0;

s16 D_800A4348_18C408 = 0;

u8 pad_18C49C[0x8] = {
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};
// padding before D_800A4354 (2 bytes auto-aligned)

Unk800A4354 D_800A4354_18C414 = { 0x0110, 0x0028, 0xFFFF };

Unk800A4354 D_800A435C_18C41C = { 0, 0, 0 };

Unk800A4354 D_800A4364_18C424 = { 0, 0, 0 };

u16 D_800A436C_18C42C = 0x0000;

s16 D_800A4370_18C430 = 0x0000;

u8 pad_18C4C4[0xC] = {
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};
// trailing padding (2 bytes auto-aligned)

// ============================================================
// 173B60 rodata
// ============================================================

const char D_800A54E0_18D5A0[] = "Wave"; // "Wave"
const char D_800A54E8_18D5A8[] = "landed"; // "landed"
const char D_800A54F0_18D5B0[] = ""; // ""
const char D_800A54F4_18D5B4[] = "Mutant"; // "Mutant"
const char D_800A54FC_18D5BC[] = "";
const char D_800A5500_18D5C0[] = "";
const char D_800A5504_18D5C4[] = "New";
const char D_800A5508_18D5C8[] = "";
const char D_800A550C_18D5CC[] = "mission";
const char D_800A5514_18D5D4[] = "";
const char D_800A5518_18D5D8[] = "";
const char D_800A551C_18D5DC[] = "Destroy";
const char D_800A5524_18D5E4[] = "";
const char D_800A5528_18D5E8[] = "Harvester";
const char D_800A5534_18D5F4[] = "";
const char D_800A5538_18D5F8[] = "%Y%a";
const char D_800A5540_18D600[] = "Change Weapon";
const char D_800A5550_18D610[] = "Refuel";
const char D_800A5558_18D618[] = "Unhitch";
const char D_800A5560_18D620[] = "Map";
const char D_800A5564_18D624[] = "Auto";
const char D_800A556C_18D62C[] = "Unload";
const char D_800A5574_18D634[] = "Leave Building";
const char D_800A5584_18D644[] = "Exit";
const char D_800A558C_18D64C[] = "Play";
const char D_800A5594_18D654[] = "Print";
const char D_800A559C_18D65C[] = "Save";
const char D_800A55A4_18D664[] = "Nowt 2";
const char D_800A55AC_18D66C[] = "Clue Screen";
const char D_800A55B8_18D678[] = "Inventory";
const char D_800A55C4_18D684[] = "Quit";
const char D_800A55CC_18D68C[] = "Change Weapon";
const char D_800A55DC_18D69C[] = "Carburant";
const char D_800A55E8_18D6A8[] = "Unhitch";
const char D_800A55F0_18D6B0[] = "Carte";
const char D_800A55F8_18D6B8[] = "Auto";
const char D_800A5600_18D6C0[] = "Unload";
const char D_800A5608_18D6C8[] = "Leave Building";
const char D_800A5618_18D6D8[] = "Exit";
const char D_800A5620_18D6E0[] = "Jouer";
const char D_800A5628_18D6E8[] = "Print";
const char D_800A5630_18D6F0[] = "Save";
const char D_800A5638_18D6F8[] = "Nowt 2";
const char D_800A5640_18D700[] = "Clue Screen";
const char D_800A564C_18D70C[] = "Inventaire";
const char D_800A5658_18D718[] = "Quitter";
const char D_800A5660_18D720[] = "Change Weapon";
const char D_800A5670_18D730[] = "Tanken";
const char D_800A5678_18D738[] = "Unhitch";
const char D_800A5680_18D740[] = "Karte";
const char D_800A5688_18D748[] = "Auto";
const char D_800A5690_18D750[] = "Unload";
const char D_800A5698_18D758[] = "Load";
const char D_800A56A0_18D760[] = "Exit";
const char D_800A56A8_18D768[] = "Spielen";
const char D_800A56B0_18D770[] = "Print";
const char D_800A56B8_18D778[] = "Save";
const char D_800A56C0_18D780[] = "Nowt 2";
const char D_800A56C8_18D788[] = "Clue Screen";
const char D_800A56D4_18D794[] = "Inventar";
const char D_800A56E0_18D7A0[] = "Verlassen";

const u8 D_800A56EC_18D7AC[] = {
	0x20, 0x00, 0x00, 0x00,
};

const u8 D_800A56F0_18D7B0[] = {
	0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

// AI - Initialize HUD state variables to default values
void func_8008BAA0_173B60(void) {
	D_8004794A = 0;
	D_800FCF22 = 0x80;
	D_800FCF24 = -1;
	D_800FCF26 = 0x80;
	D_800FCF28 = -1;
	D_800FCA80 = 0;
	D_800FCA84 = 0;
	D_800FCF3C = (s32) D_8004816A;
	D_800FCF40 = -1;
}

// AI - Set HUD scroll deltas to +8 (scroll right/down)
void func_8008BAFC_173BBC(void) {
	D_800FCF24 = 8;
	D_800FCF28 = 8;
}

// AI - Set HUD scroll deltas to -8 (scroll left/up)
void func_8008BB14_173BD4(void) {
	D_800FCF24 = -8;
	D_800FCF28 = -8;
}

// AI - Set horizontal scroll delta to +8
void func_8008BB2C_173BEC(void) {
	D_800FCF24 = 8;
}

// AI - Set horizontal scroll delta to -8
void func_8008BB3C_173BFC(void) {
	D_800FCF24 = -8;
}

// AI - Set vertical scroll delta to +8
void func_8008BB4C_173C0C(void) {
	D_800FCF28 = 8;
}

// AI - Set vertical scroll delta to -8
void func_8008BB5C_173C1C(void) {
	D_800FCF28 = -8;
}

// AI - Load and draw a 16x16 grayscale texture tile from the font/icon atlas
void func_8008BB6C_173C2C(u8 arg0, u8 arg1) {
	gDPLoadTextureBlock_4b(D_8005BB2C++, K0_TO_PHYS(D_1009C70 + (arg1 << 7)), G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
	gSPTextureRectangle(D_8005BB2C++, (s32)arg0 * 4, 0x318, (arg0 + 0xB) << 2, 0x344, G_TX_RENDERTILE, 0, 0, 0x0600, 0x0600);
	gDPPipeSync(D_8005BB2C++);
}

// Render a HUD bar with an optional icon overlay
#ifdef NON_MATCHING
void func_8008BD18_173DD8(s16 arg0, s16 arg1, f32 arg2, s32 arg3, void *arg4, s32 arg5, s32 arg6, s32 arg7, s16 arg8) {
	s16 scrollOffset;
	Vtx *vtx0;
	Vtx *vtx1;
	Vtx *vtx2;
	Vtx *vtx3;
	D_8005BB34++;
	D_8005BB34++;
	D_8005BB34++;
	D_8005BB34++;

	gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x3C, 0x50, 0x78, 0xC8);

	if (func_80004498_5098(arg2) == 0) {
		arg2 = 0.0f;
	}

	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

	gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);

	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);

	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

	gDPPipeSync(D_8005BB2C++);

	if (arg3 != 0) {
		scrollOffset = D_800FCF22;
	} else {
		scrollOffset = D_800FCF26;
	}

	D_80052B40_HudX = 0;
	D_80052B40.unk2 = arg1 + scrollOffset;
	D_80052B40.unk4 = 0;
	D_80052B50.unk0 = 0x100;
	D_80052B50.unk2 = 0x100;
	D_80052B50.unk4 = 0;

	func_800039D0_45D0(&D_80052B40, 0, &D_80052B50, D_8005BB38);

	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	arg0 += 7;
	func_800092B8_9EB8(((arg0 - arg8) - 0xF) << 2, (arg1 + scrollOffset - 8) << 2, (arg0 + 4) << 2, (arg1 + scrollOffset + 6) << 2, 3);

	if (arg5 != 0) {
		vtx0 = D_8005BB34++;
		vtx1 = D_8005BB34++;
		vtx2 = D_8005BB34++;
		vtx3 = D_8005BB34++;

		vtx0->v.ob[0] = vtx3->v.ob[0] = arg0 - 0x2F;

		vtx1->v.ob[0] = vtx2->v.ob[0] = (f32) (arg0 - 0x30) + ((f32) arg8 * arg2) + 1.0f;
		vtx1->v.ob[1] = 3;
		vtx0->v.ob[1] = vtx1->v.ob[1];

		vtx2->v.ob[1] = -4;
		vtx3->v.ob[1] = vtx2->v.ob[1];

		vtx2->v.ob[2] = -1;
		vtx0->v.ob[2] = vtx1->v.ob[2] = vtx3->v.ob[2] = vtx2->v.ob[2];
		if (arg5 == 2) {
			vtx0->v.cn[0] = vtx3->v.cn[0] = vtx2->v.cn[0] = vtx1->v.cn[0] = 0xFF;

			arg7 <<= 5;
			vtx0->v.cn[1] = vtx3->v.cn[1] = vtx2->v.cn[1] = vtx1->v.cn[1] = (u32) MIN((f64)255.0f, ((1.0f - arg2) * 255.0) + arg7);

			vtx0->v.cn[2] = vtx3->v.cn[2] = vtx2->v.cn[2] = vtx1->v.cn[2] = MIN(255, arg7);

			vtx1->v.tc[1] = 0;
			vtx0->v.tc[0] = vtx0->v.tc[1] = vtx3->v.tc[0] = vtx1->v.tc[1];
			vtx2->v.tc[1] = 0x400;
			vtx3->v.tc[1] = vtx2->v.tc[1];

			vtx2->v.tc[0] = vtx1->v.tc[0] = (f32) (arg8 * D_80047712) * arg2;
		} else {
			vtx0->v.cn[0] = vtx3->v.cn[0] = 0xFF;

			arg7 <<= 5;
			vtx0->v.cn[1] = vtx3->v.cn[1] = MIN(255, arg7);

			vtx0->v.cn[2] = vtx3->v.cn[2] = MIN(255, arg7);

			vtx2->v.cn[0] = vtx1->v.cn[0] = 0xFF;

			vtx2->v.cn[1] = vtx1->v.cn[1] = (u32) MIN((f64)255.0f, (arg2 * 255.0) + arg7);

			vtx2->v.cn[2] = vtx1->v.cn[2] = MIN(255, arg7);

			vtx1->v.tc[1] = 0;
			vtx0->v.tc[0] = vtx0->v.tc[1] = vtx3->v.tc[0] = vtx1->v.tc[1];
			vtx2->v.tc[1] = 0x400;
			vtx3->v.tc[1] = vtx2->v.tc[1];

			vtx2->v.tc[0] = vtx1->v.tc[0] = (f32) (D_80047716 << 0xA) * arg2;
		}

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

		gDPSetRenderMode(D_8005BB2C++, G_RM_OPA_SURF, G_RM_OPA_SURF2);

		gDPLoadTextureBlock(D_8005BB2C++, D_800A41B0_18C270, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 3, 3, G_TX_NOLOD, G_TX_NOLOD);

		gDPSetTextureFilter(D_8005BB2C++, G_TF_POINT);

		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADEDECALA, G_CC_SHADEDECALA);

		gSPClearGeometryMode(D_8005BB2C++, G_CULL_BACK);

		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);

		gDPPipeSync(D_8005BB2C++);

		gSP1Quadrangle(D_8005BB2C++, 0, 1, 2, 3, 0);

		gDPPipeSync(D_8005BB2C++);

		gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);
	}
	// Draw an icon overlay on top of the bar if a texture pointer is provided
	if (arg4 != 0) {
		vtx3 = D_8005BB34++;
		vtx2 = D_8005BB34++;
		vtx0 = D_8005BB34++;
		vtx1 = D_8005BB34++;

		vtx0->v.ob[0] = vtx3->v.ob[0] = arg0 - 0x30;
		vtx1->v.ob[0] = vtx2->v.ob[0] = arg0 - 0x42;
		vtx1->v.ob[1] = 9;
		vtx0->v.ob[1] = vtx1->v.ob[1];

		vtx2->v.ob[1] = -9;
		vtx3->v.ob[1] = vtx2->v.ob[1];

		vtx2->v.ob[2] = -1;
		vtx0->v.ob[2] = vtx1->v.ob[2] = vtx3->v.ob[2] = vtx2->v.ob[2];

		vtx0->v.tc[1] = vtx1->v.tc[1] = vtx0->v.tc[0] = vtx3->v.tc[0] = (arg6 * 0x30) + 0x600;

		vtx3->v.tc[1] = vtx2->v.tc[1] = vtx1->v.tc[0] = vtx2->v.tc[0] = -arg6 * 0x30;

		vtx3->v.cn[0] = vtx2->v.cn[0] = 0xB9;
		vtx0->v.cn[0] = vtx1->v.cn[0] = 0xB9;

		vtx0->v.cn[1] = vtx1->v.cn[1] = vtx3->v.cn[1] = vtx2->v.cn[1] = 0xFF;
		vtx0->v.cn[2] = vtx1->v.cn[2] = vtx3->v.cn[2] = vtx2->v.cn[2] = 0xFF;

		gDPSetRenderMode(D_8005BB2C++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);

		gDPSetTextureFilter(D_8005BB2C++, G_TF_BILERP);

		gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_ON);

		gDPLoadTextureBlock(D_8005BB2C++, arg4, G_IM_FMT_IA, G_IM_SIZ_8b, 24, 24, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

		gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);

		gSPVertex(D_8005BB2C++, K0_TO_PHYS(D_8005BB34 - 4), 4, 0);

		gSP2Triangles(D_8005BB2C++, 0, 1, 2, 0, 3, 1, 2, 0);

		gDPPipeSync(D_8005BB2C++);

		gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);

		gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	}

	gSPPopMatrix(D_8005BB2C++, G_MTX_MODELVIEW);
}
#else
const f64 D_800A56F8_18D7B8[1] = {255.0};

const f64 D_800A5700_18D7C0[1] = {255.0};

const f64 D_800A5708_18D7C8[1] = {255.0};

const f64 D_800A5710_18D7D0[1] = {255.0};

#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008BD18_173DD8.s")
#endif

// Main HUD renderer: projection, scrolling, health bars, and status text
void func_8008C8A4_174964(void) {
	s32 yOffset;
	s16 steps;

	guOrtho(&D_800FCAD8, 0.0f, (f32) D_80068084, (f32) D_80068088, 0.0f, -1000.0f, 1000.0f, 1.0f);
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	gDPSetCycleType(D_8005BB2C++, G_CYC_1CYCLE);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_PERSP);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
	func_800039D0_45D0(0, 0, 0, D_8005BB38);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(D_8005BB38++), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

	if (D_800FCF24 != 0) {
		D_800FCF22 += D_800FCF24;
		if (D_800FCF22 >= 0x81) {
			D_800FCF22 = 0x80;
			D_800FCF24 = 0;
		}
		if (D_800FCF22 < 0) {
			D_800FCF22 = 0;
			D_800FCF24 = 0;
		}
	}

	if (D_800FCF28 != 0) {
		D_800FCF26 += D_800FCF28;
		if (D_800FCF26 >= 0x81) {
			D_800FCF26 = 0x80;
			D_800FCF28 = 0;
		}
		if (D_800FCF26 < 0) {
			D_800FCF26 = 0;
			D_800FCF28 = 0;
		}
	}

	if (D_800FCF26 != 0x80) {
		yOffset = (currentLevel == 5) ? 0 : -0x14;

		if (D_80052B34->unk1C > 0) {
			func_8008BD18_173DD8(0x50, (D_80068088 + yOffset) - 0x1E, (f32) vehicleInstances->unk1C / (f32)(u32)vehicleTypes[vehicleInstances->unk1A].hitPoints, 0, &D_8025F540, 1, 0, D_800FCF44, 0x30);
		} else {
			func_8008BD18_173DD8(0x50, (D_80068088 + yOffset) - 0x1E, 0.0f, 0, &D_8025F540, 0, 0, 0, 0x30);
		}

		if (currentLevel < 5) {
			if ((D_800FCF3C != D_8004816A) && (((u8) D_800314C4 - 3) >= D_8004816A)) {
				D_800FCF46 = 8;
			}
			if ((u8) D_800314C4 < D_8004816A) {
				D_800FCF3C = (u8) D_800314C4;
			} else {
				D_800FCF3C = D_8004816A;
			}
			func_8008BD18_173DD8(0x50, D_80068088 - 0x1E, (f32) D_800FCF3C / (f32) (u8) D_800314C4, 0, &D_8025F780, 2, 0, D_800FCF46, 0x30);
			D_800FCF3C = D_8004816A;
		}
	}

	if (((u8) D_800314C4 - 3) < D_8004816A) {
		D_800FCF46 = 8 - (D_800E65AC % 8);
	} else {
		D_800FCF46 = 0;
	}

	if ((vehicleTypes[vehicleInstances[0].unk1A].hitPoints >> 2) >= vehicleInstances[0].unk1C) {
		D_800FCF44 = 8 - (D_800E65AC % 8);
	} else {
		D_800FCF44 = 0;
	}

	drawText(&D_800A5538_18D5F8, 0, 0xFF);

	if (D_8006C6C6 > 0) {
		if ((D_8006C6C4 - 8) < D_8006C6C6) {
			steps = D_8006C6C4 - D_8006C6C6;
		} else if (D_8006C6C6 < 8) {
			steps = D_8006C6C6;
		} else {
			steps = 8;
		}

		yOffset = 0x30 - (steps * 6);
		gDPSetPrimColor(D_8005BB2C++, 0, 0, 0x8C, 0x96, 0xF0, 0xAA);
		func_800092B8_9EB8(0x1B8, (yOffset + 0xAF) << 2, 0x310, (yOffset + 0xD2) << 2, 0);
	}

	gDPPipeSync(D_8005BB2C++);
	gDPTileSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
}

// doPauseMenu ?
// Render and handle the pause menu: 3x3 icon grid, analog stick navigation
#ifdef NON_MATCHING
void func_8008CF2C_174FEC(void) {
	u8 slots[9];
	u8 slotValue;
	s32 i;
	s32 texIndex;
	s16 x;
	s16 y;
	s32 stickX;
	s32 stickY;
	s16 fade;

	gDPSetTextureLUT(D_8005BB2C++, G_TT_RGBA16);
	gDPSetTexturePersp(D_8005BB2C++, G_TP_NONE);
	gDPLoadTLUT_pal256(D_8005BB2C++, D_80260500);
	gDPPipeSync(D_8005BB2C++);
	gDPSetCombineMode(D_8005BB2C++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);

	i = 8;
	do {
		slots[i] = 0xF;
	} while (i--);

	if (D_800FCA90 != 0) {
		slots[4] = 0xE;
		slots[1] = 8;
	} else {
		slots[1] = 0xE;
		slots[5] = 3;
		slots[4] = 8;
		if (currentLevel != LEVEL_COMET) {
			slots[7] = 0xD;
		}
	}

	stickX = D_8004758A;
	if (((stickX >= 0 ? stickX : -stickX) < 0x14) && ((D_8004758B >= 0 ? D_8004758B : -D_8004758B) < 0x14)) {
		D_800FCF20 = 1;
	}

	if (D_800FCF20 == 1) {
		if ((stickX < -0x1E) && (D_800A4340_Menu1 >= 4) && (slots[D_800A4340_Menu1 - 1] != 0xF)) {
			D_800A4340_18C400_W = D_800A4340_Menu1 - 1;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7); stickX = D_8004758A;
		}

		if ((stickX >= 0x1F) && (D_800A4340_Nav1 < 5) && (slots[D_800A4340_Nav1 + 1] != 0xF) && (D_800A4348_18C408 == 0)) {
			D_800A4340_18C400_W = D_800A4340_Nav1 + 1;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
		}

		stickY = D_8004758B;
		if ((stickY >= 0x1F) && (D_800A4340_Nav2 >= 2) && (slots[D_800A4340_Nav2 - 3] != 0xF)) {
			D_800A4340_18C400_W = D_800A4340_Nav2 - 3;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7); stickY = D_8004758B;
		}

		if ((stickY < -0x1E) && (D_800A4340_Nav3 < 7) && (slots[D_800A4340_Nav3 + 3] != 0xF)) {
			D_800A4340_18C400_W = D_800A4340_Nav3 + 3;
			D_800FCF20 = 0;
			func_800153D8_15FD8(0xC7);
		}
	}

	fade = D_800FCA92;
	slotValue = slots[D_800A4340_Menu2];
	if (fade != 0xFF) {
		D_800A4344_18C404_W = -1;
		func_8001A54C_Menu(D_800A56EC_18D7AC, -1);
		fade = (D_800FCA92_W = D_800FCA92 - 0x20);
	} else {
		if (D_800A4344_18C404 != slotValue) {
			switch (D_800313D0_31FD0) {
			case 0:
			default:
				D_800A4344_18C404_W = slotValue;
				func_8001A54C_Menu((u8 *) D_800A428C_18C34C[slotValue], slotValue); fade = D_800FCA92_Lang0;
				break;
			case 2:
				D_800A4344_18C404_W = slotValue;
				func_8001A54C_Menu((u8 *) D_800A4304_18C3C4[slotValue], slotValue); fade = D_800FCA92_Lang1;
				break;
			case 1:
				D_800A4344_18C404_W = slotValue;
				func_8001A54C_Menu((u8 *) D_800A42C8_18C388[slotValue], slotValue); fade = D_800FCA92_Lang2;
				break;
			}
		}
		D_800FCF4C = 0xFFFFFFFFU;
	}

	if (D_800FCF4C != 0xFFFFFFFFU) {
		D_800A4340_18C400_W = D_800FCF4C;
	}

	if (fade < 0xFF) {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_DITHER);
	} else {
		gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
	}

	i = 8;
	do {
		slotValue = slots[i];
		if (slotValue != 0xF) {
			x = ((i % 3) << 5) + (D_80068084 / 2) - 0x2C;
			texIndex = D_800A427C_18C33C[slotValue];

			if (i == D_800A4340_Menu3) {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0, 0xC8, 0xFF, D_800FCA92 & 0xFF);
				if (D_800A4340_DrawCompare != D_800FCB1E) {
					func_80013810_14410(D_800A4343_18C403);
					D_800FCB1E = D_800A4340_DrawAfterCall;
				}
			} else {
				gDPSetPrimColor(D_8005BB2C++, 1, 0, 0, 0x64, 0x7F, D_800FCA92 & 0xFF);
			}

			gDPLoadTextureBlock(D_8005BB2C++, K0_TO_PHYS(D_8025CCC0 + (texIndex * 0x240)), G_IM_FMT_CI, G_IM_SIZ_8b, 24, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
			y = (i / 3) * 0x1E + 0x38;
			gSPTextureRectangle(D_8005BB2C++, x << 2, y << 2, (x + 24) << 2, (y + 24) << 2, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
		}
	} while (i--);

	if ((isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_START | BUTTON_A) != 0) && (D_800FCA92 == 0xFF) && (D_800FCA84 == 0)) {
		D_800FCA80 = 1;
		if (D_800FCA90 == 0) {
			func_800153D8_15FD8(0xC6);
		}

		func_8001A54C_1B14C((u8 *)D_800A56F0_18D7B0);
		slotValue = slots[D_800A4340_Menu4];

		switch (slotValue) {
		case 6:
			D_800E65A8 |= 0x100;
			return;
		case 0xE:
			if (D_800FCA90 == 0) {
				D_800FCA90 = 1;
				return;
			}
			D_800E65A8 |= 0x4100;
			func_80006DAC_79AC(0, 1);
			break;
		case 3:
			D_800E65B8 = 1;
			D_800E65A8 |= 0x2000;
			return;
		case 0xD:
			D_800E65B8 = 1;
			D_800E65A8 |= 0x80000;
			return;
		default:
			if (((D_80052B34->unk1A != 0) || (D_800A4340_Menu4 != 3)) && (slotValue != 0xF) && (slotValue != 8)) {
				D_80050AD4 = slotValue;
			}
			D_800E65A8 &= ~2;
			D_800FCA92_W = D_800FCA92 - 1;
			D_800FCF4C = D_800A4340_Menu4;
			break;
		}
	}

	if (D_800FCA92 < 0x21) {
		D_800A4340_18C400_W = 4;
	}
	gDPSetAlphaCompare(D_8005BB2C++, G_AC_NONE);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/overlay_gameplay/inside/173B60/func_8008CF2C_174FEC.s")
#endif

// Main update/tick: drive HUD scrolling, call HUD/pause renderers, handle Start
void func_8008D900_1759C0(void) {
	s32 pad64;
	s32 pad60;
	Unk800A4354 sp58;
	Unk800A4354 sp50;
	Unk800A4354 sp48;
	s32 pad40;
	s32 pad3C;
	sp58 = D_800A4354_18C414;
	sp50 = D_800A435C_18C41C;
	sp48 = D_800A4364_18C424;
	D_800A436C_18C42C_W = D_800A436C_18C42C + 1;
	func_8001A130_1AD30(0x4A - D_800FCF26, D_80068088 - 0x50);
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_START) == 0) {
		D_800FCA80 = 0;
		D_800FCA84 = 0;
	}
	if (func_80017B78_18778() == 1) {
		func_8008BAFC_173BBC();
	} else {
		if (D_80052B34->unk1A == 0) {
			if (gameplayMode == GAMEPLAY_MODE_END_OF_LEVEL) {
				func_8008BB4C_173C0C();
			} else {
				func_8008BB5C_173C1C();
			}
		} else if (gameplayMode == GAMEPLAY_MODE_END_OF_LEVEL) {
			func_8008BAFC_173BBC();
		} else {
			func_8008BB14_173BD4();
		}
		D_800A4370_18C430 = 0;
	}
	osWritebackDCacheAll();
	gSPClearGeometryMode(D_8005BB2C++, G_ZBUFFER | G_CULL_BOTH | G_LIGHTING);
	gSPPerspNormalize(D_8005BB2C++, 0xFFFF);
	gSPMatrix(D_8005BB2C++, K0_TO_PHYS(&D_800FCAD8), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
	gDPPipeSync(D_8005BB2C++);
	gDPSetRenderMode(D_8005BB2C++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
	func_8008C8A4_174964();
	if (D_800FCA92 >= 0x21) {
		func_8008CF2C_174FEC();
	} else {
		D_800FCA90 = 0;
	}
	if (isButtonNewlyPressed(CONTROLLER_ONE, BUTTON_START) != 0) {
		if (D_800FCA80 == 0) {
			if (D_800E65A8 == 1) {
				if (D_800FCA92 != 0xFF) {
					D_800FCA92 = 0xFF;
					D_800FCA90 = 0;
					D_800FCA84 = 1;
					D_800E65A8 |= 2;
					func_800153D8_15FD8(0xC6);
				}
			}
		}
	}
	func_8001A828_1B428();
	gDPPipeSync(D_8005BB2C++);
	gSPTexture(D_8005BB2C++, 0x8000, 0x8000, 0, G_TX_RENDERTILE, G_OFF);
	gDPSetCombineMode(D_8005BB2C++, G_CC_SHADE, G_CC_SHADE);
	gDPSetTextureLUT(D_8005BB2C++, G_TT_NONE);
}

// AI - Play a sound effect for a given slot index (language-dependent lookup)
void func_8008DC44_175D04(s32 arg0) {
	switch (D_800313D0_31FD0) {
	case 0:
		func_8001A598_1B198(D_800A26B0_18A770 + D_800A2EB0_18AF70[arg0]);
		break;
	case 1:
		func_8001A598_1B198(D_800A2FB0_18B070 + D_800A37B0_18B870[arg0]);
		break;
	case 2:
		func_8001A598_1B198(D_800A38B0_18B970 + D_800A40B0_18C170[arg0]);
		break;
	}
}

// AI - Play a level-indexed sound effect for menu selections (language-dependent)
void func_8008DCF4_175DB4(s32 arg0) {
	s32 temp_v1 = (currentLevel * 0xB) + arg0 + 0xA;
	switch (D_800313D0_31FD0) {
	case 0:
		func_8001A598_1B198(D_800A26B0_18A770 + D_800A2EB0_18AF70[temp_v1]);
		break;
	case 1:
		func_8001A598_1B198(D_800A2FB0_18B070 + D_800A37B0_18B870[temp_v1]);
		break;
	case 2:
		func_8001A598_1B198(D_800A38B0_18B970 + D_800A40B0_18C170[temp_v1]);
		break;
	}
}

// AI - Return 1 if HUD is fully scrolled off-screen, 0 otherwise
s32 func_8008DDC0_175E80(void) {
	if (D_800FCF26 == 0) {
		return 1;
	}
	return 0;
}
