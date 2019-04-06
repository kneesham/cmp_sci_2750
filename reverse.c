// Name: Ted Neshamd	
// Date: 04-05-2019
/***********************************************************************/
// Description: This is a program that will read command line arguments
// - and output them in reverse order, then display which word is the
// - biggest and which word is the smallest. 
/***********************************************************************/

#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
	
	if( !(argc > 1)) { // check for the proper number of arguments.
		printf("Invalid number of arguments:\nUse ./reverse [ arg1 ] ... [ arg_n ]\n");
		return 0;
	}

	int i;
	int cmpTo;
        char * small = argv[1]; // pointer to the smaller word.
	char * large = argv[1]; // pointer to the larger word
	
	for( i = argc - 1; i > 0; i--){ 
		
		printf("%s ",argv[i]);  //print out all of the arguments in reverse order.
		
		if( strcmp(argv[i], large) > 0){  // Check argv[i] is greater than the largest word.
			large = argv[i];			
		}
 
		if( strcmp(argv[i], small) < 0 ) {  // check to see if argv[i] is smaller than the smallest word.
			small = argv[i];
		}
	}

	printf("\nThe smallest string was: %s\nThe largest string was: %s\n", small, large);
	// print a message saying what the smallest and largest words are.
	
return 0;

} 
