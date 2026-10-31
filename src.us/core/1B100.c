#include <ultra64.h>
#include "common.h"

/* English message table. */
MessageEntry D_800344B0_350B0[] = {
	{0, (u8 *)"This door is locked"},
	{0, (u8 *)"New Objective - Check Map"},
	{0, (u8 *)"Game Saved"},
	{0, (u8 *)"Fuel low"},
	{0, (u8 *)"Head to the church"},
	{0, (u8 *)"Warning: Equipment failing!"},
	{0, (u8 *)"My suit's leaking!"},
	{0, (u8 *)"Launch sequence complete"},
	{0, (u8 *)"Launch sequence initiated"},
	{0, (u8 *)"Lifting vehicle"},
	{0, (u8 *)"Missile already used"},
	{0, (u8 *)"Mission complete"},
	{0, (u8 *)"Mission failed"},
	{0, (u8 *)"Nothing in range"},
	{0, (u8 *)"Out of fuel"},
	{0, (u8 *)"Refuelled"},
	{0, (u8 *)"Repaired"},
	{0, (u8 *)"Shield"},
	{0, (u8 *)"This vehicle is locked"},
	{0, (u8 *)"Vehicle refueled"},
	{0, (u8 *)"Waypoint reached"},
	{0, (u8 *)"Alien weapon constructed"},
	{0, (u8 *)"You have won"},
	{0, (u8 *)"Harvester wave detected"},
	{0, (u8 *)"Mutant detected"},
	{0, (u8 *)"Pistol"},
	{0, (u8 *)"Shotgun"},
	{0, (u8 *)"Rifle"},
	{0, (u8 *)"Machine gun"},
	{0, (u8 *)"7.62mm GPMG"},
	{0, (u8 *)"12.7mm minigun"},
	{0, (u8 *)"25mm cannonette"},
	{0, (u8 *)"mega tank gun"},
	{0, (u8 *)"flak cannon"},
	{0, (u8 *)"76.2mm cannon"},
	{0, (u8 *)"155mm howitzer"},
	{0, (u8 *)"240mm mortar"},
	{0, (u8 *)"wee laser"},
	{0, (u8 *)"laser"},
	{0, (u8 *)"big laser"},
	{0, (u8 *)"huge laser"},
	{0, (u8 *)"satellite beam"},
	{0, (u8 *)"7.62mm GPMG"},
	{0, (u8 *)"76.2mm shell"},
	{0, (u8 *)"Grenades"},
	{0, (u8 *)"wee slow rocket"},
	{0, (u8 *)"wee fast rocket"},
	{0, (u8 *)"big slow rocket"},
	{0, (u8 *)"big fast rocket"},
	{0, (u8 *)"wee bomb"},
	{0, (u8 *)"Big bomb"},
	{0, (u8 *)"wee projectile"},
	{0, (u8 *)"big projectile"},
	{0, (u8 *)"cluster bomb"},
	{0, (u8 *)"fire blob"},
	{0, (u8 *)"fire bomb"},
	{0, (u8 *)"photon torp R"},
	{0, (u8 *)"photon torp G"},
	{0, (u8 *)"photon torp B"},
	{0, (u8 *)"photon torp W"},
	{0, (u8 *)"wee torpedo"},
	{0, (u8 *)"big torpedo"},
	{0, (u8 *)"missile I"},
	{0, (u8 *)"missile II"},
	{0, (u8 *)"missile III"},
	{0, (u8 *)"Rocket Launcher"},
	{0, (u8 *)"alien grenade"},
	{0, (u8 *)"wee alien bomb"},
	{0, (u8 *)"big alien bomb"},
	{0, (u8 *)"wee alien rocket"},
	{0, (u8 *)"alien rocket"},
	{0, (u8 *)"big alien rocket"},
	{0, (u8 *)"wee alien torpedo"},
	{0, (u8 *)"big alien torpedo"},
	{0, (u8 *)"alien missile I"},
	{0, (u8 *)"alien missile II"},
	{0, (u8 *)"wee alien projectile"},
	{0, (u8 *)"big alien projectile"},
	{0, (u8 *)"7.62mm GPMG"},
	{0, (u8 *)"artillery strike"},
	{0, (u8 *)"wee bite"},
	{0, (u8 *)"big bite"},
	{0, (u8 *)"wee stab"},
	{0, (u8 *)"big stab"},
	{0, (u8 *)"thump"},
	{0, (u8 *)"fire breath"},
	{0, (u8 *)"bee sting"},
	{0, (u8 *)"tow-point"},
	{0, (u8 *)"big mental HCU"},
	{0, (u8 *)"mental HCU"},
	{0, (u8 *)"wee mental HCU"},
	{0, (u8 *)"doodlebug explosion"},
	{0, (u8 *)"sidekick pistol"},
	{0, (u8 *)"Khephra Breath"},
	{0, (u8 *)"Kraken Photon"},
	{0, (u8 *)"bomb"},
	{0, (u8 *)"dynamic gun type"},
	{0, (u8 *)"Chaingun"},
	{0, (u8 *)"Fragcannon"},
	{0, (u8 *)"T.N.T."},
	{0, (u8 *)"Lazer Missiles"},
	{0, (u8 *)"Resonator"},
	{0, (u8 *)"Plasma Bombs"},
	{0, (u8 *)"Sunshield"},
	{0, (u8 *)"Fragcannon Ammo"},
	{0, (u8 *)"Lazer Missiles Ammo"},
	{0, (u8 *)"Resonator Ammo"},
	{0, (u8 *)"Plasma Bombs Ammo"},
	{0, (u8 *)"84"},
	{0, (u8 *)"85"},
	{0, (u8 *)"86"},
	{0, (u8 *)"87"},
	{0, (u8 *)"88"},
	{0, (u8 *)"89"},
	{0, (u8 *)"Lightning Gun"},
	{0, (u8 *)"Starburst"},
	{0, (u8 *)"Disruptor"},
	{0, (u8 *)"93"},
	{0, (u8 *)"Tri-Spinner"},
	{0, (u8 *)"Smart Bomb"},
	{0, (u8 *)"End of Level"},
	{0, (u8 *)"Weapon Cheat"},
	{0, (u8 *)"Health Cheat"},
	{0, (u8 *)"Wandering"},
	{0, (u8 *)"Serious Weapons"},
	{0, (u8 *)"Completed Levels"},
	{0, (u8 *)"Aliens Snared"},
	{0, (u8 *)"Aliens Freed"},
	{0, (u8 *)"Welfare Cheat"},
	{0, (u8 *)"Surreal Cheat"},
	{0, (u8 *)"Invulnerability"},
	{0, (u8 *)"Death Cheat"},
	{0, (u8 *)"Mutant Cheat"},
	{0, (u8 *)"Bad Cheat"},
	{0, (u8 *)"Artifacts Cheat"},
	{0, (u8 *)"Sack Cheat"},
	{0, (u8 *)"Dwarf Cheat"},
	{0, (u8 *)"Dundee Cheat"},
	{0, (u8 *)"Fat Legs Cheat"},
	{0, (u8 *)"Big blouse cheat"},
	{0, (u8 *)"Cheat22"},
	{0, (u8 *)"Cheat23"},
	{0, (u8 *)"Cheat24"},
	{0, (u8 *)"Cheat25"},
	{0, (u8 *)"Ack Ack"},
	{0, (u8 *)"Airboat"},
	{0, (u8 *)"Alpha I"},
	{0, (u8 *)"Amphibious carrier"},
	{0, (u8 *)"Bulldog"},
	{0, (u8 *)"B25 Eagle"},
	{0, (u8 *)"Sapworth Camel"},
	{0, (u8 *)"Cable car"},
	{0, (u8 *)"Cruiser"},
	{0, (u8 *)"P38 Gryphon"},
	{0, (u8 *)"Fire engine"},
	{0, (u8 *)"Nico's Supplies"},
	{0, (u8 *)"Gyrocopter"},
	{0, (u8 *)"Howitzer"},
	{0, (u8 *)"Jagdpanther"},
	{0, (u8 *)"Kubelwagen"},
	{0, (u8 *)"Landing craft"},
	{0, (u8 *)"Lifeboat"},
	{0, (u8 *)"Trekker ATJ"},
	{0, (u8 *)"SR Shadow"},
	{0, (u8 *)"Riley 150"},
	{0, (u8 *)"Grimly Flatbed"},
	{0, (u8 *)"Panzerkampfwagen"},
	{0, (u8 *)"Person"},
	{0, (u8 *)"Saloon"},
	{0, (u8 *)"Tank"},
	{0, (u8 *)"Tiger"},
	{0, (u8 *)"Swordfish MTB"},
	{0, (u8 *)"Sapworth Trainer"},
	{0, (u8 *)"Transport truck"},
	{0, (u8 *)"Adler DR1"},
	{0, (u8 *)"Grimly Transport"},
	{0, (u8 *)"Mk.I Crocodile"},
	{0, (u8 *)"Zero"},
	{0, (u8 *)"Sand Minx"},
	{0, (u8 *)"Monster Bug"},
	{0, (u8 *)"Mr. Lolly"},
	{0, (u8 *)"V-8 HiBoy"},
	{0, (u8 *)"Dusty"},
	{0, (u8 *)"Edzil"},
	{0, (u8 *)"Huey"},
	{0, (u8 *)"Hugh's 500"},
	{0, (u8 *)"School bus"},
	{0, (u8 *)"Miller J3P"},
	{0, (u8 *)"S.P.D. Patrol"},
	{0, (u8 *)"Rapier launcher"},
	{0, (u8 *)"Alien Tank"},
	{0, (u8 *)"RGM Paton"},
	{0, (u8 *)"Checker Cab"},
	{0, (u8 *)"Tipper"},
	{0, (u8 *)"UFO"},
	{0, (u8 *)"APC"},
	{0, (u8 *)"T-341 'Fist'"},
	{0, (u8 *)"Hangman B"},
	{0, (u8 *)"Combine"},
	{0, (u8 *)"Gunboat N-64"},
	{0, (u8 *)"Spectre VTOL"},
	{0, (u8 *)"Mk.3 Halo"},
	{0, (u8 *)"Polokov 3850"},
	{0, (u8 *)"Vladacar"},
	{0, (u8 *)"Scud launcher"},
	{0, (u8 *)"Scud missile"},
	{0, (u8 *)"Proto-RNV"},
	{0, (u8 *)"Fuelski"},
	{0, (u8 *)"Locomov"},
	{0, (u8 *)"Freight"},
	{0, (u8 *)"Dozer"},
	{0, (u8 *)"Skorpion RAV"},
	{0, (u8 *)"Undefined"},
	{0, (u8 *)"No more objects available"},
	{0, (u8 *)"This vehicle is broken"},
	{0, (u8 *)"no message"},
	{0, (u8 *)"Pistolet"},
	{0, (u8 *)"Fusil"},
	{0, (u8 *)"Carabine"},
	{0, (u8 *)"Mitraillette"},
	{0, (u8 *)"Lance-roquettes"},
	{0, (u8 *)"T.N.T."},
	{0, (u8 *)"Bouclier"},
	{0, (u8 *)"Grenades"},
	{0, (u8 *)"Triple-Tirs"},
	{0, (u8 *)"Starburst"},
	{0, (u8 *)"Fusil Eclair"},
	{0, (u8 *)"Cercleur"},
	{0, (u8 *)"Pistole"},
	{0, (u8 *)"Schrotflinte"},
	{0, (u8 *)"Gewehr"},
	{0, (u8 *)"Maschinengewehr"},
	{0, (u8 *)"Raketenwerfer"},
	{0, (u8 *)"T.N.T."},
	{0, (u8 *)"Schilde"},
	{0, (u8 *)"Granaten"},
	{0, (u8 *)"Dreierblitz"},
	{0, (u8 *)"Sternenschlag"},
	{0, (u8 *)"Blitzgewehr"},
	{0, (u8 *)"Spalter"},
	{0, (u8 *)"Ce v\351hicule est en panne"},
	{0, (u8 *)"Dieser Fahrzeug hat eine Panne"},
};

