////////////////////////////////////////////////////////////////////////////
// File:			z_meu_spel.frg
// Author:			Felipe Vandrilho
// Description:		template for create frg file
//					run bop_cmd -f z_meu_spel.frg "z_meu_spel()"
////////////////////////////////////////////////////////////////////////////
#define syntax strict

void z_meu_spel(){
	
	// Declare
	/////////////////////////////////	
	string zs_method, persistent_id; 
	object objList;
	int listCount, zi;
	
	// Attribution
	/////////////////////////////////
	zs_method = "z_meu_spel";
	// persistent_id = "cr:563203"; // COM SOLUCAO
	persistent_id = "cr:563248"; // SEM SOLUCAO
	// Start code
	/////////////////////////////////
	zbloco(1, zs_method, "Inicio");
	
	printf("Teste...");
	printf("\n");
	
	send_wait( 0, top_object(), "call_attr", "alg", "sync_fetch", "STATIC", format("call_req_id='%s' AND type='SOLN'", persistent_id), -1, 0);
	printf("SYNC_FETCH \n");
	for (zi=0; zi< msg_length(); zi++) {
		printf("MSG[%d] = '%s'\n", zi, msg[zi]);
	}
	// objList = msg[0];
	listCount = msg[1];
	if(listCount == 0){
	printf("SEM SOLUCAO!!");
	}

	printf(listCount);

	// END CODE
	/////////////////////////////////
	zbloco(1, zs_method, "Fim");
}

void zbloco(int zi_debug, string zs_method, string zs_start_end){
	if(zi_debug == 1){
		printf("\n");
		printf("===============================================================\n");
		printf("%s - %s - %s\n", zs_method, zs_start_end, (string) now());
		printf("===============================================================\n");
	}
}