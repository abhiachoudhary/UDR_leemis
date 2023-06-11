#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main (void){

	FILE *in=fopen("Coordinates","r");
	FILE *out=fopen("output","a");

	/*define a datatype (area) for collecting name, shape, and coordinates into one "object"*/

	typedef struct {
		char name[100];
		char shape[100];
		int coords[100];
	}area;
	
	/*establish one datatype*/
	
	area towrite;
	
	int i=0; /*counter*/
	int j=0; /*counter*/
	int inarray=1; /*position indicator -default located in coordinate array to start*/
	int inname=0; /*position indicator for stream*/
	int inshape=0; /*position indicator for stream*/
	char x[200]; /*a buffer to collect strings from stream*/
	
	while((fscanf(in,"%s",&x)!=EOF)){ /*read until end of file*/
		if(x[0]>64 && inarray==1){ /*if stream position is name of area*/
			inname=1; /*establish position inside stream (name of area)*/
			inarray=0;
			inshape=0;
			/*print statement if we have encountered the name of a new area*/
			if(j==2){ /*print circle area*/
				fprintf(out,"<area shape=\"circle\" coords=\"%d,%d,10\" href=\"PDFs/%s.pdf\" alt=\"%s\" title=\"%s\" onMouseOver=\"if(document.images) document.getElementById('Chart').src= 'chartimages/%s.png';\" onMouseOut=\"if(document.images) document.getElementById('Chart').src= 'BaseImage.png';\"  />\n",towrite.coords[0],towrite.coords[1],towrite.name,towrite.name,towrite.name,towrite.name);
			}
			if(j==4){ /*print rect area*/
				fprintf(out,"<area shape=\"rect\" coords=\"%d,%d,%d,%d\" href=\"PDFs/%s.pdf\" alt=\"%s\" title=\"%s\" onMouseOver=\"if(document.images) document.getElementById('Chart').src= 'chartimages/%s.png';\" onMouseOut=\"if(document.images) document.getElementById('Chart').src= 'BaseImage.png';\"  />\n",towrite.coords[0],towrite.coords[1],towrite.coords[2],towrite.coords[3],towrite.name,towrite.name,towrite.name,towrite.name);
			}
			if(j>4){ /*print polygon area*/
				fprintf(out,"<area shape=\"polygon\" coords=\"");
				for(i=0;i<j-1;i++){ /*variable number of vertcies in polygon*/
					fprintf(out,"%d,",towrite.coords[i]);
				}
				fprintf(out,"%d\"",towrite.coords[j-1]);
				fprintf(out," href=\"PDFs/%s.pdf\" alt=\"%s\" title=\"%s\" onMouseOver=\"if(document.images) document.getElementById('Chart').src= 'chartimages/%s.png';\" onMouseOut=\"if(document.images) document.getElementById('Chart').src= 'BaseImage.png';\"  />\n",towrite.name,towrite.name,towrite.name,towrite.name);
			}
			/*reset counter for number of coordinates*/
			j=0;
			strcpy(towrite.name,x);
		}
		if(x[0]>64 && inname==1){ /*if stream position is shape of area*/
			inshape=1; /*establish position inside stream (shape of area)*/
			inarray=0;
			inname=0;
			strcpy(towrite.shape,x);
		}
		if(x[0]<64){ /*if stream position is coordinate array of area*/
			inname=0;
			inshape=0;
			inarray=1; /*establish position inside stream (coordinate array of area)*/
			towrite.coords[j]=atoi(x); 
			j++;
		}
	}

	fclose(in);
	fclose(out);

	return(0);
}