/* French message table. */
MessageEntry D_80034C40_35840[] = {
	{0, (u8 *)"Porte verrouill\351e"},
	{0, (u8 *)"Objectif - Regarde la Carte"},
	{0, (u8 *)"Partie sauv\351e"},
	{0, (u8 *)"Carburant bas"},
	{0, (u8 *)"Allez \340 l'Eglise"},
	{0, (u8 *)"Probl\350me d'\351quipement!"},
	{0, (u8 *)"Combinaison ab\356m\351e!"},
	{0, (u8 *)"S\351quence lancement OK"},
	{0, (u8 *)"S\351quence lancement activ\351e"},
	{0, (u8 *)"Soulever v\351hicule"},
	{0, (u8 *)"Missile utilis\351"},
	{0, (u8 *)"Mission accomplie"},
	{0, (u8 *)"Echec de la mission"},
	{0, (u8 *)"Pas de cible"},
	{0, (u8 *)"Plus de carburant"},
	{0, (u8 *)"Plein carburant"},
	{0, (u8 *)"R\351par\351"},
	{0, (u8 *)"Bouclier"},
	{0, (u8 *)"V\351hicule verrouill\351"},
	{0, (u8 *)"V\351hicule plein"},
	{0, (u8 *)"Point d'arriv\351e"},
	{0, (u8 *)"Boss Alien \351limin\351"},
	{0, (u8 *)"Victoire!"},
	{0, (u8 *)"Vague Alien d\351tect\351e"},
	{0, (u8 *)"Mutant rep\351r\351"},
};

