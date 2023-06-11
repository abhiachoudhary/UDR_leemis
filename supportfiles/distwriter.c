#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main (void){

	FILE *in=fopen("ListofDist","r");
	FILE *out=fopen("output","a");

	char x[200]; /*a buffer to collect strings from stream*/
	
	while((fscanf(in,"%s",&x)!=EOF)){ /*read until end of file*/
	
		fprintf(out,"<li> <a href=\"PDFs/%s.pdf\" onMouseOver=\"if(document.images) document.getElementById('Chart').src= '/chartimages/%s.png';\"  onMouseOut=\"if(document.images) document.getElementById('Chart').src= 'BaseImage.png';\" > %s </a> - <a onMouseOver=\"if(document.images) document.getElementById('_info').src= 'infoimages/info-%s.png';\" >f(x)</a></li>\n",x,x,x,x);
	
	}

	fclose(in);
	fclose(out);

	return(0);
}