#include "projecteur.h"
#include <stdio.h>
#include <stdlib.h>
#define NBR_DONNES 3

//void verif_proj( int nbr, char * proj[MAX_RENDU1]);

static PROJ tab_proj[MAX_RENDU1];

int verif_proj( int nbr, char *proj[MAX_RENDU1])
{
	int i;
	double poubelle;
	int nbr_element;
	
	for ( i=0; i<MAX_RENDU1; i++)
	{
		nbr_element = sscanf( proj[i]," %lf %lf %lf %lf " , &tab_proj[i].coord_proj_deb.x, &tab_proj[i].coord_proj_deb.y, &tab_proj[i].angle_proj, &poubelle );
		
		if (nbr_element < NBR_DONNES)
		{
			error_lecture_elements(ERR_PROJECTEUR, ERR_PAS_ASSEZ);
			return 0;
		}
		
		if (nbr_element > NBR_DONNES)
		{
			error_lecture_elements(ERR_PROJECTEUR, ERR_TROP);
			return 0;
		}
		
		tab_proj[i].coord_proj_fin = calcul_pt_proj_fin( tab_proj[i].coord_proj_deb, tab_proj[i].angle_proj );
		
		
		
	}
	
	return 1;
}

void enrg_proj()
{
	
	
}