/* German message table. */
MessageEntry D_80034D08_35908[] = {
	{0, (u8 *)"T\374r abgeschlossen"},
	{0, (u8 *)"Neues Einsatzziel - Schau auf die Karte"},
	{0, (u8 *)"Spiel gespeichert"},
	{0, (u8 *)"Wenig Sprit"},
	{0, (u8 *)"Geh zur Kirche"},
	{0, (u8 *)"Warnung: Ausr\374stungsfehler!"},
	{0, (u8 *)"Anzug ist undicht!"},
	{0, (u8 *)"Startsequenz abgeschlossen"},
	{0, (u8 *)"Startsequenz eingeleitet"},
	{0, (u8 *)"Hebe Fahrzeug an"},
	{0, (u8 *)"Rakete bereits verwendet"},
	{0, (u8 *)"Einsatz beendet"},
	{0, (u8 *)"Einsatz fehlgeschlagen"},
	{0, (u8 *)"Nichts in Reichweite"},
	{0, (u8 *)"Kein Sprit mehr"},
	{0, (u8 *)"Aufgetankt"},
	{0, (u8 *)"Repariert"},
	{0, (u8 *)"Schilde"},
	{0, (u8 *)"Fahrzeug abgeschlossen"},
	{0, (u8 *)"Fahrzeug aufgetankt"},
	{0, (u8 *)"Wegpunkt erreicht"},
	{0, (u8 *)"Du hast das Bo\337-Alien erledigt"},
	{0, (u8 *)"Du hast gewonnen"},
	{0, (u8 *)"Fresser-Welle geortet"},
	{0, (u8 *)"Mutant entdeckt"},
};

void func_8001A500_1B100(s32 arg0)
{
	D_8006C6C2 = D_8006C6C0 = D_8006C6C6 = 0;
	D_8006C6CE = D_8006C6CC = 0;
	D_8006C6D0 = arg0;
	D_8006C6D4 = -1;
}

void func_8001A54C_1B14C(u8 *arg0) {
	u8 *dst;
	u8 c;

	c = *arg0;
	D_8006C6D8 = c;
	dst = &D_8006C6D9;
	arg0++;

	if (c != 0) {
		do {
			c = *arg0;
			dst++;
			arg0++;
			dst[-1] = c;
		} while (c != 0);
	}

	*dst = '\n';
	D_80053C8C = D_80052AD8;
}

void func_8001A598_1B198(u8 *arg0) {
	u8 *dst;
	u8 c;
	s32 temp;
	s32 count;
	dst = &D_8006C580[D_8006C6C2 * 0x28];
	temp = 0; // dead init; forces IDO to assign temp->$v1 and c->$a2 (matches target regalloc)
	count = 1;
	c = *arg0;
	if (c != 0) {
		do {
			if ((c & 0x80) && D_800313D0_31FD0 == 3) {
				*dst++ = c;
				arg0++;
				c = *arg0;
				count++;
			}
			temp = count < 0x28;
			count++;
			*dst++ = c;
			arg0++;
			if (!temp) {
				break;
			}
			c = *arg0;
		} while (c != 0);
	}
	*dst = 0;
	D_8006C6C2++;
	if (D_8006C6C2 == 8) {
		D_8006C6C2 = 0;
	}
}

void func_8001A650_1B250(s16 arg0) {
	if ((arg0 != D_8006C6D4) || (D_8006C6C6 == 0)) {
		if ((arg0 == 1) || (arg0 == 0x17) || (arg0 == 0x18)) {
			func_80014A3C_1563C(0, 0x17B, 0, 0, 0.3f);
		}
		D_8006C6D4 = arg0;
		if (arg0 < 0x19) {
			switch (D_800313D0_31FD0) {
			case 0:
			default:
				func_8001A598_1B198(D_800344B4_350B4[arg0].name);
				return;
			case 1:
				func_8001A598_1B198(D_80034C44_35844[arg0].name);
				return;
			case 2:
				func_8001A598_1B198(D_80034D0C_3590C[arg0].name);
				return;
			}
		} else {
			if (arg0 == 0xD6) {
				osSyncPrintf("broken index!\n");
				if (D_800313D0_31FD0 == 1) {
					arg0 = 0xF0;
				}
				if (D_800313D0_31FD0 == 2) {
					arg0 = 0xF1;
				}
			}
			func_8001A598_1B198(D_800344B4_350B4[arg0].name);
		}
	}
}

s32 func_8001A7A0_1B3A0(s16 arg0) {
	if (arg0 < 0x19) {
		switch (D_800313D0_31FD0) {
		case 0:
		default:
			return D_800344B4_350B4[arg0].name;
		case 1:
			return D_80034C44_35844[arg0].name;
		case 2:
			return D_80034D0C_3590C[arg0].name;
		}
	} else {
		return D_800344B4_350B4[arg0].name;
	}
}

void func_8001A828_1B428(void)
{
  if (currentLevel == 1)
  {
	D_80053BF8 = 0x78;
	D_80053BFA = 0xC8;
	D_80053BFC = 0x1E;
  }
  else
  {
	D_80053BF8 = 0x1E;
	D_80053BFA = 0x8C;
	D_80053BFC = 0xF0;
  }
  drawText("%X%i%r%@%s\n", 0, 0x80, 0, &D_8006C6D8);
  if (((D_8006C6C0 != D_8006C6C2) || (D_8006C6C6 != 0)) && (D_80052AD0 != 0))
  {
	if (func_80018AC8_196C8() == 0)
	{
	  s32 cur = D_8006C6C6;
	  if ((cur == 0) || (((cur >= 9) && (cur < 0x12)) && (D_8006C6C0 != D_8006C6C2)))
	  {
		D_8006C6CC = cur;
		D_8006C6CE = D_8006C6C8;
		D_8006C6CA = (D_8006C6C0 + 7) % 8;
		D_8006C6C6 = ((func_8000A2B8_AEB8(&D_8006C580[D_8006C6C0 * 0x28], 0) + 0x50) / 3) + 0x10;
		D_8006C6C4 = D_8006C6C6;
		if (D_8006C6CC != 0)
		{
		  D_8006C6C6 -= 8;
		}
		D_8006C6C8 = 0;
		D_8006C6C0++;
		if (D_8006C6C0 == 8)
		{
		  D_8006C6C0 = 0;
		}
	  }
	}
	if (D_8006C6C6 != 0)
	{
	  if (func_80018AC8_196C8() == 0)
	  {
		D_8006C6C6--;
		if ((D_8006C6C4 - 8) >= D_8006C6C6)
		{
		  drawText("%W", 0x78, 0xB8, 0xBE, 0xCC);
		  drawText("%C%a", 0xFF, 0xFF, 0xFF, 0xFF);
		  drawText("%Y", 0x4E);
		  drawText("%X", D_8006C6C8 * 4);
		  D_8006C6C8 -= 3;
		  drawText("%@%s", 0x18, 7, &D_8006C580[((D_8006C6C0 + 7) % 8) * 0x28]);
		  if (D_8006C6CC != 0)
		  {
			D_8006C6CC--;
			drawText("%X", D_8006C6CE * 4);
			D_8006C6CE -= 3;
			drawText("%@%s", 0x18, 7, &D_8006C580[D_8006C6CA * 0x28]);
		  }
		  drawText("%C%a", 0xE6, 0xE6, 0xE6, 0xFF);
		  drawText("%X", 0);
		  drawText("%Y", 0);
		}
	  }
	}
  }
}
